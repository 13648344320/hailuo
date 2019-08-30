<template>
    <div>
        <my-header/>   
        <div id="detail">
        <div class="detail_head"></div>
        <div class="detail_body">
            <div class="detail_img">
                <!-- 大图的遮罩层 -->
                <div class="detail_masker masker_lg"></div>
                <div class="detail_img_lg">
                    <img :src="pics[0].hl_big">
                </div>                
                <div class="detail_img_md">
                    <!-- 中间图上面的遮罩层 -->
                    <div class="detail_masker masker_md_top"></div>
                    <div class="detail_img_md_top">
                        <img :src="pics[0].hl_small1" alt="">
                    </div>
                    <!-- 中间图下面的遮罩层 -->
                    <div class="detail_masker masker_md_bt"></div>
                    <div class="detail_img_md_bt">
                        <img :src="pics[0].hl_small2" alt="">
                    </div>
                </div>
                <div class="detail_img_right">
                    <!-- 右边图的上面的遮罩层 -->
                    <div class="detail_masker masker_right_top"></div>
                    <div class="detail_img_right_top">
                        <img :src="pics[0].hl_small3" alt="">
                    </div>
                    <!-- 右图下面的遮罩层 -->
                    <div class="detail_masker masker_right_bt"></div>
                    <div class="detail_img_right_bt" >
                        <img :src="pics[0].hl_small4" alt="">
                    </div>
                </div>
            </div>
            <div class="detail_content">
                <div class="detail_desc_head">
                    <p>
                        <a href="#detail_desc_a">详情</a> 
                        <a href="#detail_desc_comment">评价</a> 
                        <a href="#detail_desc_location">位置</a> 
                        <a href="#detail_desc_note">须知</a> 
                    </p>
                </div>
                <div class="detail_desc">   
                    <div>
                        <!-- 具体详情 -->
                        <!-- 整体介绍 -->
                        <div class="detail_desc_a" id="detail_desc_a">
                            <p><span>重庆·</span><span>{{pros[0].county}}</span></p>  
                            <p> {{pros[0].details}}</p>
                            <p>
                                <span><i><img src="../../public/img/detail/bath.png" alt=""></i>1间卧室</span>
                                <span><i><img src="../../public/img/detail/bed.png" alt=""></i>1张床</span>
                                <span><i><img src="../../public/img/detail/toilet.png" alt=""></i>1间卫生间</span>
                                <span><i><img src="../../public/img/detail/people.png" alt=""></i>最多住2人</span>
                            </p>
                            <p>
                                <a>房东好人</a>
                                <a>可以做饭</a>
                                <a>自助入住</a>
                                <a>有洗衣机</a>
                            </p>
                            <div class="detail_desc_a_msg">
                                <p>     房东留言:</p>
                                <p>嗨,欢迎来到我的小屋｡因为经常不在家住,所以把心爱的它分享给你,希望你也喜欢它
                                我把对房间的要求,诸如绝对干净整洁､交通便捷､舒适温暖､具有一定的娱乐特征等全部一点一滴的注入到了这个小屋 ;希望为来重庆旅行出差的你带来一丝温暖｡</p>
                                <div class="detail_desc_a_msg_a">
                                    <div>
                                        <span>卧室</span>
                                        <div><img src="../../public/img/detail/bed.png"></div>
                                        <div>一张标准双人床</div>
                                    </div>
                                    <div>
                                        <span>客厅/公共区域</span>
                                        <div><img src="../../public/img/detail/living.png"></div>
                                        <div>一张沙发</div>
                                    </div>
                                </div>
                                <div class="detail_desc_a_msg_b">
                                    <div>
                                        <span>整套房子/公寓</span>
                                        <span>独享整个房源，无需与房东或他人共住</span>
                                    </div>
                                    <div>
                                        <span>入住/退房</span>
                                        <span>入住时间 14:00后 · 退房时间 12:00</span>
                                    </div>
                                </div>
                                <div class="detail_desc_a_msg_c">
                                    <div>
                                        <svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false"
                                            style="height: 24px; width: 24px; fill: currentcolor;">
                                            <path
                                                d="m12 15a3 3 0 1 0 0 6 3 3 0 0 0 0-6zm0 5a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm5.92-5.78a.5.5 0 1 1 -.84.55c-1.19-1.81-3.07-2.77-5.08-2.77s-3.89.96-5.08 2.78a.5.5 0 0 1 -.84-.55c1.38-2.1 3.58-3.23 5.92-3.23s4.54 1.13 5.92 3.23zm2.98-3.03a.5.5 0 1 1 -.79.61c-1.66-2.14-5.22-3.8-8.11-3.8-2.83 0-6.26 1.62-8.12 3.82a.5.5 0 0 1 -.76-.65c2.05-2.42 5.75-4.17 8.88-4.17 3.19 0 7.05 1.8 8.9 4.19zm2.95-2.33a.5.5 0 0 1 -.71-.02c-2.94-3.07-6.71-4.84-11.14-4.84s-8.2 1.77-11.14 4.85a.5.5 0 0 1 -.72-.69c3.12-3.27 7.14-5.16 11.86-5.16s8.74 1.89 11.86 5.16a.5.5 0 0 1 -.02.71z"
                                                fill-rule="evenodd"></path>
                                        </svg>
                                        <p>无线网</p>
                                    </div>
                                    <div>
                                        <svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false"
                                            style="height: 24px; width: 24px; fill: currentcolor;">
                                            <path
                                                d="m10.5 0a .5.5 0 0 0 -.5.5v7a .5.5 0 0 1 -.49.5h-1.51v-7.5a.5.5 0 1 0 -1 0v7.5h-1.51a.5.5 0 0 1 -.49-.5v-7a .5.5 0 1 0 -1 0v7c0 .83.67 1.5 1.49 1.5h1.51v5c0 .03.01.06.02.09a1.49 1.49 0 0 0 -1.02 1.41v7c0 .83.67 1.5 1.5 1.5s1.5-.67 1.5-1.5v-7c0-.66-.43-1.21-1.02-1.41.01-.03.02-.06.02-.09v-5h1.51a1.5 1.5 0 0 0 1.49-1.5v-7a .5.5 0 0 0 -.5-.5zm-2.5 15.5v7a .5.5 0 0 1 -.5.5.5.5 0 0 1 -.5-.5v-7c0-.28.22-.5.5-.5s.5.22.5.5zm11.5-15.5h-2c-1.4 0-2.5 1.07-2.5 2.5v7c0 1.43 1.1 2.5 2.5 2.5h1.5v2.09a1.49 1.49 0 0 0 -.5-.09c-.83 0-1.5.67-1.5 1.5v7c0 .83.67 1.5 1.5 1.5s1.5-.67 1.5-1.5v-22.5zm-2 11c-.86 0-1.5-.63-1.5-1.5v-7c0-.87.65-1.5 1.5-1.5h1.5v10zm1.5 11.5a.5.5 0 0 1 -.5.5.5.5 0 0 1 -.5-.5v-7c0-.28.22-.5.5-.5s.5.22.5.5z"
                                                fill-rule="evenodd"></path>
                                        </svg>
                                        <p>厨房</p>
                                    </div>
                                    <div>
                                        <svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false"
                                            style="height: 24px; width: 24px; fill: currentcolor;">
                                            <path
                                                d="m14.5 4h .5v-1.5c0-1.39-1.12-2.5-2.5-2.5h-.99a2.5 2.5 0 0 0 -2.51 2.5v1.5zm-4.5-1.5c0-.83.67-1.5 1.51-1.5h.99c.83 0 1.5.67 1.5 1.5v.5h-4zm5.5 2.5h-7a3.5 3.5 0 0 0 -3.5 3.49v12.01c0 1.93 1.57 3.5 3.5 3.5h7a3.5 3.5 0 0 0 3.5-3.49v-12.02c0-1.92-1.57-3.49-3.5-3.49zm2.5 15.51a2.5 2.5 0 0 1 -2.5 2.49h-7a2.5 2.5 0 0 1 -2.5-2.49v-12.02a2.5 2.5 0 0 1 2.5-2.49h7a2.5 2.5 0 0 1 2.5 2.49v12.01zm-1-11.01a.5.5 0 0 1 -.5.5h-9a .5.5 0 0 1 0-1h9a .5.5 0 0 1 .5.5z"
                                                fill-rule="evenodd"></path>
                                        </svg>
                                        <p>洗发水</p>
                                    </div>
                                    <div>
                                        <svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false"
                                            style="height: 24px; width: 24px; fill: currentcolor;">
                                            <path
                                                d="m6.5 5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zm0 4a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm10.15-4.09a125.01 125.01 0 0 0 -1.43-.45 217.8 217.8 0 0 0 -3.98-1.21c-2.68-.78-4.51-1.23-5.24-1.25-3.43.04-6.01 2.28-6.01 5.5 0 2 .98 3.62 2.53 4.57 0 .02 0 .04.01.06.19.68.31 1.6.39 2.7a40.42 40.42 0 0 1 .05 4.17 2.01 2.01 0 0 0 2.03 2h2.03c1.25 0 1.97-.73 1.97-1.98 0-.07 0-.14 0-.31-.03-1.86.16-3.27.89-4.81a7.75 7.75 0 0 1 1-1.59.5.5 0 0 0 .09-.17 71.83 71.83 0 0 0 1.53-.4 97.27 97.27 0 0 0 4.15-1.24.5.5 0 0 0 .34-.48v-4.65a.5.5 0 0 0 -.35-.48zm-7.67 8.57c-.81 1.71-1.01 3.26-.98 5.25v.29c0 .7-.28.98-.97.98h-2.03c-.6 0-1.03-.48-1.03-.98a41.35 41.35 0 0 0 -.05-4.26 18.74 18.74 0 0 0 -.26-2.15c.71.25 1.5.39 2.33.39.85 0 2.05-.19 3.53-.51-.21.32-.39.65-.55.99zm7.02-6.98v3.17a96.43 96.43 0 0 1 -3.76 1.11 69.77 69.77 0 0 1 -1.72.45c-1.98.49-3.55.76-4.52.76-2.89 0-5-1.85-5-4.5 0-2.63 2.11-4.47 5.01-4.5.59.01 2.41.46 4.97 1.21a216.71 216.71 0 0 1 4.99 1.53l.04.01v.75zm7.92 3.1a1.91 1.91 0 0 1 -.42.46 1.97 1.97 0 0 1 -1.25.44c-.47 0-.8-.15-1.51-.57-.54-.33-.77-.43-.99-.43-.3 0-.55.05-.75.13a.91.91 0 0 0 -.19.09.5.5 0 0 1 -.62-.78c.09-.07.24-.16.44-.24a3.01 3.01 0 0 1 1.12-.2c.47 0 .8.15 1.51.57.54.33.77.43.99.43a.98.98 0 0 0 .63-.22.98.98 0 0 0 .2-.21.5.5 0 0 1 .85.53zm-5.81-2.95a.5.5 0 0 1 .08-.7c.09-.07.24-.16.44-.24a3.01 3.01 0 0 1 1.12-.2c.47 0 .8.15 1.51.57.54.33.77.43.99.43a.98.98 0 0 0 .63-.22.98.98 0 0 0 .2-.21.5.5 0 0 1 .85.53 1.91 1.91 0 0 1 -.42.46 1.97 1.97 0 0 1 -1.25.44c-.47 0-.8-.15-1.51-.57-.54-.33-.77-.43-.99-.43-.3 0-.55.05-.75.13a.91.91 0 0 0 -.19.09.5.5 0 0 1 -.7-.08z"
                                                fill-rule="evenodd"></path>
                                        </svg>
                                        <p>吹风机</p>
                                    </div>
                                    <div>
                                        <svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false"
                                            style="height: 24px; width: 24px; fill: currentcolor;">
                                            <path
                                                d="m23.5 4h-1.5v-1.5c0-1.38-1.12-2.5-2.5-2.5h-15a2.5 2.5 0 0 0 -2.5 2.5v1.5h-1.5a.5.5 0 1 0 0 1h1.5v15.5c0 .83.67 1.5 1.5 1.5h1.5v.5c0 .83.67 1.5 1.5 1.5h14c .83 0 1.5-.67 1.5-1.5v-17.5h1.5a.5.5 0 0 0 0-1zm-20.5-1.5c0-.82.67-1.5 1.5-1.5h15.01c.82 0 1.49.67 1.49 1.5v1.5h-2v-.51a.5.5 0 0 1 .5-.49.5.5 0 0 0 0-1 1.5 1.5 0 0 0 -1.5 1.5v11.5h-15zm0 13.5h15v2h-15zm .5 5a .5.5 0 0 1 -.5-.5v-1.5h15v1.51c0 .27-.23.5-.5.5h-14zm17.5 1.5c0 .28-.22.5-.5.5h-14a .5.5 0 0 1 -.5-.5v-.5h11.5c.83 0 1.5-.67 1.5-1.5v-15.5h2z"
                                                fill-rule="evenodd"></path>
                                        </svg>
                                        <p>生活必须品</p>
                                    </div>
                                    <div>
                                        <svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false"
                                            style="height: 24px; width: 24px; fill: currentcolor;">
                                            <path
                                                d="m21.89 18a .5.5 0 0 1 -.68.18l-3.29-1.9.79 2.93a.5.5 0 0 1 -.97.26l-1.04-3.89-4.7-2.71v5.43l2.85 2.85a.5.5 0 1 1 -.71.71l-2.14-2.15v3.79a.5.5 0 1 1 -1 0v-3.79l-2.15 2.15a.5.5 0 1 1 -.71-.71l2.86-2.86v-5.43l-4.7 2.72-1.04 3.9a.5.5 0 1 1 -.97-.26l.79-2.93-3.28 1.9a.5.5 0 0 1 -.5-.87l3.28-1.9-2.93-.79a.5.5 0 0 1 -.35-.61.51.51 0 0 1 .61-.35l3.89 1.04 4.7-2.71-4.7-2.71-3.9 1.04a.5.5 0 0 1 -.61-.35.5.5 0 0 1 .35-.61l2.93-.79-3.28-1.9a.5.5 0 1 1 .5-.87l3.28 1.9-.78-2.93a.5.5 0 0 1 .97-.26l1.04 3.9 4.7 2.71v-5.42l-2.85-2.86a.5.5 0 1 1 .71-.71l2.14 2.15v-3.79a.5.5 0 1 1 1 0v3.79l2.15-2.15a.5.5 0 1 1 .71.71l-2.86 2.86v5.43l4.7-2.71 1.04-3.9a.5.5 0 1 1 .97.26l-.79 2.93 3.29-1.9a.5.5 0 1 1 .5.87l-3.29 1.89 2.93.79a.5.5 0 1 1 -.26.97l-3.89-1.05-4.7 2.71 4.7 2.71 3.9-1.05a.5.5 0 0 1 .26.97l-2.93.79 3.29 1.9a.5.5 0 0 1 .18.68z"
                                                fill-rule="evenodd"></path>
                                        </svg>
                                        <p>空调</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="detail_desc_comment" id="detail_desc_comment">
                            <div class="detail_desc_comment_title" >评价</div>
                            <ul>
                                <li>
                                    <span>王忠旭</span><span>2019年6月</span>
                                    <p>附近荟聚可以逛到关门 小姐姐准备的一些东西很贴心~</p>
                                </li>
                                <li>
                                    <span>张萌</span><span>2017年3月</span>
                                    <p>附近荟聚可以逛到关门 小姐姐准备的一些东西很贴心~</p>
                                </li>
                            </ul>
                        </div>
                        <div class="detail_desc_note" id="detail_desc_note">
                            <div class="detail_desc_note_title">入住须知</div>
                            <div>
                                <span>基本要求</span><a>准守相关法律法规</a>
                            </div>
                            <div>
                                <span>取消政策</span><a>添加入住退房日期后，需提前一天申请取消</a>
                            </div>
                            <div>
                                <span>安全须知</span><a>该房源未安装一氧化碳报警器</a>
                            </div>
                            <div>
                                <span>交易提示</span><a>若需要开具房费发票，请您与房东协商。
                                </a>
                            </div>
                        </div>
                        <div class="detail_desc_location" id="detail_desc_location">
                            <div class="detail_desc_location_title">位置</div>
                            <div style="margin-top:30px" >
                                <!-- 预留组件地图 -->
                                <tencnetMap/>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 右侧的预定功能部分 -->
                <div class="detail_date" id="detail_date" :style="{display:show}">
                    <div class="detail_date_price">￥{{pros[0].price}} <span>每晚</span> </div>
                    <div class="detail_date_sale">
                        <div>
                            <div class="date_svg">
                                <svg viewBox="0 0 32 32" role="presentation" aria-hidden="true" focusable="false"
                                    style="height: 12px; width: 12px; display: block; fill: rgb(187, 187, 187);">
                                    <path
                                        d="m13.2651857 19.4498225-5.07154933-5.0715493-2.17401154 2.1740115 7.24670517 7.2467052 2.1740115-2.1740116-.0011443-.0011443 10.649855-10.649855-2.1740115-2.17401155zm2.7348143 12.5501775c-8.836556 0-16-7.163444-16-16s7.163444-16 16-16 16 7.163444 16 16-7.163444 16-16 16z">
                                    </path>
                                </svg>
                            </div>
                            <span>秋季特惠8.5折</span>
                        </div> 
                    </div>
                    <div class="detail_date_time">日期</div>
                    <div class="detail_date_time_select">
                        <input type="text" id="test6" readonly>
                    </div>
                    <div style="font-weight:bolder">房客</div>
                    <div class="detail_date_gro" @click="detail_gro">
                        <span>{{n+m+b}}位房客</span>
                        <svg viewBox="0 0 18 18" 
                        :style="{display:svg1}"
                        role="presentation" aria-hidden="true" focusable="false"
                            style="height: 16px; width: 16px; display: block; fill: currentcolor;">
                            <path d="m16.29 4.3a1 1 0 1 1 1.41 1.42l-8 8a1 1 0 0 1 -1.41 0l-8-8a1 1 0 1 1 1.41-1.42l7.29 7.29z"
                                fill-rule="evenodd"></path>
                        </svg>
                        <svg viewBox="0 0 18 18" role="presentation" 
                        :style="{display:svg2}"
                        
                        aria-hidden="true" focusable="false" style="height: 16px; width: 16px; display: block; fill: currentcolor;"><path d="m1.71 13.71a1 1 0 1 1 -1.42-1.42l8-8a1 1 0 0 1 1.41 0l8 8a1 1 0 1 1 -1.41 1.42l-7.29-7.29z" fill-rule="evenodd"></path></svg>
                    </div>
                    <ul class="detail_date_hide" :style="{display:open}">
                        <li>
                            <div>成人</div>
                            <div>
                                <a @click="reduceN">
                                    -
                                </a>
                                <div>{{n}}</div>
                                <a @click="addN">
                                    +
                                </a>
                            </div>
                        </li>
                        <li>
                            <div>儿童</div>
                            <div>
                                <a @click="reduceM">
                                    -
                                </a>
                                <div>{{m}}</div>
                                <a @click="addM">
                                    +
                                </a>
                            </div>
                        </li>
                        <li>
                            <div>婴儿</div>
                            <div>
                                <a @click="reduceB">
                                    -
                                </a>
                                <div>{{b}}</div>
                                <a @click="addB">
                                    +
                                </a>
                            </div>
                        </li>
                        <li class="ulClose" @click="ulClose">关闭</li>
                    </ul>
                    <div class="detail_date_book" @click="book" ><a>预定</a></div>
                    <div >
                        <span style="font-size:16px;font-weight:600;">小计：</span>
                        <span style="color:red;font-size:20px;font-weight:600;">共￥{{Tian*pros[0].price}}</span>    
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
            open:"",  //控制选择菜单的下拉与隐藏
            show:"",  //控制左侧预定窗口的显示与隐藏
            svg1:"none",  // 控制房客后面的向上箭头
            svg2:"",  // 控制房客后面的向下箭头
            n:1,     //  客人数目
            m:0,
            b:0,
            pics:[0],  //保存请求 details 获得的数组
            pros:[1],    //保存 请求product 获得详细数据
            time:'123',
            Tian:1,      // 预定的天数

        }
    },
    methods: {
             
        book(){
            //   判断当先用户是否登录
            var uname = this.$store.state.uname;
            var n= this.n;
            var m = this.m;
            var b = this.b
            if(uname){ 
                // 点击预定，获取当前的价格 price  人数gro  detail 位置信息  当前用户的姓名
                var obj = {
                    price:this.pros[0].price*this.Tian,
                    gro:n+m+b,
                    details:this.pros[0].detail,
                    uname:uname,
                    county:this.pros[0].county,
                    lg:this.pros[0].lg,
                    lt:this.pros[0].lt,
                    type:this.pros[0].type,
                    pics:this.pics[0].hl_big,
                    pid:this.pros[0].pid,
                    time:this.time
                }
                // 向booklist中插入 以上数据
                var url ="booked/insert"
                // 对插入进行验证  成功之后再进行跳转到booked界面 
                this.axios.get(url,{params:obj}).then((res)=>{
                    if(res.data.code==1){
                        this.$router.push("/booked")
                    }
                })
            }else{
                var islog=confirm('您还没有登录，是否前往登录')
                if(islog==true){
                    this.$router.push('/Login')
                }
            }
            
        },
        reduceN(){
            // 单击事件  控制  n 人 数的减少
            if(this.n>1){
                this.n--
            }else{
                this.n=1
            }
        },
        addN(){
            // 单击事件  控制 n 人数的增加
            this.n++
        },
        reduceM(){
            // 单击事件  控制  m 人 数的减少
            if(this.m>0){
                this.m--
            }else{
                this.m=0
            }
        },
        addM(){
            // 单击事件  控制 M 人数的增加
            this.m++
        },
        reduceB(){
            // 单击事件  控制  B 人 数的减少
            if(this.b>0){
                this.b--
            }else{
                this.b=0
            }
        },
        addB(){
            // 单击事件  控制 B 人数的增加
            this.b++
        },
        ulClose(){
            // 单击事件  关闭ul 下拉 菜单
            this.open = "none";
            this.svg2 = "block";
            this.svg1 = "none";
        },
        detail_gro(){
            // 单击事件控制  顾客选择的ul下拉菜单
            this.open = "block";
            this.svg2 = "none";
            this.svg1 = "block";
        },
        // 鼠标滚动触发事件
        handleScroll(){
            // 页面滚动距离顶部的距离
            var scrollTop = window.pageYOffset || document.documentElement.scrollTop || 
                      document.body.scrollTop
            // console.log(scrollTop)
            if(scrollTop>500 && scrollTop<1800){
               this.show = "block"
            }else{
                this.show = "none"
            }
        },
        getlaydate(){
          laydate.render({
          elem: '#test6',
          type:'datetime',
          range: true,
          change:  (value,start,endstart)=> {
            this.time =  value;
            if(start.year==endstart.year){
                if(endstart.month==start.month){
                 var  Tian1 = endstart.date - start.date 
                    this.Tian = Tian1
                }else{
                   var k = endstart.month-start.month
                   var  Tian2 = (k-1)*30 + endstart.date+(30-start.date)
                   this.Tian = Tian2
                }
            }else{
                alert("预定时间过长")
                return;
            }
          }
        });
        }
    },
    mounted(){
        // 添加鼠标向下滚动事件
        window.addEventListener('scroll',this.handleScroll,true);
       this.getlaydate();
    },
    created(){
        // 页面加载时获取获取上个页面传过来的商品pid
        // 如果上一个页面没有传参数过来
        if(!this.$route.query.pid){         
            var pid = 1
        }else{
            var pid = this.$route.query.pid
        }

        pid={pid:pid}
        // 查询数据库  商品列表
        this.axios.get("/find/details",{params:pid}).then((res)=>{
            this.pics = res.data
        })
        // 查询数据库  图片列表
        this.axios.get('/find/products',{params:pid}).then((res)=>{
            this.pros = res.data
        })
        // 分别加载
    }
}
</script>
<style>

</style>