import { createRouter, createWebHistory } from 'vue-router'
// import Router from 'vue-router'
import Home from '../views/Home.vue'
import Login from '../views/Login.vue'
import GalleryPage from '../views/GalleryPage.vue'

const routes = [
  { path: '/api/status', name: 'Home', component: Home },
  { path: '/login', name: 'Login', component: Login },
  { path: '/gallery', name: 'Gallery', component: GalleryPage }
]

const router = createRouter({
  history: createWebHistory(),
  routes
})

export default router
