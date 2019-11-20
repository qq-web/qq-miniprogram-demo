<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container">
  <template is="head" data="{{title: 'InnerAudioContext'}}"/>

  <view class="page-bd">
    <view class="page-section page-section-gap" style="text-align: center;">
      <image src="{{src}}"></image>
      <text class="title text">{{title}}</text>
      <text class="singer text">{{singer}}</text>
      <text class="time text">{{time}}</text>

      <image src="/image/audioPlay.png" class="page-body-button" bindtap="play" qq:if="{{isPlaying === false}}"></image>            
      <image src="/image/audioPause.png" class="page-body-button" bindtap="pause" qq:else></image>
    </view>
  </view>
  <template is="foot" />
</view>