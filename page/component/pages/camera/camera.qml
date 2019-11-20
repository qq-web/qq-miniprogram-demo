<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'camera'}}"/>

  <view class="page-bd">
    <view class="camera-wrap">
      <camera
        flash="off"
        device-position="{{position}}"
        binderror="error"
      >
      </camera>
      <view class="btn-area first-btn">
      <button type="primary" bindtap="togglePosition">切换摄像头</button>
      </view>
      <view class="btn-area">
        <button type="primary" bindtap="takePhoto">拍照</button>
      </view>
      <view class="btn-area">
        <button type="primary" bindtap="startRecord">开始录像</button>
      </view>
      <view class="btn-area">
        <button type="primary" bindtap="stopRecord">结束录像</button>
      </view>
      <view class="btn-area">
        <navigator url="/page/component/pages/camera-scan-code/camera-scan-code">
          <button type="primary">扫描一维码</button>
        </navigator>
      </view>
      <view class="preview-tips">预览</view>
      <image qq:if="{{src}}" mode="widthFix" class="photo" src="{{src}}"></image>
      <video qq:if="{{videoSrc}}" class="video" src="{{videoSrc}}"></video>
    </view>
  </view>

  <template is="foot" />
</view>
