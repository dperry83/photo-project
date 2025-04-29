import axios from 'axios'
import { useAuthStore } from '../stores/auth.js'

export default { 

  async login(email, password) {
    const auth = useAuthStore()

    try {
      console.log("sending request to /session/new")
      const response = await axios.post(
        '/session/new', 
        { email, password },
        { headers: { 'Content-Type': 'application/json'} }
      )
      
      console.log("received response: ", response)
      auth.setUser(response.data)
      return response
    } catch (error) {
        console.error("AuthService.login failed: ", error)
        throw error
    }
  }
}
