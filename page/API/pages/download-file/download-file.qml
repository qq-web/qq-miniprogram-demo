<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container">
  <template is="head" data="{{title: 'downloadFile'}}"/>

  <view class="page-bd">

    <image class="img" qq:if="{{imageSrc}}" src="{{imageSrc}}" mode="center" />
    <block qq:else>
      <view class="info-wrap">
        <text class="info-wrap__txt">点击按钮下载服务端示例图片</text>
      </view>

      <view class="btn-area">
        <button bindtap="downloadImage" type="primary">下载</button>
      </view>
    </block>

  </view>

  <template is="foot" />
</view>
