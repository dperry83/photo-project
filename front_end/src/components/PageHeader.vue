<template>
  <div id="header">
    <img alt="David Perry Photography logo" src="../assets/DP_logo.jpg" id="logo">
    <h1> {{ msg }} </h1>
    <div id="navigation">
      <h3 class="about">About</h3>
      <h3 class="portfolio">Portfolio</h3>
      <h3 class="contact">Contact</h3>
    </div>
  </div>
</template>

<script>

export default {
    name: 'PageHeader',
    props: {
      msg: String
    }
  };

</script>

<style scoped>
  #logo {
    max-width: 300px;
    background-color: grey;
    flex: 1;
  }
  h1 {
    background-color: grey;
  }
  #navigation {
    display: flex;
    vertical-align: bottom;
    align-items: end;
    justify-content: end;
    background-color: lightgrey;
    flex: 2;
  }
  #navigation h3 {
    margin: 20px;
  }
  #header {
    display: flex;
    align-content: end;
    background-color: gold;
    border: 3px pink solid;
    padding: 5px;
    margin: 10px;
    max-height: 100px;
    object-fit: fill;
  }

</style>
