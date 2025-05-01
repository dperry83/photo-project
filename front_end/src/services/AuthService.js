import axios from 'axios'
// import { useAuthStore } from '../stores/auth.js'

export default { 

  login(email, password) {
    return axios.post('/session/new', {
      email_address: email,
      password: password
      }, {
        headers: { 'Content-Type': 'application/json'}
      } 
    )  
  }
}
