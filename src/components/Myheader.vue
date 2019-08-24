<template>
  <div id="index-s">
    <div class="container w_100 ">
                <div class="navbar navbar-expand-lg navbar-dark p-0">
                    <div class="navbar-brand">
                        <div class="img-logo"><img src="../../public/img/index/logo02.png"></div>
                        <div class="img-sou">
                            <i class="sou"></i>
                            <input class="form-control" type="text" placeholder="搜“洪崖洞”试试" v-model="find" @keyup.enter.native="findMsg">
                        </div>
                    </div>
                    <button data-toggle="collapse" data-target="#content" class="navbar-toggler navbar-black navbar-light bg_color">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div id="content" class="collapse   navbar-collapse justify-content-xl-end justify-content-md-around">
                        <ul class="navbar-nav  ul-daoh  ">
                            <li class="nav-item"><a class="nav-link p-0" href="javascript:;">人民币-¥</a></li>
                            <li class="nav-item"><a class="nav-link p-0" href="javascript:;">出租房源</a></li>
                            <li class="nav-item"><a class="nav-link p-0" href="javascript:;">开展体验</a></li>
                            <li class="nav-item"><a class="nav-link p-0" href="javascript:;">故事</a></li>
                            <li class="nav-item"><a class="nav-link p-0" href="javascript:;">帮助</a></li>
                            <li class="nav-item"><a class="nav-link p-0" href="javascript:;">注册</a></li>
                            <li class="nav-item"><a class="nav-link p-0" href="javascript:;">登录</a></li>
                        </ul>
                    </div>
                </div>
            </div>
    </div>
</template>

<script>
    export default {
        data(){
            return {
                find:""
            }
        },
        methods: {
            findMsg(e){
                if(e.target.Code==13){
                    alert(`this.find`)
                }
            }
        },
    }
</script>

<style> 
  
</style>
