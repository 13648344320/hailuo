<template>
  <div id="app">
    <router-view/>
  </div>
</template>

<script>
// import MyHeader from './components/Myheader.vue'

export default {
  name: 'app',
  // components: {
  //   MyHeader
  // }
}
</script>

<style>
* {
    margin: 0;
    padding: 0;
    list-style: none;
    font-size: 14px;
    box-sizing: border-box;
    color: #484848;
}
a {
    text-decoration: none;
}
    @import url("./assets/css/bootstrap.css");
    @import url("./assets/css/lunbo.css");
    @import url("./assets/css/index.css");
    @import url("./assets/css/detail.css");
</style>
