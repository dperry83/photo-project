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
      <button class="log-in">Login</button>
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

    }
  }
}
</script>