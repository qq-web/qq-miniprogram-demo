<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'swiper'}}"/>

  <view class="page-bd">

    <view class="swiper-wrap">
      <swiper indicator-dots="{{indicatorDots}}"
        autoplay="{{autoplay}}" interval="{{interval}}" duration="{{duration}}">
        <block qq:for="{{background}}" qq:key="*this">
          <swiper-item>
            <view class="swiper-wrap__item {{item}}"></view>
          </swiper-item>
        </block>
      </swiper>
    </view>

    <view class="qui-cell-group">
      <view class="qui-cell-group__bd">
        <view class="qui-cell">
          <view class="qui-cell__bd">
            <text class="qui-cell__txt-label">指示点</text>
          </view>
          <view class="qui-cell__ft">
            <switch checked="{{indicatorDots}}" bindchange="changeIndicatorDots" />
          </view>
        </view>

        <view class="qui-cell">
          <view class="qui-cell__bd">
            <text class="qui-cell__txt-label">自动播放</text>
          </view>
          <view class="qui-cell__ft">
            <switch checked="{{autoplay}}" bindchange="changeAutoplay" />
          </view>
        </view>
      </view>
    </view>

    <view class="options-wrap">
      <view class="options-wrap__hd">
        <text class="options-wrap__txt-title">幻灯片切换时长(ms)</text>
        <text class="options-wrap__txt-time">{{duration}}</text>
      </view>
      <view class="options-wrap__bd">
        <slider bindchange="durationChange" value="{{duration}}" min="500" max="2000"/>
      </view>
    </view>

    <view class="options-wrap">
      <view class="options-wrap__hd">
        <text class="options-wrap__txt-title">自动播放间隔时长(ms)</text>
        <text class="options-wrap__txt-time">{{interval}}</text>
      </view>
      <view class="options-wrap__bd">
        <slider bindchange="intervalChange" value="{{interval}}" min="2000" max="10000"/>
      </view>
    </view>

  </view>

  <template is="foot" />
</view>
