// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


require.context('../images', true)


// To add Bootstrap and enable tooltips and popovers everywere. From HERE

import * as bootstrap from 'bootstrap'
import "../stylesheets/application.scss"


document.addEventListener("DOMContentLoaded", function(event) {
  var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
  var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
    return new bootstrap.Popover(popoverTriggerEl)
  })

  var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
  var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
    return new bootstrap.Tooltip(tooltipTriggerEl)
  })
});

// TO HERE BOOTSTRAP PART

// SERVICE WORKER REGISTRATION
require("service_workers")

//window.addEventListener('load', () => {
//  navigator.serviceWorker.register('/service-worker.js').then(registration => {
//    console.log('ServiceWorker registered: ', registration);
//
//    var serviceWorker;
//    if (registration.installing) {
//      serviceWorker = registration.installing;
//      console.log('Service worker installing.');
//    } else if (registration.waiting) {
//      serviceWorker = registration.waiting;
//      console.log('Service worker installed & waiting.');
//    } else if (registration.active) {
//      serviceWorker = registration.active;
//      console.log('Service worker active.');
//    }
//  }).catch(registrationError => {
//    console.log('Service worker registration failed: ', registrationError);
//  });
//});
// FINIDH SERVICE WORKER REGISTRATION


// self.addEventListener('install', function(event) {
//   self.skipWaiting();
// });






