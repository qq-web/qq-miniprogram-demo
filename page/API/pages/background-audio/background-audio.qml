<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'backgroundAudio'}}"/>

  <view class="page-bd">
    <view class="music-wrap">
      <view class="music-wrap__bd">
        <text class="music-wrap__txt-num">{{formatedPlayTime}}</text>

        <view class="music-wrap__progress">
          <slider value="60" bindchange="slider2change" step="5"/>

          <text class="music-wrap__txt-starttime">00:00</text>
          <text class="music-wrap__txt-totaltime">00:00</text>
        </view>
      </view>
      <view class="music-wrap__ft">
        <text class="music-wrap__txt-desc">注意：离开当前页面后背景音乐将保持播放，但退出小程序将停止</text>

        <view class="music-wrap__opt">
          <block qq:if="{{playing === true}}">
            <view class="music-wrap__opt-btn" bindtap="stop">
              <image class="music-wrap__opt-icon" src="../../../../image/icon-stop-02.svg" mode="aspectFill"></image>
            </view>

            <view class="music-wrap__opt-btn" bindtap="pause">
              <image class="music-wrap__opt-icon" src="../../../../image/icon-pause-02.svg" mode="aspectFill"></image>
            </view>
          </block>
          <block qq:if="{{playing === false}}">
            <view class="music-wrap__opt-btn" bindtap="play">
              <image class="music-wrap__opt-icon" src="../../../../image/icon-play.svg" mode="aspectFill"></image>
            </view>
          </block>
        </view>
      </view>
    </view>
  </view>

  <template is="foot" />
</view>
