// console.log("main.js is running")

import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import { createPinia } from 'pinia'
import AuthService from './services/AuthService'
import { apiRequest } from './services/api'

if (import.meta.env.DEV) {
  window.AuthService = AuthService,
  window.apiRequest = apiRequest
}

const app = createApp(App)

app.use(createPinia())
app.use(router) 
app.mount('#app')
