<template>
  <div>
    <h1>Login Page</h1>
      <label for="email-address">email:</label>
        <input 
          type="text" 
          id="email-address" 
          class="form-control"
          placeholder="email address"
          v-model="user.email"
          required> <br>
      <label for="password">password:</label>
        <input 
          type="text" 
          id="password" 
          class="form-control"
          placeholder="password"
          v-model="user.password"
          required> <br>
      <button 
      class="log-in"
      @click="login">Login</button>
  </div>  
</template>

<script>
import AuthService from '../services/AuthService';

export default {
  name: 'LoginPage',
  data() {
    return {
      user: {
        email: "",
        password: ""
      }
    }
  },
  methods: {
    login() {
      AuthService
        .login(this.user.email, this.user.password)
        .then(response => {
          if(response.status == 200) {
            console.log("login successful")
          }
        })
        .catch(error => {
          const response = error.response
          console.log(response)
        })
    }
  }
}
</script>