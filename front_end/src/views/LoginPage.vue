<template>
  <div>
    <h1>Login Page</h1>
      <h3> Please enter your information: </h3>
      <!-- <label for="email-address">email:</label> -->
        <input class="form-control"
          type="text" 
          id="email-address" 
          placeholder="email address"
          v-model="email"
          required> <br>
      <!-- <label for="password"></label> -->
        <input class="form-control"
          type="text" 
          id="password" 
          placeholder="password"
          v-model="password"
          required> <br>
      <!-- <label for="user-name" class="name"></label> -->
        <input class="user-name"
          type="text" 
          placeholder="full name"
          v-model="name"
          required><br>
        <!-- <span class="options"> -->
        <button class="log-in"
          @click="login()">Login</button>
        <p class="new-user"><i>Register</i></p>
        <!-- </span> -->
        <button 
          class="register"
          @click="createUser()">Register</button>   <!--Sanity check-->
      
  </div>  
</template>

<style>
.new-user {
  color: blue;
  font-style: italic;
}
</style>

<script setup>

import { ref } from 'vue'
import { useRouter } from 'vue-router'
import { useAuthStore } from '../stores/auth.js'
import AuthService from '../services/AuthService'


const email = ref('')
const password = ref('')
const name = ref('')
// const newUser = false
const authStore = useAuthStore()
const router = useRouter()


const login = async () => {  
  try {
    const response = await AuthService.login(email.value, password.value)
    if (response.status === 200) {
      authStore.setCurrentUser(response.data.user)
      router.push('/user/me')
    } else if (response.status === 401) {
      console.log('No account found.  Please sign up!')
      // router.push('/user/new')
    }
  } catch (error) {
    console.error('Login failed: ', error.message)
    // error.message.value = error.response.data.error
  }
}

const createUser = async() => {
  try {
    const response = await AuthService.createNewUser({
      email_address: email.value, 
      password: password.value, 
      name: name.value})
    if (response.status === 201) {
      authStore.setCurrentUser(response.data.user)
      router.push('/user/me')
    }
  } catch (error) {
    console.error('Registration Failed: ', error.message)
  }
}

</script>

