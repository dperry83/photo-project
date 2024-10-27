<template>
  <div class="main">
    <gallery-page/>
  </div>
</template>

<script>
import GalleryPage from './views/GalleryPage.vue'

export default {
  name: 'App',
  components: {
    GalleryPage
  }
}
</script>

<style>
/* body {
  height: 100vh;
  border: 4px green solid;
  display: flex;
} */
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  border: 3px red solid;
  
}

</style>
