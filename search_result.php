<?php include("header.php"); ?>
<!-- Page Content -->
<div class="container" id="app">
  <div class="row">
    <div class="col-lg-12">
      <h3 class="my-4">Userdata</h3>
    </div>
  </div>
  <div class="row">
    <div class="col-md-3">
      <div class="card">
        <article class="card-group-item">
          <header class="card-header">
            <h6 class="title">Search</h6>
          </header>
          <div class="filter-content">
            <div class="card-body">
              <form method="GET" action="search_result.php">
                <div class="input-group">
                  <input type="text" class="form-control" placeholder="Search" name="q" v-model="textInput">
                  <div class="input-group-append">
                    <button class="btn btn-primary" type="submit"><i class="fa fa-search"></i></button>
                  </div>
                </div>
              </form>
            </div> <!-- card-body.// -->
          </div>
        </article> <!-- card-group-item.// -->
      </div> <!-- card.// -->
    </div>
     <div class="col-md-3">
      <div class="card">
        <article class="card-group-item">
          <header class="card-header">
            <h6 class="title">Price</h6>
          </header>
          <div class="filter-content">
            <div class="card-body">
              <form>
                <label class="form-check">
                  <input class="form-check-input" type="checkbox" value="0" v-model="priceRange">
                  <span class="form-check-label">
                    less than 100$
                  </span>
                </label> <!-- form-check.// -->
                <label class="form-check">
                  <input class="form-check-input" type="checkbox" value="1" v-model="priceRange">
                  <span class="form-check-label">
                    100$ - 200$
                  </span>
                </label>  <!-- form-check.// -->
                <label class="form-check">
                  <input class="form-check-input" type="checkbox" value="2" v-model="priceRange">
                  <span class="form-check-label">
                    200$ - 300$
                  </span>
                </label>  <!-- form-check.// -->
                <label class="form-check">
                  <input class="form-check-input" type="checkbox" value="3" v-model="priceRange">
                  <span class="form-check-label">
                    more than 300$
                  </span>
                </label>
              </form>
            </div> <!-- card-body.// -->
          </div>
        </article> <!-- card-group-item.// -->
      </div> <!-- card.// -->
    </div>
    <div class="col-md-3">
      <div class="card">
        <article class="card-group-item">
          <header class="card-header">
            <h6 class="title">Star Ratings </h6>
          </header>
          <div class="filter-content">
            <div class="card-body">
              <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" id="Check1" value="5" v-model="userRating">
                <label class="custom-control-label" for="Check1">&#9733; &#9733; &#9733; &#9733; &#9733;</label>
              </div> <!-- form-check.// -->
              <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" id="Check2" value="4" v-model="userRating">
                <label class="custom-control-label" for="Check2">&#9733; &#9733; &#9733; &#9733; &#9734;</label>
              </div> <!-- form-check.// -->
              <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" id="Check3" value="3" v-model="userRating">
                <label class="custom-control-label" for="Check3">&#9733; &#9733; &#9733; &#9734; &#9734;</label>
              </div> <!-- form-check.// -->
              <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" id="Check4" value="2" v-model="userRating">
                <label class="custom-control-label" for="Check4">&#9733; &#9733; &#9734; &#9734; &#9734;</label>
              </div> <!-- form-check.// -->
              <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" id="Check5" value="1" v-model="userRating">
                <label class="custom-control-label" for="Check5">&#9733; &#9734; &#9734; &#9734; &#9734;</label>
              </div> <!-- form-check.// -->
            </div> <!-- card-body.// -->
          </div>
        </article> <!-- card-group-item.// -->
      </div> <!-- card.// -->
    </div>
    <div class="col-md-3">
      <div class="card">
       <article class="card-group-item">
          <header class="card-header">
             <h6 class="title">Certified</h6>
          </header>
          <div class="filter-content">
             <div class="card-body">
                <div class="form-row">
                   <div class="custom-control custom-radio custom-control-inline">
                      <input type="radio" id="customRadioInline1" name="customRadioInline1" class="custom-control-input" v-model ="certified" value="yes">
                      <label class="custom-control-label" for="customRadioInline1">Yes</label>
                   </div>
                   <div class="custom-control custom-radio custom-control-inline">
                      <input type="radio" id="customRadioInline2" name="customRadioInline1" class="custom-control-input" v-model ="certified" value="no">
                      <label class="custom-control-label" for="customRadioInline2">No</label>
                   </div>
                </div>
             </div>
             <!-- card-body.// -->
          </div>
       </article>
       <!-- card-group-item.// -->
      </div>
      <!-- card.// -->
    </div>
  </div>
  <div class="row">
    <div class="col-lg-12" style="display: inline-block; padding-top: 50px;">
       <div class="row">
          <div class="col-lg-4 col-md-6 mb-4" v-for="r in result">
             <div class="card h-100">
                <a href="#"><img class="card-img-top" v-bind:src="r.picture" alt=""></a>
                <div class="card-body">
                   <h4 class="card-title">
                      <a href="#">{{ r.first_name + ' ' + r.last_name }}</a>
                   </h4>
                   <h5>{{'$' + r.cost}}</h5>
                   <p class="card-text"> {{r.services}} </p>
                </div>
                <div class="card-footer">
                   <small class="text-muted"><span v-for='rate in (r.rating-0)'>&#9733;</span><span v-for='rate in (5-r.rating)'>&#9734;</span> </small>
                </div>
             </div>
          </div>
       </div>
       <!-- /.row -->
    </div>
    <!-- /.col-lg-9 -->
  </div>
