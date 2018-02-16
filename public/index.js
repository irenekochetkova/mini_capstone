var productTemplate = document.querySelector('#product-card');
var productRow = document.querySelector(".row");

// productDeck.appendChild(productTemplate.content.cloneNode(true));
// productDeck.appendChild(productTemplate.content.cloneNode(true));
// productDeck.appendChild(productTemplate.content.cloneNode(true));
// productDeck.appendChild(productTemplate.content.cloneNode(true));
// productDeck.appendChild(productTemplate.content.cloneNode(true));

axios.get("https://obscure-taiga-94094.herokuapp.com/products").then(function(response){
  var products = response.data;
  console.log(response.data);

  products.forEach(function(product){
    var productCard = productTemplate.content.cloneNode(true);
    productCard.querySelector(".card-title").innerText = product.title;
    productCard.querySelector(".img").src = product.image;
    productCard.querySelector(".price").innerText = product.price;
    productCard.querySelector(".description").innerText = product.description;
    productCard.querySelector(".supplier").innerText = product.supplier;


    productRow.appendChild(productCard);
  }) 
})
