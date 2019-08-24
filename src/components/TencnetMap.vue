<template>
    <div>
        <div id="QQMap"></div>
    </div>
</template>

<script>
export default {
    methods:{
        
        init(){
            // 地图初始化方法
            // 创建地图实例
            var map=new qq.maps.Map(document.getElement('QQMap'),{
                center,//坐标，即最初显示的地图中心
                zoom    //缩放级别，即显示的比例
                })
        }
    },

    mounted(){
        this.init();
    }    
}
</script>

<style>
    
</style>