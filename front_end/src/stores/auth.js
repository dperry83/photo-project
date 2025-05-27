import { defineStore } from 'pinia'

export const useAuthStore = defineStore('auth', {
  state: () => ({ 
    user: null
  }),
  
  getters: {
    
  },

  actions: {
    setCurrentUser(user) {
      console.log("setting user to: ", user)
      this.user = user
    },

    logout() {
      this.user = null
    }
  }

})