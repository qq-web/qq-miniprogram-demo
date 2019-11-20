<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'open/get/Setting'}}"/>

  <view class="page-bd">
    <form class="page-section">
      <view class="qui-cell-group">
        <view class="qui-cell-group__bd">
          <view class="qui-cell">
            <view class="qui-cell__hd">
              <text class="qui-cell__txt-label">用户信息</text>
            </view>
            <view class="qui-cell__bd">
              <icon qq:if="{{setting['scope.userInfo']}}" class="icon-small" type="success_no_circle" size="23"></icon>
            </view>
          </view>

          <view class="qui-cell">
            <view class="qui-cell__hd">
              <text class="qui-cell__txt-label">地理位置</text>
            </view>
            <view class="qui-cell__bd">
              <icon qq:if="{{setting['scope.userLocation']}}" class="icon-small" type="success_no_circle" size="23"></icon>
            </view>
          </view>

          <view class="qui-cell">
            <view class="qui-cell__hd">
              <text class="qui-cell__txt-label">修改资料</text>
            </view>
            <view class="qui-cell__bd">
              <icon qq:if="{{setting['scope.personalize']}}" class="icon-small" type="success_no_circle" size="23"></icon>
            </view>
          </view>

          <view class="qui-cell">
            <view class="qui-cell__hd">
              <text class="qui-cell__txt-label">录音功能</text>
            </view>
            <view class="qui-cell__bd">
              <icon qq:if="{{setting['scope.record']}}" class="icon-small" type="success_no_circle" size="23"></icon>
            </view>
          </view>

          <view class="qui-cell">
            <view class="qui-cell__hd">
              <text class="qui-cell__txt-label">保存到相册</text>
            </view>
            <view class="qui-cell__bd">
              <icon qq:if="{{setting['scope.writePhotosAlbum']}}" class="icon-small" type="success_no_circle" size="23"></icon>
            </view>
          </view>

          <view class="qui-cell">
            <view class="qui-cell__hd">
              <text class="qui-cell__txt-label">摄像头</text>
            </view>
            <view class="qui-cell__bd">
              <icon qq:if="{{setting['scope.camera']}}" class="icon-small" type="success_no_circle" size="23"></icon>
            </view>
          </view>


        </view>
      </view>
    </form>

    <view class="btn-area">
      <button type="primary" bindtap="getSetting">获取小程序设置</button>
      <button open-type="openSetting" type="default">打开小程序设置</button>
    </view>
  </view>

  <template is="foot" />
</view>
