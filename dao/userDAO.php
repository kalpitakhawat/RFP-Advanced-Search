<?php
require_once('abstractDAO.php');
require_once('./model/user.php');

/**
 * Description of userDAO
 *
 * @author Sizhe Chen
 */
class userDAO extends abstractDAO {
        
    function __construct() {
        try{
            parent::__construct();
        } catch(mysqli_sql_exception $e){
            throw $e;
        }
    }
    
    public function addUser($user){
        if(!$this->mysqli->connect_errno){
            $query = 'INSERT INTO user_master (first_name,last_name,phone_no,email_id,password,join_date,last_login_date,user_type) VALUES (?,?,?,?,?,?,?,?)';
            
            $stmt = $this->mysqli->prepare($query);
		
			$first_name = $user->getFirstName();
			$last_name = $user->getLastName();
			$phone_no = $user->getPhoneNumber();
			$email = $user->getEmail();
			$password = $user->getPassword();
			$join_date = $user->getJoinDate();
			$last_login_date = $user->getLastLoginDate();
			$user_type = $user->getUserType();
			
            $stmt->bind_param('ssssssss', 
                    $first_name, 
                    $last_name,
                    $phone_no, 
					$email,
					$password, 
                    $join_date, 
                    $last_login_date, 
                    $user_type
            );

            $stmt->execute();
            
            if($stmt->error){
                return $stmt->error;
            } else {
                return $user->getFirstName() . ' ' . $user->getLastName() . ' added successfully!';
            }
        } else {
            return 'Could not connect to Database.';
        }
    }
    
    public function getUserByEmail($email){
        $query = 'SELECT * FROM user_master WHERE email_id = ?';
        $stmt = $this->mysqli->prepare($query);
        $stmt->bind_param('s', $email);
        $stmt->execute();
        $result = $stmt->get_result();
        if($result->num_rows == 1){
            $temp = $result->fetch_assoc();
            $user = new User($temp['user_id'], $temp['first_name'], $temp['last_name'], $temp['phone_no'], $temp['email_id'], $temp['password'], $temp['join_date'], $temp['last_login_date'], $temp['user_type']);
            $result->free();
            return $user;
        }
        $result->free();
        return false;
    }

}
?>
