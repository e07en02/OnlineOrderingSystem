function addItemToCart(item) {
    let cart = getCart();
    cart.push(item);
    saveCart(cart);
  }
  
  function getCart() {
    let cart = localStorage.getItem('cart');
    if (!cart) {
      cart = [];
    } else {
      cart = JSON.parse(cart);
    }
    return cart;
  }
  
  function saveCart(cart) {
    localStorage.setItem('cart', JSON.stringify(cart));
  }
  function displayCart() {
    let cart = getCart();
    let cartItems = document.querySelector('#cart-items');
    cartItems.innerHTML = '';
    cart.forEach(function(item) {
      let cartItem = document.createElement('div');
      cartItem.classList.add('cart-item');
      cartItem.innerText = item;
      cartItems.appendChild(cartItem);
    });
  }
  
  displayCart();

  let addToCartButtons = document.querySelectorAll('.add-to-cart');

function addToCartClicked(event) {
  let button = event.target;
  let item = button.getAttribute('data-item');
  addItemToCart(item);
  displayCart();
}

addToCartButtons.forEach(function(button) {
  button.addEventListener('click', addToCartClicked);
});

  