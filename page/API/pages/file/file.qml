<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'saveFile'}}"/>

  <view class="page-bd">

    <view class="choose-wrap">
      <view class="choose-wrap__inner">
        <block qq:if="{{tempFilePath != ''}}">
          <image src="{{tempFilePath}}" class="choose-wrap__img" mode="aspectFit"></image>
        </block>
        <block qq:if="{{tempFilePath === '' && savedFilePath != ''}}">
          <image src="{{savedFilePath}}" class="choose-wrap__img" mode="aspectFit"></image>
        </block>
        <block qq:if="{{tempFilePath === '' && savedFilePath === ''}}">
          <image class="choose-wrap__icon" src="../../../../image/common/icon-add.svg" mode="aspectFill" bindtap="chooseImage" />
          <text class="choose-wrap__txt">请选择文件</text>
        </block>
      </view>
    </view>

    <view class="btn-area">
      <button type="primary" bindtap="saveFile">保存文件</button>
      <button bindtap="clear">删除文件</button>
    </view>

    <view class="page-section" hidden="true">
      <view class="page-body-info">
        <block qq:if="{{tempFilePath != ''}}">
          <image src="{{tempFilePath}}" class="image" mode="aspectFit"></image>
        </block>
        <block qq:if="{{tempFilePath === '' && savedFilePath != ''}}">
          <image src="{{savedFilePath}}" class="image" mode="aspectFit"></image>
        </block>
        <block qq:if="{{tempFilePath === '' && savedFilePath === ''}}">
          <view class="image-plus image-plus-nb" bindtap="chooseImage">
            <view class="image-plus-horizontal"></view>
            <view class="image-plus-vertical"></view>
          </view>
          <view class="image-plus-text">请选择文件</view>
        </block>
      </view>
      <view class="btn-area">
        <button type="primary" bindtap="saveFile">保存文件</button>
        <button bindtap="clear">删除文件</button>
      </view>
    </view>

  </view>

  <modal title="{{dialog.title}}" hidden="{{dialog.hidden}}" no-cancel bindconfirm="confirm">{{dialog.content}}</modal>

  <template is="foot" />
</view>
