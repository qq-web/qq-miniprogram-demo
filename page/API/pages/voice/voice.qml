<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container">
  <template is="head" data="{{title: 'start/stopRecord、play/stopVoice'}}"/>

  <view class="page-bd">

    <view class="voice-wrap" qq:if="{{recording === false && playing === false && hasRecord === false}}">
      <view class="voice-wrap__hd">
        <text class="voice-wrap__txt-title">{{formatedRecordTime}}</text>
      </view>
      <view class="voice-wrap__bd">
        <view class="voice-wrap__item" bindtap="startRecord">
          <image class="voice-wrap__icon" src="../../../../image/icon-voice.svg" mode="aspectFill"></image>
        </view>
      </view>
    </view>

    <view class="voice-wrap" qq:if="{{recording === true}}">
      <view class="voice-wrap__hd">
        <text class="voice-wrap__txt-title">{{formatedRecordTime}}</text>
      </view>
      <view class="voice-wrap__bd">
        <view class="voice-wrap__item" bindtap="stopRecord">
          <image class="voice-wrap__icon" src="../../../../image/icon-pause.svg" mode="aspectFill"></image>
        </view>
      </view>
    </view>

    <view class="voice-wrap" qq:if="{{hasRecord === true && playing === false}}">
      <view class="voice-wrap__hd">
        <text class="voice-wrap__txt-title">{{formatedPlayTime}}</text>
        <text class="voice-wrap__txt-desc">{{formatedRecordTime}}</text>
      </view>
      <view class="voice-wrap__bd">
        <view class="voice-wrap__item" bindtap="playVoice">
          <image class="voice-wrap__icon" src="../../../../image/icon-play.svg" mode="aspectFill"></image>
        </view>

        <view class="voice-wrap__item" bindtap="clear">
          <image class="voice-wrap__icon" src="../../../../image/icon-delete.svg" mode="aspectFill"></image>
        </view>
      </view>
    </view>

    <view class="voice-wrap" qq:if="{{hasRecord === true && playing === true}}">
      <view class="voice-wrap__hd">
        <text class="voice-wrap__txt-title">{{formatedPlayTime}}</text>
        <text class="voice-wrap__txt-desc">{{formatedRecordTime}}</text>
      </view>
      <view class="voice-wrap__bd">
        <view class="voice-wrap__item" bindtap="stopVoice">
          <image class="voice-wrap__icon" src="../../../../image/icon-stop.svg" mode="aspectFill"></image>
        </view>

        <view class="voice-wrap__item" bindtap="clear">
          <image class="voice-wrap__icon" src="../../../../image/icon-delete.svg" mode="aspectFill"></image>
        </view>
      </view>
    </view>
    
  </view>

  <template is="foot" />
</view>
