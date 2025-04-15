<template>
  <div id="main">
    <page-header />
    <router-view />
  </div>
</template>

<script>
import PageHeader from './components/PageHeader.vue';

export default {
  name: 'App',
  components: {
    PageHeader
  }
}
</script>

<style>

/* #app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  border: 3px red solid;
  
} */

</style>
