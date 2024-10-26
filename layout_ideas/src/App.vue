<template>
  <PageHeader msg=""/>
  <div class="main-body">
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
  height: 100%;
}
.main-body {
  /* display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-template-rows: repeat(3, 1fr);   */
  height: 100%;
  width: 100%;
}
.item {
  background-color: white;
  grid-row-start: 1;
  grid-row-end: 1;
}
.main-body > #left-nav > .spacer {
  grid-row-start: 2;  
  background-color: white;
}

</style>
