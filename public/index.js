/* global Vue, VueRouter, axios */
// var HomePage = {
//
var SignupPage = {
  template: "#signup-page",
  data: function() {
    return {
      name: "",
      email: "",
      password: "",
      passwordConfirmation: "",
      errors: []
    };
  },
  methods: {
    submit: function() {
      var params = {
        name: this.name,
        email: this.email,
        password: this.password,
        password_confirmation: this.passwordConfirmation
      };
      axios
        .post("/users", params)
        .then(function(response) {
          router.push("/login");
        })
        .catch(
          function(error) {
            this.errors = error.response.data.errors;
          }.bind(this)
        );
    }
  }
};

var LoginPage = {
  template: "#login-page",
  data: function() {
    return {
      email: "",
      password: "",
      errors: []
    };
  },
  methods: {
    submit: function() {
      var params = {
        auth: { email: this.email, password: this.password }
      };
      axios
        .post("/user_token", params)
        .then(function(response) {
          axios.defaults.headers.common["Authorization"] =
            "Bearer " + response.data.jwt;
          localStorage.setItem("jwt", response.data.jwt);
          console.log(response.data.jwt);
          router.push("/");
        })
        .catch(
          function(error) {
            this.errors = ["Invalid email or password."];
            this.email = "";
            this.password = "";
          }.bind(this)
        );
    }
  }
};
var LogoutPage = {
  created: function() {
    axios.defaults.headers.common["Authorization"] = undefined;
    localStorage.removeItem("jwt");
    router.push("/");
  }
};


var ProductsIndexPage = {
  template: "#product-index-page",
  data: function() {
    return {
      products: [],
      currentProduct: {}
    };
  },
  created: function() {

    axios.get("http://localhost:3000/products").then(function(response) {

      this.products = response.data; //array or recipe data
      console.log(response.data);

    }.bind(this));
  },
methods: {
  setCurrentProduct: function(product) {
    this.currentProduct = product;
    console.log(this.currentProduct);
  }
 }

};


var ProductsNewPage = {
  template: "#products-new-page",
  data: function() {
    return {
      title: "",
      price: "",
      description: "",
      image_url: "",
      supplier_id: "",
      errors: []
    };
  },
  methods: {
    submit: function() {
      var params = {
        title: this.title,
        price: this.price,
        description: this.description,
        image_url: this.image_url,
        supplier_id: this.supplier_id
       
      };
      axios
        .post("/products", params)
        .then(function(response) {
          router.push("/");
        })
        .catch(
          function(error) {
            this.errors = error.response.data.errors;
          }.bind(this)
        );
    }
  }
};
var ProductsShowPage = {
  template: "#product-show-page",
  data: function() {
    return {
      product: {}
    };
  },
  created: function() {

    axios.get("/products" + this.$route.params.id).then(function(response) {

      this.products = response.data; //array or recipe data
      console.log(response.data);
      this.product = product.data;
    }.bind(this));
  }
}


var router = new VueRouter({
  routes: [
   { path: "/", component: ProductsIndexPage },
   { path: "/signup", component: SignupPage },
   { path: "/login", component: LoginPage },
   { path: "/logout", component: LogoutPage },
   { path: "/products/new", component: ProductsNewPage },
   { path: "/products/:id", component: ProductsShowPage },

  ],
  scrollBehavior: function(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});

var app = new Vue({
  el: "#vue-app",
  router: router,
  created: function() {
    var jwt = localStorage.getItem("jwt");
    if (jwt) {
      axios.defaults.headers.common["Authorization"] = jwt;
    }
  }
});


// var productTemplate = document.querySelector('#product-card');
// var productRow = document.querySelector(".row");



// axios.get("http://localhost:3000/products").then(function(response){


//   var products = response.data;
//   console.log(response.data);

//   products.forEach(function(product){
//     var productCard = productTemplate.content.cloneNode(true);
//     productCard.querySelector(".card-title").innerText = product.title;
//     productCard.querySelector(".card-img-top").src = product.image_url;
//     productCard.querySelector(".price").innerText = product.price;
//     productCard.querySelector(".description").innerText = product.description;
//     // productCard.querySelector(".supplier").innerText = product.supplier;


//     productRow.appendChild(productCard);
//   }) 
// })


