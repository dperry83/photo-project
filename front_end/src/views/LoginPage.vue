<template>
  <div>
    <h1>Login Page</h1>
      <label for="email-address">email:</label>
        <input 
          type="text" 
          id="email-address" 
          class="form-control"
          placeholder="email address"
          v-model="email"
          required> <br>
      <label for="password">password:</label>
        <input 
          type="text" 
          id="password" 
          class="form-control"
          placeholder="password"
          v-model="password"
          required> <br>
      <button 
        class="log-in"
        @click="login()">Login</button>
      
  </div>  
</template>

<script setup>

import { ref } from 'vue'
import { useRouter } from 'vue-router'
import { useAuthStore } from '../stores/auth.js'
import AuthService from '../services/AuthService'


const email = ref('')
const password = ref('')
const authStore = useAuthStore()
const router = useRouter()

const login = async () => {
  console.log("Login submitted: ", email.value, " ,", password.value )

  try {
    const response = await AuthService.login(email.value, password.value)

    if (response.status === 200) {
      console.log('User in response:', response.data.user)
      authStore.setCurrentUser(response.data.user)
      router.push('/user/me')
    }
  } catch (error) {
    console.error('Login failed: ', error.response)
  }
}

</script>