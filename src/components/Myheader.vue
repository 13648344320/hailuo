<template>
  <div id="index-s">
    <div class="container w_100 ">
                <div class="navbar navbar-expand-lg navbar-dark p-0">
                    <div class="navbar-brand">
                        <div class="img-logo" @click="backhome"><img src="../../public/img/index/logo02.png"></div>
                        <div class="img-sou">
                            <i class="sou"></i>
                            <input class="form-control" type="text" placeholder="搜“洪崖洞”试试" v-model="find" @keyup.enter="findMsg">
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
            // 监听键盘回车时的搜索
            findMsg(e){
                //  用 find 中的值  查询数据库
                // 如果没有找到 提示用户没找到相关信息
                // 如果找到
                // 携带参数跳转到 list 页面
                //  list 
                // 李树强
                var url="find";
                var obj ={obj:this.find} ;
                this.axios.get(url,{params:obj}).then(res=>{
                    // 如果没找到数据 提示用户没有查询到当地数据
                    console.log(res)
                    if(res.data.code==-1){
                        alert("暂无该地区的房源信息");
                        return;
                    }else{
                        // 携带 find 中的值 跳转 到list 组件
                        this.$router.push({path:"/list",query:{
                                     find:this.find}
                                })
                    }
                })
                
            },
            backhome(){
                this.$router.push("/")
            }
        },
        computed: {
            
        },
    }
</script>

<style> 
  
</style>
