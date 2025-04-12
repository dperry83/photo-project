<template>
  <div class="main">
    <h1>Connection Test</h1>
    <p v-if="message">API says: {{ message }}</p>
    <p v-else>Loading ...</p>
  </div>
</template>

<script>
import { ref, onMounted } from 'vue'
import axios from 'axios'

const message = ref(null)

onMounted(async () => {
  try {
    const res = await axios.get('http://localhost:3000/api/status')
    message.value = res.data.message
  } catch (err) {
    console.error('API connectoin failed:', err)
    message.value = 'Connection Failed'
  }
})
</script>