</div>
    
<?php include("footer.php"); ?>
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.16/vue.min.js"></script>
<script type="text/javascript">
  function getQueryStringValue (key) {
    return decodeURIComponent(window.location.search.replace(new RegExp("^(?:.*[&\\?]" + encodeURIComponent(key).replace(/[\.\+\*]/g, "\\$&") + "(?:\\=([^&]*))?)?.*$", "i"), "$1"));
  }
</script>
<script type="text/javascript">
  $app = new Vue({
  el:'#app',
  data:{
    textInput : '',
    priceRange : [],
    userRating : [],
    q:'',
    range:'',
    rating:'',
    certified :'',
    cert:'',
    query:'',
    result:'',
  },
  methods:{
    search:function () {
      var self = this;
      if(self.textInput != ''){
        self.q = self.textInput;
      }
      self.range = ''
      if(self.priceRange.length > 0){
        
        self.priceRange.forEach(function (item , index) {
          if(index != 0){
            self.range += ' OR '
          }else{
            self.range = ''
            self.range += ' AND ('
          }
          if (item == 0) {
            self.range += '(cost < 100)'
          } else if (item == 1) {
            self.range += '(cost > 101 AND cost < 200)'
          } else if (item == 2) {
            self.range += '(cost > 201 AND cost < 300)'
          } else if (item == 3) {
            self.range += '(cost > 300)'
          }
        });
        self.range +=')'
      }
      self.rating = ''
      if(self.userRating.length >0){
        // self.rating = '('
        self.userRating.forEach(function (item ,index) {
          if(index != 0){
            self.rating += ' OR '
          }else if(index == 0){
            self.rating += ' AND ( '
          }
          self.rating += 'rating >= ' + item
        });
        self.rating = self.rating + ')'
      }

      if(self.certified == 'yes'){
        self.cert = ' AND certificate != ""'
      }else if (self.certified == 'no') {
        self.cert = ' AND certificate == ""'
      }
      self.query = '';
      self.query = self.range+self.rating+self.cert
      console.log(self.query);

       $.post('ajax_search_result.php' , {
          'q' : self.q,
          'query' : self.query
       },function (result) {
         console.log(result);

         self.result = JSON.parse(result);
         console.log(self.result);
       });
    }
  },
  mounted:function () {
    var self = this;
    self.textInput = getQueryStringValue('q');
    self.search();
  },
  watch:{
    priceRange:function () {
      var self = this;
      self.search();
    },
    userRating:function () {
      var self = this;
      self.search();
    },
    certified:function () {
      var self = this;
      self.search();
    }
  }
  })
</script>