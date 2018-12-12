/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

import '../css/application.css'
import Vue from 'vue/dist/vue.esm'
import TurbolinksAdapter from 'vue-turbolinks'
import VueResource from 'vue-resource'

Vue.use(TurbolinksAdapter)
Vue.use(VueResource)

import Waste from '../waste'
Vue.component('waste', Waste)
import WrongFeature from '../waste_types/wrong_feature'
Vue.component('wrong_feature', WrongFeature)
import MismanageBacklog from '../waste_types/mismanage_backlog'
Vue.component('mismanage_backlog', MismanageBacklog)

document.addEventListener('turbolinks:load', () => {
    Vue.http.headers.common['X-CSRF-Token'] = document.querySelector('meta[name="csrf-token"]').getAttribute('content')

    let app = new Vue({
        el: '[data-behavior="vue"]',
    })
    console.log(app)
})
