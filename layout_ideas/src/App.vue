<template>
  <PageHeader msg=""/>
  <div class="main">
    <LeftNavigation id="left-nav"/>
  </div>
</template>

<script>
import PageHeader from './components/PageHeader.vue'
import LeftNavigation from './components/LeftNavigation.vue'

export default {
  name: 'App',
  components: {
    PageHeader,
    LeftNavigation
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 10px;
}
.main {
  display: grid;
  grid-template-columns: 1fr 2fr;
}

</style>
