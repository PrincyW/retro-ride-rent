import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()
// import rangePlugin from "flatpickr/dist/plugins/rangePlugin";
import rangePlugin from "flatpickrRangePlugin";

export default class extends Controller {

  static targets = ["input1", "input2", "span", "span2", "span3"];

  connect() {
    // flatpickr(this.input1Target, {
    //   enableTime: true,
    //   // Provide an id for the plugin to work
    //   plugins: [new rangePlugin({ input: "#end_time"})]})
    // flatpickr(this.input2Target, {})
    flatpickr(this.input1Target);
    flatpickr(this.input2Target);
  }

  dynamicPrice () {
    let dateDiffInMilliseconds = new Date(this.input2Target.value) - new Date(this.input1Target.value);
    let nbrOfNights = dateDiffInMilliseconds / 86400000;

    const flatPricePerNight = this.spanTarget.innerHTML;

    if(this.input1Target.value && this.input2Target.value) {
      this.span2Target.innerText = nbrOfNights
    }
    if(this.input1Target.value && this.input2Target.value) {
      this.span3Target.innerText = nbrOfNights * flatPricePerNight;
    }

  };

}
