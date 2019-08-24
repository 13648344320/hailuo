<template>
    <!-- 防冲突 -->
   <div>
       <my-header/> 
        <div id="reg">
            <!-- 最外层div -->
            <table></table>
            <div class="reg-son">
                    <div>用户注册</div>
                    <div></div>
                    <div>
                        <div>已有账号?</div>
                        <router-link to="/login">登录</router-link>
                    </div>
                    <!-- 注册框 -->
                    <div class="inp">
                        <input :class="{danger:this.uname_show}"     type="text" placeholder="请输入您的账号" @blur="verify" @focus="uname_focus" v-model="account">
                        <i v-if="uname_pass_show" class="icon_pass"></i>
                        <span v-text="uname_err" class="text_err" v-if="uname_show"></span>

                        <input type="password" placeholder="请设置您的登录密码" v-model="login_pwd" @focus="pwd_focus" @blur="upwd_ok" :class="{danger:this.upwd_show}">
                        <i v-if="upwd_pass_show" class="icon_pass"></i>
                        <span v-if="upwd_show" v-text="upwd_err" class="text_err"></span>
                        
                        <input type="password" placeholder="请再次确认" v-model="login_pwd2" @blur="upwd2_ok" :class="{danger:this.pwd2_show}">
                        <i v-if="pwd2_pass_show" class="icon_pass"></i>
                        <span v-text="no_login_pwd" class="text_err"   v-if="pwd2_show"></span>

                        <input type="text" placeholder="请输入您的手机号" v-model="phone" @blur="is_phone" :class="{danger:this.phone_show}">
                        <i v-if="phone_pass_show" class="icon_pass"></i>
                        <span v-text="phone_ok" class="text_err" v-if="phone_show"></span>

                        <!-- 验证码专区 -->
                        <div class="verify">
                            <input type="text" class="input" v-model="codeVal" @blur="verify_ok"/>

                            <input type="button" class="checkCode" @click="createCode()" v-model="code"/>
                            <span class="text_err" v-if="verify_show" v-text="verify_err"></span>

                        </div>
                        
                        <button @click="validate()">
                            <span>注册</span>
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
            uname_pass_show:false,//验证通过后的图标
            upwd_pass_show:false,
            pwd2_pass_show:false,
            phone_pass_show:false,

            uname_show:false,//账号下的提示消息显示或隐藏
            uname_err:"账号由8~16位的字母,数字,下划线组成",//账号格式不正确或不可用的提示信息
            account:"",//用户输入的要注册的账号

            login_pwd:"",//用户设置的密码
            upwd_err:"密码由8~16位字母,数字,下划线组成",//密码格式不正确的提示信息
            upwd_show:false,//密码格式提示信息显示/隐藏

            login_pwd2:"",//确认密码
            no_login_pwd:"请再次确认", //两次密码不相同的提示信息
            pwd2_show:false,//确认密码的提示消息显示或隐藏
            
            phone_show:false,//电话号码的提示信息的显示或隐藏
            phone_ok:"请输入正确的手机号",//手机号可用的提示信息
            phone:"", //用户输入的手机号

            verify_show:false,//验证码错误提示消息的显示隐藏
            verify_err:"",//验证码后的提示消息
            code:"",//生成的验证码
            codeVal:"",//输入的验证码
            codeLength:4, //验证码的长度

            // 账号 密码 确认密码 手机号都不能为空,
            
        }
    },
    methods: {
        //密码框获得焦点提示用户密码格式
        pwd_focus(){
            this.upwd_show=true;
            this.upwd_err="密码由8~16位字母,数字,下划线组成";
        },
        // 密码失去焦点验证格式是否正确
        upwd_ok(){
            if(!/^\w{8,16}$/.test(this.login_pwd)){
                this.upwd_show=true
                this.upwd_err="密码格式不正确"
            }else{
                this.upwd_pass_show=true;
                this.upwd_show=false;
                this.upwd_err="";
            }
        },

        // 验证用户输入的手机号格式是否正确
        is_phone(){
            //创建正则来验证手机号是否符合格式
            if(/^\s*$/.test(this.phone)){
                this.phone_show=true;
                this.phone_ok="手机号不能为空";
            }else if(!/^[1][3-9]\d{9}$/.test(this.phone)){
                this.phone_show=true;
            }else{
                this.phone_pass_show=true;
                this.phone_show=false;
            }
        },

        // 确认密码框失去焦点时验证两次输入的密码是否一致
        upwd2_ok(){// 一样
            if(/^\s*$/.test(this.login_pwd2)){
                this.pwd2_show=true;
            }else if(this.login_pwd==this.login_pwd2){ 
                this.pwd2_pass_show=true;
                this.pwd2_show=false;
                this.no_login_pwd="";
            }else{// 不一样
                this.pwd2_show=true;
                this.no_login_pwd="两次输入的密码不相同";   
            }
        },//upwd2_ok  -end

        // 账号框获得焦点提示用户账号格式
        uname_focus(){
            this.uname_show=true;
            this.uname_err="账号由8~16位的字母,数字,下划线组成";
        },
        // 账号输入框失去焦点时验证用户名是否可用
        verify(){
            ///^[a-zA-Z]\w{7,15}$/  8到16位（字母，数字，下划线，减号）
            // 1.创建正则表达式来验证账号的内容
            // 账号格式为6~18位的字母 数字 下划线组成
            if(!/^\w{8,16}$/.test(this.account)||!this.account){
                this.uname_show=true;
                this.uname_err="账号由8~16位的字母,数字,下划线组成"
            }else{
                this.uname_err="";
                var url="/booked/reg";
                var obj={uname:this.account}
                this.axios.get(url,{params:obj})
                .then(res=>{

                    if(res.data.code==-1){
                        this.uname_pass_show=true;
                        this.uname_show=false;
                        this.uname_err="";
                    }else{
                        this.uname_show=true;
                        this.uname_pass_show=false,
                        this.uname_err="该账号已被注册"
                    }
                }).catch(err=>{
                    return err;
                })
            }
        },//verify -end

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
    //   验证码输入框失去焦点时验证输入是否正确
    verify_ok(){
        var inputCode =this.codeVal.toUpperCase(); //取得输入的验证码并转化为大写        
       if (/^\s*$/.test(inputCode)) { //验证码非空验证 
            this.verify_show=true;
            this.verify_err="验证码不能为空";
       } else if (inputCode != this.code) { //验证码是否正确 
            this.verify_show=true;
            this.verify_err="验证码错误";
            this.createCode(); //刷新验证码   
       }
    },
       //点击注册时层层筛选  
    validate() {
       if(!(this.account&&this.login_pwd&&this.login_pwd2&&this.phone&&(!this.uname_show))){//都为空 调用所有验证方法
        this.verify();
        this.upwd_ok(); 
        this.upwd2_ok();
        this.is_phone();
        this.createCode();
       }else{ 
            this.verify_show=false;
                // 发送axios请求
                    var uname=this.account;
                    var pwd=this.login_pwd;
                    var phone=this.phone;
                var url="/booked/insert_user";
                this.axios.post(url,`uname=${uname}&pwd=${pwd}&phone=${phone}`)
                .then(res=>{
                    if(res.data.code){
                        this.$router.push("/login");
                    }else{
                        alert("注册失败,请检查内容后重试")
                    }
                })
            }
        }//validate()-end
    },  //methods-end
    mounted() {
        this.createCode();  
    },
}
</script>

<style>
    @import url("../assets/css/reg.css");
</style>