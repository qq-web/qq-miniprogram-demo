<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'chooseVideo'}}"/>

  <view class="page-bd">

    <view class="qui-cell-group">
      <view class="qui-cell-group__bd">
        <view class="qui-cell">
          <view class="qui-cell__hd">
            <text class="qui-cell__txt-label">视频来源</text>
          </view>
          <view class="qui-cell__bd">
            <picker range="{{sourceType}}" bindchange="sourceTypeChange" value="{{sourceTypeIndex}}">
              <text class="qui-cell__txt">{{sourceType[sourceTypeIndex]}}</text>
            </picker>
          </view>
        </view>

        <view class="qui-cell">
          <view class="qui-cell__hd">
            <text class="qui-cell__txt-label">摄像头</text>
          </view>
          <view class="qui-cell__bd">
            <picker range="{{camera}}" bindchange="cameraChange" value="{{cameraIndex}}">
              <text class="qui-cell__txt">{{camera[cameraIndex]}}</text>
            </picker>
          </view>
        </view>

        <view class="qui-cell">
          <view class="qui-cell__hd">
            <text class="qui-cell__txt-label">拍摄长度</text>
          </view>
          <view class="qui-cell__bd">
            <picker range="{{duration}}" bindchange="durationChange" value="{{durationIndex}}">
              <text class="qui-cell__txt">{{duration[durationIndex]}}</text>
            </picker>
          </view>
        </view>
      </view>
    </view>

    <view class="video-wrap">
      <view class="video-wrap__inner">
        <block qq:if="{{src}}">
          <video src="{{src}}" class="video"></video>
        </block>
        <block qq:else>
          <image class="video-wrap__icon" src="../../../../image/common/icon-add.svg" mode="aspectFill" bindtap="chooseVideo" />
          <text class="video-wrap__txt">添加视频</text>
        </block>
      </view>
    </view>

  </view>
</view>
