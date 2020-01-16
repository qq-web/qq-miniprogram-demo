<import src="../../../common/head.qml"/>
<import src="../../../common/foot.qml"/>

<view class="container grayPage">
  <template is="head" data="{{title: 'join/exit/VolPChat'}}"/>

  <view class="page-bd">
    <view class="VolPChat-list">
      <view class="qui-cell">
        <view class="qui-cell__bd">
          <text class="qui-cell__txt-label">麦克风</text>
        </view>
        <view class="qui-cell__ft">
          <switch checked="{{!mute_microphone}}" bindchange="onMicrophoneSwitchChange"/>
        </view>
      </view>
      <view class="qui-cell">
        <view class="qui-cell__bd">
          <text class="qui-cell__txt-label">耳机</text>
        </view>
        <view class="qui-cell__ft">
          <switch checked="{{!mute_earphone}}"  bindchange="onEarphoneSwitchChange"/>
        </view>
      </view>
    </view>
    
    <view class="VolPChat-room">
      <p class="VolPChat-room__count" qq:if="{{count>0}}">当前房间人数：{{count}}人</p>
      <p class="VolPChat-room__count" qq:if="{{count===0}}">当前没有通话</p>
    </view>

    <view class="btn-area">
     <button open-type="share" id="share32" share-type="{{32}}">邀请好友进入房间</button>
      <button type="default" bindtap="exit">退出房间</button>
    </view>
  </view>

  <template is="foot"/>
</view>
