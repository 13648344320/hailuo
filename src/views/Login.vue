<template>
<!-- 避免样式冲突 -->

<div>
    <my-header/> 
    <div id="login">
            <table></table>
        <!-- 最外层 -->
        <div class="outer">
            <div>海螺网欢迎您</div><!-- nth1 -->
            <div></div>
            <div><!-- nth3 -->
                <div>没有账号?</div>
                <router-link to="/reg">注册</router-link>
            </div>
            <!-- 登录框 -->
            <div class="inp">
                <input v-model="uname" :class="{danger:off}"  type="text" placeholder="请输入您的账号" @blur="uname_not_have_text">

                <span class="inp-hint" v-text="uname_err"></span>

                <input v-model="upwd" type="password" placeholder="请输入您的密码" @blur="upwd_not_have_text">

                <span class="inp-hint" v-text="upwd_err"></span>
                    
                <!-- 验证码专区 -->
                <div class="verify">
                    <input type="text" class="input" v-model="codeVal"/>
                    <input type="button" class="checkCode" @click="createCode()" v-model="code" />
                    <span v-text="verify_err"></span>
                </div>
                <!-- 记住密码的小框的默认样式 -->
                <span class="svg_no" v-if="no" @click="show">
                    <svg t="1566214344007" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="9889" width="18" height="18"><path d="M865.777931 71.631434 158.222069 71.631434c-51.586912 0-93.406366 41.819454-93.406366 93.406366L64.815703 872.593661c0 51.586912 41.819454 93.406366 93.406366 93.406366l707.555861 0c51.586912 0 93.406366-41.819454 93.406366-93.406366L959.184297 165.0378C959.184297 113.450888 917.364843 71.631434 865.777931 71.631434zM897.785925 822.738184c0 45.212738-36.651758 81.864496-81.864496 81.864496l-607.843882 0c-45.212738 0-81.864496-36.651758-81.864496-81.864496L126.213052 214.894302c0-45.212738 36.651758-81.864496 81.864496-81.864496l607.843882 0c45.212738 0 81.864496 36.651758 81.864496 81.864496L897.785925 822.738184z" p-id="9890" fill="#bfbfbf"></path></svg>
                </span>
                <!-- 记住密码的小框被选中 -->
                <span class="svg_ok" v-else @click="show">
                    <svg t="1566212615465" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="7885" width="18" height="18"><path d="M839.099 59.526h-654.199c-69.243 0-125.375 53.746-125.375 120.044v664.86c0 66.299 56.132 120.044 125.375 120.044h654.199c69.243 0 125.375-53.746 125.375-120.044v-664.86c0-66.299-56.132-120.044-125.375-120.044zM840.094 388.754l-331.814 331.814c-11.779 11.78-27.219 17.67-42.66 17.67s-30.879-5.89-42.66-17.67l-239.057-239.057c-23.558-23.558-23.558-61.758 0-85.319s61.758-23.558 85.319 0l196.397 196.397 289.155-289.155c23.558-23.558     61.758-23.558 85.319 0s23.558 61.758 0 85.319z" fill="#008489" p-id="7886"></path></svg>
                </span>
                <span class="remember-me">记住我</span>
                <span class="for-get">忘记密码?</span>
                <button @click="validate()">
                    <span>登录</span>
                </button>
            </div>
        </div>
        
    </div>
    <my-footer/>
</div>
</template>

<script>
export default {
    data() {
        return {
            uname:"",
            upwd:"",
            code:"",//生成的验证码
            codeVal:"",//输入的验证码
            codeLength:4, //验证码的长度
            no:true, //未勾选记住密码的样式
            inp1:"",  //输入框的初始值
            off:false,  //输入框样式预案
            uname_err:"",//账号为空
            upwd_err:"",//密码为空
            verify_err:"", //验证码错误

        }
    },
    methods: {
        // 账号非空验证
        uname_not_have_text(){
            // 验证账号是否为空
            if(/^\s*$/.test(this.uname)){
                this.uname_err="账号不能为空"
            }else{
                this.uname_err="";
            };
        },
        // 密码非空验证
        upwd_not_have_text(){
            // 验证密码
            if(/^\s*$/.test(this.upwd)){
                this.upwd_err="密码不能为空"
            }else{
                this.upwd_err="";
            }
        },

        // 输入框边框为红色
        getDanger(){
         if(this.uname.length){
             this.off=false
         }else{
             this.off=true;
         }
        },
        // 产生验证码
       createCode() {
        // 生成验证码之前先清空现有的验证码再生成,防止内容叠加
        this.code="";    
       var random = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
           'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //随机数   
       for (var i = 0; i < this.codeLength; i++) { //循环操作       
           var charIndex = Math.floor(Math.random() * 36); //取得随机数的索引   
           this.code += random[charIndex]; //根据索引取得随机数加到code上   
        }
      },
       //校验验证码   
    validate() {
       var codeVal =this.codeVal.toUpperCase(); //取得输入的验证码并转化为大写         
       if (codeVal.length <= 0) { //若输入的验证码长度为0   
           this.verify_err="验证码不能为空" 
       } else if (codeVal != this.code) { //若输入的验证码与产生的验证码不一致时   
           this.verify_err="请输入正确的验证码" 
           this.createCode(); //刷新验证码   
        //    验证码正确时,账号密码也不能为空
       } else if(this.uname&&this.upwd){ 
         // 先验证是否输入账号密码
         // 再发送axios请求
         var url="/booked/login";
         var obj={uname:this.uname,upwd:this.upwd};
         this.axios.get(url,{params:obj})
         .then((res)=>{
             if(res.data.code===1){
                 this.$router.push("/reg")
             }else if(res.data.code===-1){
                 this.uname_err="账号或密码错误"
                 this.createCode(); //刷新验证码
             }
         }).catch(err=>{
             alert("登录失败,请稍后再试")
         })
       }
      },//validate()-end

        // 记住密码的小框的显示/隐藏
        show(){
            if(this.no){
                this.no=false;
            }else{
                this.no=true;
            }
        }//show--end

    },  //methods-end
    mounted() {
        // dom树挂载完成后生成一次验证码
        this.createCode();
    },
}
</script>

<style>
    @import url("../assets/css/login.css"); 
</style>