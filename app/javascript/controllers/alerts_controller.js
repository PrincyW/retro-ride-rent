import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static values = {
    alertTitle: String,
    alertText: String,
    icon: String
  }

  connect() {
    console.log("Hello")


  }

  initSweetalert(event) {
    event.preventDefault(); // Prevent the form to be submited after the submit button has been clicked

    Swal.fire({
      position: "end",
      icon: "success",
      title: "Your booking has been made, you will receive a message once the owner confirms your booking.",
      showConfirmButton: false,
      timer: 1500
    }).then((result) => {
      if (result.dismiss === Swal.DismissReason.timer) {
        event.target[event.type](); // "submit"
      }
    })
    .catch(event.preventDefault())
}
}


// import { Controller } from "@hotwired/stimulus";
// import Swal from 'sweetalert2';

// export default class extends Controller {
//   static values = {
//     icon: String,
//     alertTitle: String,
//     alertHtml: String,
//     confirmButtonText: String,
//     showCancelButton: Boolean,
//     cancelButtonText: String
//   }

//   initSweetalert(event) {
//     event.preventDefault(); // Prevent the form to be submited after the submit button has been clicked

//     Swal.fire({
//       icon: this.iconValue,
//       title: this.titleValue,
//       html: this.htmlValue,
//       confirmButtonText: this.confirmButtonTextValue,
//       showCancelButton: this.showCancelButtonValue,
//       cancelButtonText: this.cancelButtonTextValue,
//       reverseButtons: true
//     }) .then((action) => {
//       if (action.isConfirmed) {
//         event.target[event.type](); // "submit"
//       }
//     })
//     .catch(event.preventDefault())
//   }
// }
