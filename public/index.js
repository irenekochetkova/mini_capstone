var productTemplate = document.querySelector('#product-card');
var productRow = document.querySelector(".row");

// productDeck.appendChild(productTemplate.content.cloneNode(true));
// productDeck.appendChild(productTemplate.content.cloneNode(true));
// productDeck.appendChild(productTemplate.content.cloneNode(true));
// productDeck.appendChild(productTemplate.content.cloneNode(true));
// productDeck.appendChild(productTemplate.content.cloneNode(true));

axios.get("http://localhost:3000/products").then(function(response){
  var products = response.data;
  console.log(response.data);

  products.forEach(function(product){
    var productCard = productTemplate.content.cloneNode(true);
    productCard.querySelector(".card-title").innerText = product.title;
    productCard.querySelector(".card-img-top").src = product.image;
    productCard.querySelector(".price").innerText = product.price;
    productCard.querySelector(".description").innerText = product.description;
    productCard.querySelector(".supplier").innerText = product.supplier;


    productRow.appendChild(productCard);
  }) 
})
