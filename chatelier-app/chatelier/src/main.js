import Vue from 'vue'
import store from './store'
import Embed from 'v-video-embed'
import VueSnap from 'vue-snap'
import 'vue-snap/dist/vue-snap.css'
import App from './App.vue'

Vue.use(VueSnap)

// Vue Router
import router from './routes'

import '@fortawesome/fontawesome-free/css/all.css'
import '@fortawesome/fontawesome-free/js/all.js'

Vue.config.productionTip = false
Vue.use(Embed);

new Vue({
  router: router,
  store: store,
  render: h => h(App),
}).$mount('#app')
