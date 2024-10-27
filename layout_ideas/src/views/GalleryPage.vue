<template>
  <div class="main-layout">
    <PageHeader class="banner" id="header"/>
    <LeftNavigation id="left-nav"/>
    <div class="content">main content</div>
  </div>
</template>

<script>
import PageHeader from '../components/PageHeader.vue'
import LeftNavigation from '../components/LeftNavigation.vue'

export default {
  name: 'GalleryPage',
  components: {
    PageHeader,
    LeftNavigation
  }
}

</script>

<style>
.main-layout {
  border: 5px solid black;
  height: 100vh;
  display: grid;
  width: fit;
  grid-template: repeat(9, 1fr) / repeat(9, 1fr); 
}
#header {
  grid-column: 1 / span 9;
}
#left-nav {
  border: 2px solid green;
  grid-area: 2 / 1 / span 8 / span 2;
}
.content {
  border: 2px solid blue;
  grid-area: 2 / 3 / span 8 / span 8;
}

</style>