import Typed from 'typed.js';
import swal from 'sweetalert';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Hello World", "...is it working yet?"],
    typeSpeed: 70,
    loop: true
  });
}

const sweetAlertButton = document.getElementById('sweet-alert-demo')
function bindSweetAlertButtonDemo() {
  sweetAlertButton.addEventListener('click', () => {
    swal({
      title: "Hello!",
      text: "This is a sweet alert :)",
      icon: "success"
    })
  });
}

export { loadDynamicBannerText };
export { bindSweetAlertButtonDemo };
