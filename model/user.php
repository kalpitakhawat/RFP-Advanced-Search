<?php
	class User{
		private $id;
		private $firstName;
		private $lastName;
		private $phoneNumber;
		private $email;
		private $password;
		private $join_date;
		private $last_login_date;
		private $user_type;

		function __construct($id, $firstName, $lastName, $phoneNumber, $email, $passWord, $join_date, $last_login_date, $user_type){
			$this->setUserId($id);
			$this->setFirstName($firstName);
			$this->setLastName($lastName);
			$this->setPhoneNumber($phoneNumber);
			$this->setEmail($email);
			$this->setPassword($passWord);
			$this->setJoinDate($join_date);
			$this->setLastLoginDate($last_login_date);
			$this->setUserType($user_type);
		}
		
		public function getUserId(){
			return $this->id;
		}
		
		public function setUserId($id){
			$this->id = $id;
		}
		
		public function getFirstName(){
			return $this->firstName;
		}
		
		public function setFirstName($firstName){
			$this->firstName = $firstName;
		}
		
		public function getLastName(){
			return $this->lastName;
		}
		
		public function setLastName($lastName){
			$this->lastName = $lastName;
		}

		public function getPhoneNumber(){
			return $this->phoneNumber;
		}
		
		public function setPhoneNumber($phoneNumber){
			$this->phoneNumber = $phoneNumber;
		}
		
		public function getEmail(){
			return $this->email;
		}
		
		public function setEmail($email){
			$this->email = $email;
		}

		public function getLastLoginDate(){
			return $this->last_login_date;
		}
		
		public function setLastLoginDate($last_login_date){
			$this->last_login_date = $last_login_date;
		}

		public function getJoinDate(){
			return $this->join_date;
		}
		
		public function setJoinDate($join_date){
			$this->join_date = $join_date;
		}

		public function getPassword(){
			return $this->passWord;
		}
		
		public function setPassword($passWord){
			$this->passWord = $passWord;
		}


		public function getUserType(){
			return $this->user_type;
		}
		
		public function setUserType($user_type){
			$this->user_type = $user_type;
		}
		
	}
?>