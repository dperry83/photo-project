import { createRouter, createWebHistory } from 'vue-router'
import LoginPage from '../views/LoginPage.vue'
import GalleryPage from '../views/GalleryPage.vue'

const routes = [
  { path: '/login', 
    name: 'Login', 
    component: LoginPage },
  
  { path: '/user/me', 
    name: 'Gallery', 
    component: GalleryPage },
  { path: '/test',
    name: 'Test',
    component: {
      template: '<div>This is a test route</div>'
  }
}
]

const router = createRouter({
  history: createWebHistory(),
  routes
})

export default router
