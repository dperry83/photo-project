import { defineStore } from 'pinia'
import { ref, computed } from 'vue'

export const useAuthStore = defineStore('auth', () => {
  const user = ref(null)

  const isAuthenticated = computed(() => !!user.value)

  function setUser(userData) {
    // user.value = userData
    user.value.id = userData.id
    user.value.name = userData.name
    user.value.email_address = userData.email_address
  }

  function clearUser() {
    user.value = null
  }

  return { user, isAuthenticated, setUser, clearUser }
})