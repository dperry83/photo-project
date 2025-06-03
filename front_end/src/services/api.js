import axios from 'axios'

export async function apiRequest(config) {
    try {
      const response = await axios(config)
      return {
        success: true, 
        data: response.data, // important content
        status: response.status // status codes
      } 
    } catch(error) {
      return {
        success: false,
        data: error.response?.data || error.message,
        status: error.response?.status || 500 
      }
    }
  }
