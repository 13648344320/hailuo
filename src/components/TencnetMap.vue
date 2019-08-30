<template>
  <div class="test">
    <div id="MAP"></div>
  </div>
</template>

<script>
    import MapLoader from '@/assets/js/AMap.js'
    export default {
    data () {
        return {
            lng:106.550464,
            lat:29.563761,
        }
    },
    name: 'test',
    mounted () {
    
        MapLoader().then(AMap => {
            this.map = new AMap.Map('MAP', {
            center: [this.lng,this.lat],//[lng:经度,lat:纬度]
            zoom: 10,
        });
        var marker=new AMap.Marker({
            position:new AMap.LngLat(this.lng,this.lat) 
        });
        // 将新创建的点标记添加到已有的地图实例
        this.map.add(marker);
      }, e => {
        window.console.log('地图加载失败' ,e)
    })
  }
}
</script>

<style>
    #MAP{
        width: 500px;
        height: 500px;
        border: 1px solid #f00;
    }
</style>