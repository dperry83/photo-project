import axios from 'axios'

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
