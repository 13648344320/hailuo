<template>
    <div> 
        <div id="list-head-top" >
            <my-header/>
            <div class="list_1">
                            <!-- 选项页 -->
                <div class="list_1a">
                    <div>
                        <input class="demo-input list_1b" id="test6"   placeholder="日期">
                        
                    </div>
                </div>
                <div class="list_1a">
                    <div>
                        <button class="list_1b">
                            <div class="list_1c">人数</div>
                        </button>
                    </div>
                </div>
                <div class="list_1a">
                    <div>
                        <button class="list_1b">
                            <div class="list_1c">房源类型</div>
                        </button>
                    </div>
                </div>
                <div class="list_1a">
                    <div>
                        <button class="list_1b">
                            <div class="list_1c">价格</div>
                        </button>
                    </div>
                </div>
                <div class="list_1a">
                    <div>
                        <button class="list_1b">
                            <div class="list_1c">闪订</div>
                        </button>
                    </div>
                </div>
                <div class="list_1a">
                    <div>
                        <button class="list_1b">
                            <div class="list_1c">卧室和床铺</div>
                        </button>
                    </div>
                </div>
                <div class="list_1a">
                    <div>
                        <button class="list_1b">
                            <div class="list_1c">更多筛选条件</div>
                        </button>
                    </div>
                </div>
            </div>
            <hr>
        </div>
        
        <div class="list">
                <!-- 详情页 -->
            <div>
                <div class="list_2">
                    <!-- 1F -->
                    <div class="list_5" v-for="(item,i) of list"  :key="i">
                        <div class="list_2a">
                            <div class="list_2b" @click="enterDetails($event)">
                                <!-- 左侧图片 -->
                                <img :src="item.pics" :data-id="item.pid"> 
                            </div>
                            <!-- 中间内容 -->
                            <div class="list_2c">
                                <div class="list_2d">
                                    <div class="list_2e">
                                        <span style="color: rgb(118,118,118)"> 
                                        {{item.type}}
                                        <span>·</span>
                                        {{item.county}}
                                        </span>
                                        <div style="margin-bottom: 2px"></div>
                                        <div class="list_2f">
                                                {{item.details}}
                                        </div>
                                        <div style="margin-top:8px;display: inline-block" >
                                        <div class="list_2g" style="margin-bottom: 4px;margin-right: 4px">
                                            <span>
                                                <span style="color: rgb(41, 110, 0)">4.7分·267条评论</span>
                                            </span>
                                        </div>
                                        <div style="display: inline-block;margin-bottom: 4px;margin-right: 4px">
                                        <div class="list_2g">
                                            <div >
                                                <span>
                                                    <span style="color: rgb(138, 36, 0)">
                                                        超赞房东
                                                    </span>
                                                </span>
                                            </div>
                                        </div>
                                        </div>
                                        <div style="display: inline-block;margin-bottom: 4px;margin-right: 4px">
                                        <div class="list_2h">
                                            <div>
                                                <span>
                                                    <span>
                                                        可以做饭
                                                    </span>
                                                </span>
                                            </div>
                                        </div>
                                        </div>
                                        </div>


                                        <!-- 评价 -->
                                        <div class="list_3">
                                            <div class="list_3a">
                                                <div class="list_3b" style="width: 24px;height: 24px;display: block">
                                                    <img src="../../public/img/list/02.jpg">
                                                </div>
                                                <div class="list_3c">"
                                                    <span class="list_3d">
                                                        <span>
                                                            风景很好，房东很热情
                                                        </span>
                                                    </span>
                                                    "
                                                </div>
                                            </div>
                                        </div>

                                        
                                    <!-- 价格详情 -->  
                                        <div class="list_4">
                                        <div class="list_4a">
                                            <div class="list_4b">
                                                <div class="list_4c">
                                                    <span>￥{{item.price}}</span>
                                                </div>
                                                <div class="list_4d">
                                                    <div class="list_4e">每晚</div>
                                                </div>
                                            </div>
                                            <div class="list_4f">
                                                <div class="list_4g">
                                                    <img src="../../public/img/list/03.jpg" alt="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        <div id="list-map" :style="{top:open}">
            <tencnetMap/>
        </div>
        <div id="list-foot">
        <my-footer/>
        </div>
    </div>  
</template>
<script>

export default {
    data(){
        return{
            list:[],
            open:"172px"
        }
    },
    methods:{
        enterDetails(e){
            //  单击图片  获图片id
            var pid = e.target.dataset.id;
            // 携带参数跳转到 pid
            this.$router.push({path:'/detail',query:{pid:pid}})
        },
        findAll(){
            // 在页面加载阶段获取从首页搜索关键字
            var find = this.$route.query.find;
            //  查询表hl_products 中的数据
                // 发送ajax 请求
                var obj={obj:find}
                this.axios.get("find",{params:obj}).then(res=>{
                    this.list = res.data;
                }
            )
        },
         // 鼠标滚动触发事件
        handleScroll(){
            // 页面滚动距离顶部的距离
            var scrollTop = window.pageYOffset || document.documentElement.scrollTop || 
                      document.body.scrollTop
            if(scrollTop<175){
                this.open = "172px"
            }else{
                this.open = "0px"
            }
        },
    },
    mounted(){
       this.findAll();
        // 添加鼠标向下滚动事件
        window.addEventListener('scroll',this.handleScroll,true) 
    },
   watch:{
       '$route' () {
           this.findAll();
       }
   }
}
</script>
<style>
    @import url("../assets/css/list.css");
</style>