import { createRouter, createWebHistory } from 'vue-router'
// import Router from 'vue-router'
import Home from '../views/Home.vue'
import LoginPage from '../views/LoginPage.vue'
import GalleryPage from '../views/GalleryPage.vue'

const routes = [
  { path: '/api/status', name: 'Home', component: Home },
  { path: '/login', name: 'Login', component: LoginPage },
  { path: '/gallery', name: 'Gallery', component: GalleryPage }
]

const router = createRouter({
  history: createWebHistory(),
  routes
})

export default router
