<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'uploadFile'}}"/>

  <view class="page-bd">

    <view class="upload-wrap">
      <view class="upload-wrap__inner">
        <block qq:if="{{imageSrc}}">
          <image class="upload-wrap__img" src="{{imageSrc}}" mode="aspectFit" />
        </block>

        <block qq:else>
          <image class="upload-wrap__icon" src="../../../../image/common/icon-add.svg" mode="aspectFill" bindtap="chooseImage" />
          <text class="upload-wrap__txt">选择图片</text>
        </block>
      </view>
    </view>
    
  </view>

  <template is="foot" />
</view>
