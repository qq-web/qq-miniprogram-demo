<import src="../../../common/head.qml"/>
<import src="../../../common/foot.qml"/>

<view class="container grayPage">
  <template is="head" data="{{title: 'liveplayer'}}"/>

  <view class="page-bd">
    <view class="liveplayer-box">
      <live-player id="video-livePlayer" mode="live"  muted="{{muted}}"  min-cache="1" max-cache="3" src="{{playUrl}}"
      bindstatechange="onPlayEvent" bindfullscreenchange="onFullScreenChange">
        <cover-view qq:if="{{fullScreen}}" style="width:100%; height: 70px; position:absolute;top:0">
          <button type="primary"  bindtap="toggleFullScreen">退出全屏</button>
        </cover-view>
      </live-player>
    </view>
    <view class="btn-area">
      <button type="primary" bindtap="onPlayClick">播放</button>
      <button type="primary" bindtap="onStopClick">停止</button>
      <button type="primary" bindtap="onMuteClick">静音</button>
      <button type="primary" bindtap="togglePause">暂停</button>
      <button type="primary" bindtap="togglePause">恢复</button>
      <button type="primary" bindtap="toggleFullScreen">进入全屏</button>
      <button type="primary" bindtap="toggleFullScreen">退出全屏</button>
      <button type="primary" bindtap="onSnapshotClick">截图</button>
      <view class="button-preview__disabled">预览</view>
      <image qq:if="{{snapshotUrl}}" style="width:100%; height:225px;" src="{{snapshotUrl}}" mode="aspectFit" />
    </view>
  </view>

  <template is="foot"/>
</view>
