<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'ad'}}"/>
  <video class="video" src='http://down.qq.com/qzone/demo_music/585.mp4' style="display:none" id="vertical"></video>
  <video class="video" src='http://down.qq.com/qzone/demo_music/185.mp4' style="display:none" id="horizontal"></video>
  <view class="page-bd">
      <view class="nav-wrap">
        <view class="nav-wrap__inner">
          <view class="nav-wrap__item {{isMiniprogram ? 'nav-wrap__item_active' : ''}}" bindtap="changeAppType" id="miniprogram">
            <text class="nav-wrap__txt">小程序</text>
          </view>
          <view class="nav-wrap__item {{isMiniprogram ? '' : 'nav-wrap__item_active'}}" bindtap="changeAppType" id="minigame">
            <text class="nav-wrap__txt">小游戏</text>
          </view>
        </view>
      </view>

      <view qq:if="{{isMiniprogram}}">
        <view class="list-wrap">
          <view class="list-wrap__group list-wrap__group_video {{openId === '2' ? 'list-wrap__group_expand' : 'list-wrap__group_collapse'}}">
            <view id="2" class="list-wrap__group-hd" bindtap="playVideoAd">
              <text class="list-wrap__group-title">激励视频广告</text>
              <image class="list-wrap__group-icon-more" src="../../../../image/common/icon-arrow-right@2x.svg" mode="aspectFill"></image>
            </view>
            <view class="list-wrap__group-tips">
              <text class="list-wrap__group-txt-tips">视频素材兼容横/竖屏形态，每次展示以系统下发为准</text>
            </view>
          </view>

          <view class="list-wrap__group {{openId === '1' ? 'list-wrap__group_expand' : 'list-wrap__group_collapse'}}">
            <view id="1" class="list-wrap__group-hd" bindtap="kindToggle">
              <text class="list-wrap__group-title">banner广告</text>
              <text class="list-wrap__txt-num">2</text>
            </view>
            <view class="list-wrap__group-bd" style="background-color:{{bgColor}}" qq:if="{{openId === '1'}}">
              <!--
              <ad unit-id="698c23d3fcac073885e7133ef37d4d5a" type="banner" test-banner-type="three"></ad>
              -->
              <!--
                banner-area_1
                banner-area_2
                banner-area_3
              -->
              <view class="banner-area banner-area_1" style="background-color:{{bgColor}}">

                <view class="banner-wrap banner-wrap_type-1">
                  <view class="banner-wrap__hd">
                    <text class="banner-wrap__txt-title">样式193</text>
                  </view>
                  <view class="banner-wrap__bd" bindtap="navigateToWeb">
                    <image class="banner-wrap__img" src="https://qzonestyle.gtimg.cn/aoi/sola/20190806182747_9BTn18QkPw.png" mode="aspectFit" />
                  </view>
                </view>

                <view class="banner-wrap banner-wrap_type-2">
                  <view class="banner-wrap__hd">
                    <text class="banner-wrap__txt-title">样式285</text>
                  </view>
                  <view class="banner-wrap__bd" bindtap="navigateToWeb">
                    <block qq:if="{{bgColorButton === '0'}}">
                      <image class="banner-wrap__img" src="https://qzonestyle.gtimg.cn/aoi/sola/20190806183032_vTW89toX1g.png" mode="aspectFit" />
                    </block>
                    <block qq:elif="{{bgColorButton === '1'}}">
                      <image class="banner-wrap__img" src="https://qzonestyle.gtimg.cn/aoi/sola/20190806183018_DYxdtR23cC.png" mode="aspectFit" />
                    </block>
                    <block qq:else>
                      <image class="banner-wrap__img" src="https://qzonestyle.gtimg.cn/aoi/sola/20190806182928_43EmmEKAiN.png" mode="aspectFit" />
                    </block>
                  </view>
                </view>

                <view class="changecolor-wrap">
                  <view class="changecolor-wrap__hd">
                    <text class="changecolor-wrap__txt-title">点击下方按钮改变背景颜色</text>
                  </view>
                  <view class="changecolor-wrap__bd">
                    <view class="changecolor-wrap__item changecolor-wrap__item-1 {{bgColorButton === '0' ? 'changecolor-wrap__item_active' : ''}}">
                      <view class="changecolor-wrap__icon-square" bindtap="changeDarkColor"></view>
                      <text class="changecolor-wrap__txt">10%白色</text>
                    </view>

                    <view class="changecolor-wrap__item changecolor-wrap__item-2 {{bgColorButton === '1' ? 'changecolor-wrap__item_active' : ''}}">
                      <view class="changecolor-wrap__icon-square" bindtap="changeMidColor"></view>
                      <text class="changecolor-wrap__txt">50%白色</text>
                    </view>

                    <view class="changecolor-wrap__item changecolor-wrap__item-3 {{bgColorButton === '2' ? 'changecolor-wrap__item_active' : ''}}">
                      <view class="changecolor-wrap__icon-square" bindtap="changeWhiteColor"></view>
                      <text class="changecolor-wrap__txt">100%白色</text>
                    </view>

                  </view>
                </view>
              </view>
            </view>
          </view>

          <view class="list-wrap__group {{openId === '3' ? 'list-wrap__group_expand' : 'list-wrap__group_collapse'}}">
            <view id="3" class="list-wrap__group-hd" bindtap="kindToggle">
              <text class="list-wrap__group-title">翻页广告</text>
              <text class="list-wrap__txt-num">1</text>
            </view>
            <view class="list-wrap__group-bd" qq:if="{{openId === '3'}}">
              <!--
              <view class="btn-area">
                <button type="primary" bindtap="toggleSwipB">点击显示翻页广告样式</button>
              </view>
              <ad qq:if="{{isSwipBShow}}" unit-id="698c23d3fcac073885e7133ef37d4d5a" type="swip" bindtouchmove="testmove"></ad>
              -->
              <view class="banner-area">
                <view class="banner-wrap banner-wrap_type-4">
                  <view class="banner-wrap__bd">
                    <image class="banner-wrap__img" src="https://qzonestyle.gtimg.cn/aoi/sola/20190808150727_qtqRd4jbJv.png" mode="aspectFit" bindtap="navigateToWeb"/>
                  </view>
                  <view class="banner-wrap__ft">
                    <text class="banner-wrap__txt-tips">仅支持阅读类小程序</text>
                  </view>
                </view>
              </view>

            </view>
          </view>

          <view class="list-wrap__group {{openId === '4' ? 'list-wrap__group_expand' : 'list-wrap__group_collapse'}}">
            <view id="4" class="list-wrap__group-hd" bindtap="kindToggle">
              <text class="list-wrap__group-title">卡片广告</text>
              <text class="list-wrap__txt-num">1</text>
            </view>
            <view class="list-wrap__group-bd" qq:if="{{openId === '4'}}">
              <!-- <ad unit-id="698c23d3fcac073885e7133ef37d4d5a" type="card"></ad> -->
              <view class="banner-area">
                <view class="banner-wrap banner-wrap_type-5">
                  <view class="banner-wrap__bd">
                    <view class="banner-wrap__btn-close" bindtap="closeCard"></view>
                    <image qq:if="{{isCardOpen}}"  bindtap="navigateToWeb" class="banner-wrap__img" src="https://qzonestyle.gtimg.cn/aoi/sola/20190806192618_I1ZSbsxNaU.png" mode="aspectFit" />
                  </view>
                </view>
              </view>

            </view>
          </view>

          <view class="list-wrap__group {{openId === '5' ? 'list-wrap__group_expand' : 'list-wrap__group_collapse'}}">
            <view id="5" class="list-wrap__group-hd" bindtap="kindToggle">
              <text class="list-wrap__group-title">feeds广告</text>
              <text class="list-wrap__txt-num">1</text>
            </view>
            <view class="list-wrap__group-bd" qq:if="{{openId === '5'}}">
              <!-- <ad unit-id="698c23d3fcac073885e7133ef37d4d5a" type="feeds" ad-height="150"></ad> -->

              <view class="banner-area banner-area_1">
                <view class="banner-wrap banner-wrap_type-6" hidden="true">
                  <view class="banner-wrap__hd">
                    <text class="banner-wrap__txt-title">样式1：无按钮</text>
                  </view>
                  <view class="banner-wrap__bd" bindtap="navigateToWeb">
                    <image class="banner-wrap__img" src="https://qzonestyle.gtimg.cn/aoi/sola/20190806183411_s6a3bY4N1v.png" mode="aspectFit" />
                  </view>
                </view>

                <view class="banner-wrap banner-wrap_type-7">
                  <view class="banner-wrap__hd">
                    <text class="banner-wrap__txt-title" style="display:none;">样式1：有按钮</text>
                  </view>
                  <view class="banner-wrap__bd" bindtap="navigateToWeb">
                    <image class="banner-wrap__img" src="https://qzonestyle.gtimg.cn/aoi/sola/20190808150655_a2ws4U2Aaq.png" mode="aspectFit" />
                  </view>
                </view>
              </view>
    
            </view>
          </view>

        </view>

      </view>

      <view qq:else>
          <view class="list-wrap__group list-wrap__group_video {{openId === '7' ? 'list-wrap__group_expand' : 'list-wrap__group_collapse'}}">
            <view id="7" class="list-wrap__group-hd" bindtap="playVideoAd2">
              <text class="list-wrap__group-title">激励视频广告</text>
              <image class="list-wrap__group-icon-more" src="../../../../image/common/icon-arrow-right@2x.svg" mode="aspectFill"></image>
            </view>
            <view class="list-wrap__group-tips">
              <text class="list-wrap__group-txt-tips">视频素材兼容横/竖屏形态，每次展示以系统下发为准</text>
            </view>
          </view>
          <view class="list-wrap__group {{openId === '6' ? 'list-wrap__group_expand' : 'list-wrap__group_collapse'}}">
            <view id="6" class="list-wrap__group-hd" bindtap="kindToggle">
              <text class="list-wrap__group-title">banner广告</text>
              <text class="list-wrap__txt-num">6</text>
            </view>
            <view class="list-wrap__group-bd" qq:if="{{openId === '6'}}">
              <!-- <ad unit-id="698c23d3fcac073885e7133ef37d4d5a" type="banner" test-banner-type="three"></ad>       -->

              <view class="banner-area banner-area_1">

                <view class="banner-wrap banner-wrap_type-8">
                  <view class="banner-wrap__hd">
                    <text class="banner-wrap__txt-title">素材规格1</text>
                  </view>
                  <view class="banner-wrap__bd">
                    <image class="banner-wrap__img" src="https://qzonestyle.gtimg.cn/aoi/sola/20190806192759_RirnumAVCU.png" mode="aspectFit" bindtap="navigateToWeb" />
                  </view>
                </view>

                <view class="banner-wrap banner-wrap_type-8">
                  <view class="banner-wrap__hd">
                    <text class="banner-wrap__txt-title">素材规格2</text>
                  </view>
                  <view class="banner-wrap__bd">
                    <image class="banner-wrap__img" src="https://qzonestyle.gtimg.cn/aoi/sola/20190806192819_9qUp6iPANY.png" mode="aspectFit" bindtap="navigateToWeb" />
                  </view>
                </view>

                <view class="banner-wrap banner-wrap_type-8">
                  <view class="banner-wrap__hd">
                    <text class="banner-wrap__txt-title">素材规格3</text>
                  </view>
                  <view class="banner-wrap__bd">
                    <image class="banner-wrap__img" src="https://qzonestyle.gtimg.cn/aoi/sola/20190806192832_JnKcThtMdO.png" mode="aspectFit" bindtap="navigateToWeb" />
                  </view>
                </view>

                <view class="banner-wrap banner-wrap_type-8">
                  <view class="banner-wrap__hd">
                    <text class="banner-wrap__txt-title">素材规格4</text>
                  </view>
                  <view class="banner-wrap__bd">
                    <image class="banner-wrap__img" src="https://qzonestyle.gtimg.cn/aoi/sola/20190806192857_vwvPO54VhT.png" mode="aspectFit" bindtap="navigateToWeb" />
                  </view>
                </view>

                <view class="banner-wrap banner-wrap_type-8">
                  <view class="banner-wrap__hd">
                    <text class="banner-wrap__txt-title">素材规格5</text>
                  </view>
                  <view class="banner-wrap__bd">
                    <image class="banner-wrap__img" src="https://qzonestyle.gtimg.cn/aoi/sola/20190806192935_YeXroXP4uK.png" mode="aspectFit" bindtap="navigateToWeb" />
                  </view>
                </view>

                <view class="banner-wrap banner-wrap_type-8">
                  <view class="banner-wrap__hd">
                    <text class="banner-wrap__txt-title">素材规格6</text>
                  </view>
                  <view class="banner-wrap__bd">
                    <image class="banner-wrap__img" src="https://qzonestyle.gtimg.cn/aoi/sola/20190806193031_Se2Ga1fp7g.png" mode="aspectFit" bindtap="navigateToWeb" />
                  </view>
                </view>

              </view>

            </view>
          </view>
      </view>

  </view>
  

  <template is="foot" />
</view>