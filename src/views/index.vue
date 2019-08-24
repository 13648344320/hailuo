<template>
    <div>
        <div>
            <!--头部导航栏-->
            <!--  头尾修改成组件 -->
            <my-header/>    
            <!-- 轮播图 -->
            <Carousel/>
            <!-- 房源、日历搜索框 -->
            <div class="lb-fang">
                <div class="mm">
                <div class="fy-a">
                    <select>
                        <option class="juzhong">房源</option>
                        <option>渝中区</option>
                        <option>渝北区</option>
                        <option>江北区</option>
                        <option>南岸区</option>
                        <option>大渡口区</option>
                        <option>九龙坡区</option>
                        <option>沙坪坝区</option>
                    </select>
                </div>
                <div class="fy-b">
                    <i class="img-dingw"></i>
                    <input type="text" placeholder="输入目的地、城市">
                </div>
                <div class="fy-c">
                    <i class="img-rili"></i>
                    <input type="text" placeholder="入住日期-退房日期" id="test6" readonly>
                </div>
                <div class="fy-d">
                    <a href="javascript:;">搜索</a>
                </div>
            </div>
            </div>

            <!-- 主体部分 --><!-- F1 -->
            <div class="zhut">
                <div class="zt-width">
                    <div class="zt-title">
                        <h3>秋季特惠房源</h3>
                        <h6>低至 8 折，可叠加使用礼券</h6>
                    </div>
                    <!-- 导航栏 -->
                    <div class="zt-btn">
                        <span><button class="active">渝中区</button></span>
                        <span><button>渝北区</button></span>
                        <span><button>江北区</button></span>
                        <span><button>南岸区</button></span>
                        <span><button>九龙坡区</button></span>
                        <span><button>沙坪坝区</button></span>
                        <span><button>大渡口区</button></span>
                    </div>
                    <!-- 图文区域 -->
                    <div class="zt-tuwen">
                        <!-- 一个详细信息 -->
                        <div class="zt-tu-width">
                            <div class="div-h1">
                                <!-- 图片 -->
                                <div class="div-img"><a href="javascript:;"><img src="../../public/img/index/index-h101.jpg" alt=""></a></div>
                                <!-- 详细 -->
                                <div class="div-text">
                                    <span><a href="javascript:;">整套酒店式公寓 · 1张床</a></span>
                                    <p><a href="javascript:;">【雾都江景】洪崖洞/解放碑/穿楼地铁/ 大礼堂 网红景点打卡集合地 轻轨站旁 简约日式整租一</a></p>
                                    <span>￥339</span>
                                    <span>￥424</span>
                                    <span>每晚</span>
                                    <!-- 五星好评 -->
                                    <div class="div-pj">
                                        <span><img src="../../public/img/index/wxhp.png" alt=""></span>
                                        <span>166 · 超赞房东</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        一个详细信息
                        <div class="zt-tu-width">
                            <div class="div-h1">
                                <!-- 图片 -->
                                <div class="div-img"><a href="javascript:;"><img src="../../public/img/index/index-h102.jpg" alt=""></a></div>
                                <!-- 详细 -->
                                <div class="div-text">
                                    <span><a href="javascript:;">整套酒店式公寓 · 1张床</a></span>
                                    <p><a href="javascript:;">【雾都江景】洪崖洞/解放碑/穿楼地铁/ 大礼堂 网红景点打卡集合地 轻轨站旁 简约日式整租一</a></p>
                                    <span>￥339</span>
                                    <span>￥424</span>
                                    <span>每晚</span>
                                    <!-- 五星好评 -->
                                    <div class="div-pj">
                                        <span><img src="../../public/img/index/wxhp.png" alt=""></span>
                                        <span>166 · 超赞房东</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 一个详细信息 -->
                        <div class="zt-tu-width">
                            <div class="div-h1">
                                <!-- 图片 -->
                                <div class="div-img"><a href="javascript:;"><img src="../../public/img/index/index-h103.jpg" alt=""></a></div>
                                <!-- 详细 -->
                                <div class="div-text">
                                    <span><a href="javascript:;">整套酒店式公寓 · 1张床</a></span>
                                    <p><a href="javascript:;">【雾都江景】洪崖洞/解放碑/穿楼地铁/ 大礼堂 网红景点打卡集合地 轻轨站旁 简约日式整租一</a></p>
                                    <span>￥339</span>
                                    <span>￥424</span>
                                    <span>每晚</span>
                                    <!-- 五星好评 -->
                                    <div class="div-pj">
                                        <span><img src="../../public/img/index/wxhp.png" alt=""></span>
                                        <span>166 · 超赞房东</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 一个详细信息 -->
                        <div class="zt-tu-width">
                            <div class="div-h1">
                                <div class="div-img"><a href="javascript:;"><img src="../../public/img/index/index-h104.jpg" alt=""></a></div>
                                <!-- 详细 -->
                                <div class="div-text">
                                    <span><a href="javascript:;">整套酒店式公寓 · 1张床</a></span>
                                    <p><a href="javascript:;">【雾都江景】洪崖洞/解放碑/穿楼地铁/ 大礼堂 网红景点打卡集合地 轻轨站旁 简约日式整租一</a></p>
                                    <span>￥339</span>
                                    <span>￥424</span>
                                    <span>每晚</span>
                                    <!-- 五星好评 -->
                                    <div class="div-pj">
                                        <span><img src="../../public/img/index/wxhp.png" alt=""></span>
                                        <span>166 · 超赞房东</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 一个详细信息 -->
                        <div class="zt-tu-width">
                            <div class="div-h1">
                                <!-- 图片 -->
                                <div class="div-img"><a href="javascript:;"><img src="../../public/img/index/index-h105.jpg" alt=""></a></div>
                                <!-- 详细 -->
                                <div class="div-text">
                                    <span><a href="javascript:;">整套酒店式公寓 · 1张床</a></span>
                                    <p><a href="javascript:;">【雾都江景】洪崖洞/解放碑/穿楼地铁/ 大礼堂 网红景点打卡集合地 轻轨站旁 简约日式整租一</a></p>
                                    <span>￥339</span>
                                    <span>￥424</span>
                                    <span>每晚</span>
                                    <!-- 五星好评 -->
                                    <div class="div-pj">
                                        <span><img src="../../public/img/index/wxhp.png" alt=""></span>
                                        <span>166 · 超赞房东</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 一个详细信息 -->
                        <div class="zt-tu-width">
                            <div class="div-h1">
                                <!-- 图片 -->
                                <div class="div-img"><a href="javascript:;"><img src="../../public/img/index/index-h106.jpg" alt=""></a></div>
                                <!-- 详细 -->
                                <div class="div-text">
                                    <span><a href="javascript:;">整套酒店式公寓 · 1张床</a></span>
                                    <p><a href="javascript:;">【雾都江景】洪崖洞/解放碑/穿楼地铁/ 大礼堂 网红景点打卡集合地 轻轨站旁 简约日式整租一</a></p>
                                    <span>￥339</span>
                                    <span>￥424</span>
                                    <span>每晚</span>
                                    <!-- 五星好评 -->
                                    <div class="div-pj">
                                        <span><img src="../../public/img/index/wxhp.png" alt=""></span>
                                        <span>166 · 超赞房东</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 查看更多 -->
                        <div class="zt-chak">
                            <a href="javascript:;">查看更多重庆房源<img src="../../public/img/index/dayu01.png" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 主体部分 --><!-- F2 -->
            <div class="zhut">
                <div class="zt-width">
                    <div class="zt-title mt-5">
                        <h3>秋季特惠房源</h3>
                    </div>
                    <!-- 导航栏 -->
                    <div class="zt-btn">
                        <span><button class="active">洪崖洞</button></span>
                        <span><button>解放碑</button></span>
                        <span><button>观音桥</button></span>
                        <span><button>磁器口</button></span>
                        <span><button>朝天门</button></span>
                        <span><button>南滨路</button></span>
                        <span><button>飞机场</button></span>
                    </div>
                    <!-- 图文区域 -->
                    <div class="zt-tuwen">
                        <!-- 一个详细信息 -->
                        <div class="zt-tu-width">
                            <div class="div-h1">
                                <!-- 图片 -->
                                <div class="div-img"><a href="javascript:;"><img src="../../public/img/index/index-h201.jpg" alt=""></a></div>
                                <!-- 详细 -->
                                <div class="div-text">
                                    <span><a href="javascript:;">整套酒店式公寓 · 1张床</a></span>
                                    <p><a href="javascript:;">【雾都江景】洪崖洞/解放碑/穿楼地铁/ 大礼堂 网红景点打卡集合地 轻轨站旁 简约日式整租一</a></p>
                                    <span>￥339</span>
                                    <span>￥424</span>
                                    <span>每晚</span>
                                    <!-- 五星好评 -->
                                    <div class="div-pj">
                                        <span><img src="../../public/img/index/wxhp.png" alt=""></span>
                                        <span>166 · 超赞房东</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 一个详细信息 -->
                        <div class="zt-tu-width">
                            <div class="div-h1">
                                <!-- 图片 -->
                                <div class="div-img"><a href="javascript:;"><img src="../../public/img/index/index-h202.jpg" alt=""></a></div>
                                <!-- 详细 -->
                                <div class="div-text">
                                    <span><a href="javascript:;">整套酒店式公寓 · 1张床</a></span>
                                    <p><a href="javascript:;">【雾都江景】洪崖洞/解放碑/穿楼地铁/ 大礼堂 网红景点打卡集合地 轻轨站旁 简约日式整租一</a></p>
                                    <span>￥339</span>
                                    <span>￥424</span>
                                    <span>每晚</span>
                                    <!-- 五星好评 -->
                                    <div class="div-pj">
                                        <span><img src="../../public/img/index/wxhp.png" alt=""></span>
                                        <span>166 · 超赞房东</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 一个详细信息 -->
                        <div class="zt-tu-width">
                            <div class="div-h1">
                                <!-- 图片 -->
                                <div class="div-img"><a href="javascript:;"><img src="../../public/img/index/index-h203.jpg" alt=""></a></div>
                                <!-- 详细 -->
                                <div class="div-text">
                                    <span><a href="javascript:;">整套酒店式公寓 · 1张床</a></span>
                                    <p><a href="javascript:;">【雾都江景】洪崖洞/解放碑/穿楼地铁/ 大礼堂 网红景点打卡集合地 轻轨站旁 简约日式整租一</a></p>
                                    <span>￥339</span>
                                    <span>￥424</span>
                                    <span>每晚</span>
                                    <!-- 五星好评 -->
                                    <div class="div-pj">
                                        <span><img src="../../public/img/index/wxhp.png" alt=""></span>
                                        <span>166 · 超赞房东</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 一个详细信息 -->
                        <div class="zt-tu-width">
                            <div class="div-h1">
                                <!-- 图片 -->
                                <div class="div-img"><a href="javascript:;"><img src="../../public/img/index/index-h204.jpg" alt=""></a></div>
                                <!-- 详细 -->
                                <div class="div-text">
                                    <span><a href="javascript:;">整套酒店式公寓 · 1张床</a></span>
                                    <p><a href="javascript:;">【雾都江景】洪崖洞/解放碑/穿楼地铁/ 大礼堂 网红景点打卡集合地 轻轨站旁 简约日式整租一</a></p>
                                    <span>￥339</span>
                                    <span>￥424</span>
                                    <span>每晚</span>
                                    <!-- 五星好评 -->
                                    <div class="div-pj">
                                        <span><img src="../../public/img/index/wxhp.png" alt=""></span>
                                        <span>166 · 超赞房东</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 一个详细信息 -->
                        <div class="zt-tu-width">
                            <div class="div-h1">
                                <!-- 图片 -->
                                <div class="div-img"><a href="javascript:;"><img src="../../public/img/index/index-h205.jpg" alt=""></a></div>
                                <!-- 详细 -->
                                <div class="div-text">
                                    <span><a href="javascript:;">整套酒店式公寓 · 1张床</a></span>
                                    <p><a href="javascript:;">【雾都江景】洪崖洞/解放碑/穿楼地铁/ 大礼堂 网红景点打卡集合地 轻轨站旁 简约日式整租一</a></p>
                                    <span>￥339</span>
                                    <span>￥424</span>
                                    <span>每晚</span>
                                    <!-- 五星好评 -->
                                    <div class="div-pj">
                                        <span><img src="../../public/img/index/wxhp.png" alt=""></span>
                                        <span>166 · 超赞房东</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 一个详细信息 -->
                        <div class="zt-tu-width">
                            <div class="div-h1">
                                <!-- 图片 -->
                                <div class="div-img"><a href="javascript:;"><img src="../../public/img/index/index-h206.jpg" alt=""></a></div>
                                <!-- 详细 -->
                                <div class="div-text">
                                    <span><a href="javascript:;">整套酒店式公寓 · 1张床</a></span>
                                    <p><a href="javascript:;">【雾都江景】洪崖洞/解放碑/穿楼地铁/ 大礼堂 网红景点打卡集合地 轻轨站旁 简约日式整租一</a></p>
                                    <span>￥339</span>
                                    <span>￥424</span>
                                    <span>每晚</span>
                                    <!-- 五星好评 -->
                                    <div class="div-pj">
                                        <span><img src="../../public/img/index/wxhp.png" alt=""></span>
                                        <span>166 · 超赞房东</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 查看更多 -->
                        <div class="zt-chak">
                            <a href="javascript:;">查看更多重庆房源<img src="../../public/img/index/dayu01.png" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>    
            <my-footer/>
        </div>  
    </div>
</template>
<script>
export default {
    data(){
        return{
            list:[]
        }
    },
    
    methods: {
        view(){
            
        }
    },
    created() {
        
    },
}
</script>
<style>
    /* @import url("../assets/css/bootstrap.css");
    @import url("../assets/css/lunbo.css");
    @import url("../assets/css/index.css"); */
</style>