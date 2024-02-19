 function addItemToCart(item) {
        let cartItem = document.createElement('div');
        cartItem.classList.add('cart-item');
        cartItem.innerText = item;
        let cartItems = document.querySelector('.cart-items');
        cartItems.appendChild(cartItem);
      }
      
      $(document).ready(function(){
        $('.slider').slick();
      });
    
displayItems();

let addToCartButtons = document.querySelectorAll('.add-to-cart');

function addToCartClicked(event) {
  let button = event.target;
  let item = button.getAttribute('data-item');
  addItemToCart(item);
}

addToCartButtons.forEach(function(button) {
  button.addEventListener('click', addToCartClicked);
});


$(document).ready(function(){
  $('.slider').slick({
    autoplay: true,
    autoplaySpeed: 2000,
    arrows: false,
    dots: true
  });
});
