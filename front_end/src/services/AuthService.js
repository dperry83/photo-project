import axios from 'axios'
// import { apiRequest } from './api.js'

export default { 

  login(email, password) {
    return axios.post('/session/new', {
      email_address: email,
      password: password
      }, {
        headers: { 'Content-Type': 'application/json'}
      })  
    },
  async createNewUser(credentials) {
    return await axios.post('/user/new', {
      user: credentials
    }, 
    { 
      headers: { 'Content-Type': 'application/json'}
    })
  }
}
