<template>
  <div class="main">
    <div class="buttons">
      <h2 class="item">Item 1</h2>
      <h2 class="item">Item 2</h2>
      <h2 class="item">Item 3</h2>
      <h2 class="item">Item 4</h2>
      <h2 class="item">Item 5</h2>
    </div>
    <div class="spacing">
      <h2 class="spacer">spacing box</h2>
    </div>
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
    display: flex;
    flex-direction: column;
    max-width: 315px;
  }

</style>