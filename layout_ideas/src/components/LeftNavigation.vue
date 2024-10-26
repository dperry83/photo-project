<template>
  <div class="main">
    <h2 class="item">Item 1</h2>
    <h2 class="item">Item 2</h2>
    <h2 class="item">Item 3</h2>
    <h2 class="item">Item 4</h2>
    <h2 class="item">Item 5</h2>
    <h2 class="spacer">spacing box</h2>
  </div>
</template>

<script>
  export default {
    name: 'LeftNavigation',
    props: {

    }
  }
</script>

<style>
  .main {
    height: 100%; 
    max-width: 315px;
    float: start;
    background-color: cyan;``
  }

</style>