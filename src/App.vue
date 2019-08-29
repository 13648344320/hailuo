<template>
  <div id="app">
    <router-view/>
  </div>
</template>

<script>
          

export default {
  name: 'app',
  mounted() {
            window.addEventListener('unload', this.saveState)
        },
        methods: {
            saveState() {
                sessionStorage.setItem('state', JSON.stringify(this.$store.state))
            }
        }
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
