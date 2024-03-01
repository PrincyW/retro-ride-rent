# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true
pin "flatpickr" # @4.6.13
pin "flatpickrRangePlugin", to: "https://ga.jspm.io/npm:flatpickr@4.6.13/dist/esm/plugins/rangePlugin.js"
pin "mapbox-gl" # @3.1.2
pin "process" # @2.0.1

pin "sweetalert2", to: "sweetalert2.js" # @11.10.5
