import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  // static targets = ["partnerId", "partTimeId"]
  create(ele) {
    debugger;
    console.log(this)

    // Rails.ajax({
    //   url: `/tables`,
    //   type: 'post',
    //   success: this.insertTable.bind(this)
    // })
  }
}
