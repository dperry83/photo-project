<template>
  <PageHeader msg=""/>
  <LeftNavigation id="left-nav"/>
    <div class="main-body">
      <div class="content">CONTENT</div>
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
body {
  height: 100vh;
  border: 4px green solid;
}
#app {
  border: 3px red solid;
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 10px;
  display: grid;
  height: 100vh;
  grid-template: repeat(3, 1fr) / 1fr 1fr 1fr;
}
.main-body {
  border: 2px black solid;
  gap: 5px 5px;
}
#left-nav {
  border: 1px blue solid;
  background-color: grey;
  grid-column: 1 / span 3;
}

</style>
