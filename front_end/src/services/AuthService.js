// import axios from 'axios'
import { apiRequest } from './api.js'

export default { 
  async login(email_address, password) {
    return await apiRequest({
      url: '/session/new',
      method: 'POST',
      data: {
        email_address: email_address,
        password: password
      }
    })
  },
  async createNewUser(credentials) {
    return await apiRequest({
      url: '/user/new',
      method: 'POST',
      data: {
        user: credentials
      }
    })
  }
   // login(email, password) {
  //   return axios.post('/session/new', {
  //     email_address: email,
  //     password: password
  //     }, {
  //       headers: { 'Content-Type': 'application/json'}
  //     })  
  //   },
  // async createNewUser(credentials) {
  //   return await axios.post('/user/new', {
  //     user: credentials
  //   }, 
  //   { 
  //     headers: { 'Content-Type': 'application/json'}
  //   })
  // },
}
