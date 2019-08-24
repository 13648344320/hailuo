<template>
  <swiper class="swiper" :options="swiperOption"  ref="mySwiper">
    <!-- slides -->
    <swiper-slide >
        <img src="../../public/img/index/dblb1.jpg">
    </swiper-slide>
    <swiper-slide>
        <img src="../../public/img/index/dblb2.jpg">
    </swiper-slide>
    <swiper-slide>
        <img src="../../public/img/index/dblb3.jpg">
    </swiper-slide>
    <swiper-slide >
        <img src="../../public/img/index/dblb4.jpg">
    </swiper-slide>
    <!-- Optional controls -->
    <div class="swiper-pagination" slot="pagination"></div>
    <div class="swiper-button-prev" slot="button-prev"></div>
    <div class="swiper-button-next" slot="button-next"></div>
  </swiper>
</template>
<script>
  import {swiper, swiperSlide} from 'vue-awesome-swiper'
//   import 'swiper/dist/css/swiper.css'

  export default {
    name: 'carrousel',
    data() {
      return {
        swiperOption: {
          // spaceBetween: 30, //板块间距
          loop: true, //无缝轮播
          centeredSlides: true,
          autoplay: {  //自动轮播
            delay: 3000,
            disableOnInteraction: false,
          },
          pagination: {
            el: '.swiper-pagination',
            clickable: true,
          },
          navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
          }
        }
      }
    },
    components: {
      swiper,
      swiperSlide
    },
    // 如果你需要得到当前的swiper对象来做一些事情，你可以像下面这样定义一///个方法属性来获取当前的swiper对象，同时notNextTick必须为true
    computed: {
      swiper() {
        return this.$refs.mySwiper.swiper
      }
    },
    mounted() {
      /* 然后你就可以使用当前上下文内的swiper对象去做你想做的事了*/
    //   console.log(this.swiper);
      // this.swiper.slideTo(3, 1000, false)
    //   console.log('mounted');
      //鼠标覆盖停止自动切换
      this.swiper.el.onmouseover = function () {
        this.swiper.autoplay.stop();
        // console.log('stop');
        
      }
      //鼠标离开开始自动切换
      this.swiper.el.onmouseout = function () {
        this.swiper.autoplay.start();
        // console.log('start');
      }
    }
  }
</script>
<style scoped>
  .swiper {
    width: 100%;
    height: 600px;
  }

  swiper-slide {
    width: 100%;
    height: 600px;
  }
</style>
