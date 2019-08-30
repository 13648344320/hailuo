<template>
    <div>
        <div id="booked" class="booked">
            <div class="booked-top">
                <div class="booked-top-log">
                    <a @click="home">
                        <img src="../../public/img/booked/book-log.png" style="cursor:pointer" title="回到首页">
                        <span style="display:inline-block;font-size:32px;color:#00848a;margin-left:32px; ">| &nbsp;回到首页</span>
                    </a>
                    
                </div>
                <ul class="booked-top-right">
                    <li>海螺欢迎您:&nbsp;<span>{{$store.getters.get}}</span></li>
                    <li>优惠活动</li>
                    <li>商旅合作</li>
                </ul>
            </div>
            <div class="booked-body">
                <div class="booked-body-msg">
                    <h2>预&nbsp;定&nbsp;详&nbsp;情</h2>
                        <ul class="booked-body-list">
                            <li v-for="(item,i) of list"  :key="i">
                                <div>
                                    <div class="booked-body-list-img">
                                        <img :src="item.pics">
                                    </div>
                                    <div>
                                        <p>
                                            <span>【{{item.county}}】</span><span>【{{item.type}}】</span><span>/{{item.details}}</span> 
                                        </p>
                                        <p class="booked-body-list-img-sm">
                                            <img src="../../public/img/booked/sleep.png" alt="">   <span>1间卧室</span>  <img src="../../public/img/booked/bathroom.png" alt=""> <span>1间卫生间</span> <img src="../../public/img/booked/bed.png" alt=""> <span>1张床</span>
                                        </p>
                                        <div class="booked-body-price">
                                         <a>￥{{item.price}} / 共</a>
                                        </div>
                                    </div>  
                                </div>
                                <div class="booked-body-list-date">
                                    <h6 style="font-size:20px; font-weight:600">入住起止时间</h6>
                                    <span style="font-size:20px; font-weight:600;color:#f00">{{item.time}}</span>
                                </div>
                                <div class="booked-body-list-details">
                                    <h6>入住信息</h6>
                                    <span>入住人&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                    <span>{{item.uname}}</span>
                                    <span>人数&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                    <span>{{item.gro}}</span>
                                    <a @click="cancel" :data-id="item.id">取消预定</a>
                                </div>
                                
                            </li>
                            
                        </ul>
                </div>
                <div class="booked-body-map">
                    <h2>房&nbsp;源&nbsp;位&nbsp;置</h2>
                    <div class="booked-map-img">
                        <tencnetMap/>
                    </div>
    
                </div>
            </div>
            <div class="booked-foot">
                    <div class="booked-foot-list-tips">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 注意事项:</p>
                            <p>&nbsp;&nbsp;退款政策：入住前1天12:00前退订，可获100%退款。之后退订不退款
                            住宿后如需要发票，请与房东协商或咨询人工服务。
                            </p> 
                            <p>&nbsp;&nbsp;入住须知:  请爱护房间内所有设施设备，保管好自己的财务，离开时带离自己的物品以免丢失</p>
                            <p>&nbsp;&nbsp;安全须知:  晚上请锁门，不要给陌生人开门</p>
                    </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            list:[],
            uname:''
        }
    },
    methods: {
        cancel(e){
            // 提示用户是否确定取消---防止误点
            var r = confirm("是否确定删除")
            if(r){
                    var url ="booked/del";
                    var id=e.target.dataset.id;
                    // console.log(id)
                    var obj={id:id};
                    this.axios.get(url,{params:obj}).then(res=>{
                        // console.log(res)
                        if(res.data.code==1){
                            alert("删除成功")
                            this.select();
                        }else{
                            alert("删除失败");
                            return;
                        }
                     })
                }
            
        },
        select(){
            var url= "booked";
                var uname = this.$store.state.uname;
                var obj={obj:uname}
                this.axios.get(url,{params:obj}).then(res=>{     
                    // console.log(res);
                // 2 获取返回的结果
                // 4 获取数据成功    
                    this.list = res.data;
            })
        },
        home(){
            this.$router.push("/")
        }  
    },  
    created() {
            this.select();
        },
    
}
</script>
<style>
    @import url("../assets/css/booked.css");
</style>