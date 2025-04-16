import axios from 'axios'

export default {
  test() {
    return axios.get('/api/status')
  },
  login(email, password) {
    return axios.post('/session/new', email, password)
  }
}