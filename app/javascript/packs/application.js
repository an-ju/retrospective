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
import Rework from '../waste_types/rework'
Vue.component('rework', Rework)
import ComplexSolution from '../waste_types/complex_solution'
Vue.component('complex_solution', ComplexSolution)
import CognitiveLoad from '../waste_types/cognitive_load'
Vue.component('cognitive_load', CognitiveLoad)
import PsychologicalDistress from '../waste_types/psychological_distress'
Vue.component('psychological_distress', PsychologicalDistress)
import WaitingWaste from '../waste_types/waiting'
Vue.component('waiting', WaitingWaste)
import IneffectiveCommunication from '../waste_types/ineffective_communication'
Vue.component('ineffective_communication', IneffectiveCommunication)
import ActionItemForm from '../action_item_form'
Vue.component('action_item_form', ActionItemForm)
import ActionItem from '../action_item'
Vue.component('action_item', ActionItem)

document.addEventListener('turbolinks:load', () => {
    Vue.http.headers.common['X-CSRF-Token'] = document.querySelector('meta[name="csrf-token"]').getAttribute('content')

    let app = new Vue({
        el: '[data-behavior="vue"]',
    })
    console.log(app)
})
