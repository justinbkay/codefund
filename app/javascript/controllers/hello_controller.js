// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "input", "output" ]

  search() {
    fetch(`http://localhost:3000/search?term=${this.inputTarget.value}`)
         .then(resp => { return resp.text() })
         .then(html => { console.log(html); this.outputTarget.innerHTML = html })
  }
}
