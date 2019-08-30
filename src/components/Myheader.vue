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
                            <li class="nav-item"><a class="nav-link p-0">人民币-¥</a></li>
                            <li class="nav-item"><a class="nav-link p-0">出租房源</a></li>
                            <li class="nav-item"><a class="nav-link p-0">欢迎您：{{$store.getters.get}}</a></li>
                            <li class="nav-item" :style="{display:open}" @click="reg"><a class="nav-link p-0">{{regin}}</a></li>
                            <li class="nav-item" :style="{display:open}" @click="login"><a class="nav-link p-0">{{loginin}}</a></li>
                            <li class="nav-item" :style="{display:quit}" @click="quitlog"><a class="nav-link p-0">退出登录</a></li>
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
                find:"",
                regin:"注册",
                loginin:"登录",
                open:"",   // 控制登录 注册 是否显示
                quit:"",    // 控制退出登录是否显示
            }
        },
        methods: {
            // 单击退出按钮时
            quitlog(){
                //  提醒用户是否退出
              var c = confirm('是否确认退出？')
                if(c==true){
                     this.$store.commit("show",'')
                }
            },
            // 清空session
            // 前往登录页面
            login(){
                this.$router.push('/Login')
            },
            // 前往注册页面
            reg(){
                this.$router.push('/Reg')
            },
            // 监听键盘回车时的搜索
            findMsg(){
                //  用 find 中的值  查询数据库
                // 如果没有找到 提示用户没找到相关信息
                // 如果找到
                // 携带参数跳转到 list 页面
                var url="find";
                var obj ={obj:this.find} ;
                this.axios.get(url,{params:obj}).then(res=>{
                    // 如果没找到数据 提示用户没有查询到当地数据
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
        created(){
            //  页面加载时通过$store.getters.get判断是否登录
            if(this.$store.state.uname==''){
                this.open = ''
                this.quit = 'none' 
            }else{
                this.open = 'none'
                this.quit = '' 
            }
        },
        computed: {
            
        },
    }
</script>

<style> 
  
</style>
