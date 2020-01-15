<import src="../../../common/head.qml"/>
<import src="../../../common/foot.qml"/>

<view class="container grayPage">
  <template is="head" data="{{title: 'RTMP推流'}}"/>

  <view class="page-bd">
    <view class="livepusher-box">
      <view class="qui-cell">
        <view class="qui-cell__bd">
          <text class="qui-cell__txt-label">推流获取</text>
          <view class="livepusher-button" bindtap="onScanQR">扫码读取</view>
          <view class="livepusher-button" bindtap="onNewUrlClick">自动生成</view>
        </view>
      </view>
      <view class="qui-cell">
        <view class="qui-cell__bd">
          <text class="qui-cell__txt-label">推流地址</text>
          <input class="livepusher-input" type="text" placeholder="rtmp://" focus="{{focusPush}}" bindtap='onPushInputTap' bindinput="onPushInputChange" value="{{pushUrl}}"/>
        </view>
        <view class="qui-cell__ft">
          <view class="btn-copy"><image bindtap="onCopyPushUrl" src="../../../../image/common/icon-copy.svg" /></view>
        </view>
      </view>
      <view class="qui-cell">
        <view class="qui-cell__bd">
          <text class="qui-cell__txt-label">播放地址</text>
          <input class="livepusher-input" type="text" placeholder="http://"  focus="{{focusPlay}}" bindtap='onPlayInputTap' bindinput="onPlayInputChange" value="{{playUrl}}"/>
        </view>
        <view class="qui-cell__ft">
          <view class="btn-copy"><image bindtap="onCopyPlayUrl" src="../../../../image/common/icon-copy.svg" /></view>
        </view>
      </view>
      <view class="qui-cell">
        <view class="qui-cell__bd">
          <text class="qui-cell__txt-label">画面质量</text>

          <radio-group class="radio-group" bindchange="modeRadioChange">
            <label class="livepusher-button-primary {{mode == item.value ? 'active': ''}}" qq:for="{{modeItems}}" qq:key="" >
              <radio value="{{item.value}}" checked="{{item.checked}}" /> {{item.title}}
            </label>
          </radio-group>
        </view>
      </view>
      <view class="qui-cell">
        <view class="qui-cell__bd">
          <text class="qui-cell__txt-label">画面方向</text>
          <radio-group class="radio-group" bindchange="orientationRadioChange">
            <label class="livepusher-button-primary {{orientation == item.value ? 'active': ''}}" qq:for="{{orientationItems}}" >
              <radio value="{{item.value}}" checked="{{item.checked}}" /> {{item.title}}
            </label>
          </radio-group>
        </view>
      </view>
      <view class="qui-cell">
        <view class="qui-cell__bd">
          <text class="qui-cell__txt-label">仅推声音</text>
          <switch class='item-switch' checked="{{!enableCamera}}" bindchange="switchChange" />
        </view>
      </view>
    </view>
    <view class="btn-area">
      <button type="primary" bindtap="startPush">开始</button>
    </view>
  </view>

  <template is="foot"/>
</view>
