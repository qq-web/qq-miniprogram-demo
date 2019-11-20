<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container  grayPage">
  <template is="head" data="{{title: 'video'}}"/>

  <view class="page-bd">

    <view class="video-wrap">
      <video id="myVideo" class="video-wrap__bd" src="https://qzonestyle.gtimg.cn/qzone/qzact/act/external/qq-video/qq-video.mp4" binderror="videoErrorCallback" danmu-list="{{danmuList}}" enable-danmu danmu-btn show-center-play-btn='{{false}}' show-play-btn="{{true}}" controls></video>
    </view>

    <view class="qui-cell-group">
      <view class="qui-cell-group__bd">
        <view class="qui-cell qui-cell_input">
          <view class="qui-cell__hd">
            <text class="qui-cell__txt-label">弹幕内容</text>
          </view>
          <view class="qui-cell__bd">
            <view class="qui-input">
              <input class="qui-input__txt-input" type="text" placeholder="在此处输入弹幕内容" bindinput="bindInputBlur" placeholder-class="qui-input__txt-placeholder" />
            </view>
          </view>
        </view>
      </view>
    </view>

    <view class="btn-area">
      <button bindtap="bindSendDanmu" class="page-body-button" type="primary" formType="submit">发送弹幕</button>
    </view>

  </view>

  <template is="foot" />
</view>
