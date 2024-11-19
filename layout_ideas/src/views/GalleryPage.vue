<template>
  <div class="main-layout">
    <PageHeader class="banner" id="header"/>
    <LeftNavigation id="left-nav"/>
    <div class="content">main content
      <BioCard class="user-info"></BioCard>
    </div>
  </div>
</template>

<script>
import PageHeader from '../components/PageHeader.vue'
import LeftNavigation from '../components/LeftNavigation.vue'
import BioCard from '../components/BioCard.vue'

export default {
  name: 'GalleryPage',
  components: {
    PageHeader,
    LeftNavigation,
    BioCard
  }
}

</script>

<style>
.main-layout {
  border: 5px solid black;
  height: 100vh;
  width: 100vw;
  display: grid;
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
  display: grid;
  grid-template: repeat(7, 1fr) / repeat(7, 1fr);
}
.user-info {
  grid-area: 1 / 1 / span 3 / span 7;
}

</style>