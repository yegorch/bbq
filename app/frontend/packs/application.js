require("@rails/ujs").start()
import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
ActiveStorage.start()

import 'bootstrap/dist/js/bootstrap'
import '../styles/application'
import '../packs/map'

const images = require.context('../images', true)
