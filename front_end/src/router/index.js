import { createRouter, createWebHistory } from 'vue-router'
// import Router from 'vue-router'
// import Home from '../views/Home.vue'
import AuthPage from '../views/AuthPage.vue'
import GalleryPage from '../views/GalleryPage.vue'

const routes = [
  { path: '/login', 
    name: 'Login', 
    component: AuthPage },
  
  { path: '/user/me', 
    name: 'Gallery', 
    component: GalleryPage }
]

const router = createRouter({
  history: createWebHistory(),
  routes
})

export default router
