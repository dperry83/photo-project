import axios from 'axios'

export async function apiRequest(config) {
  try {
    const response = await axios(config)
    return {
      success: true,
      response: response.data,
      status: response.status
    } 
  } 
  catch(error) {
    return {
      success: false,
      response: error.response?.data || error.message,
      status: error.response?.status || 500 
    }
  }
}