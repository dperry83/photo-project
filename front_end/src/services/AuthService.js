// import axios from 'axios'
import { apiRequest } from './api.js'

export default { 
  async login(email_address, password) {
    return await apiRequest({
      url: '/user/login',
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
}
