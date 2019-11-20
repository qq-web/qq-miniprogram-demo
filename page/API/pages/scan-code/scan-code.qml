<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'scanCode'}}"/>

  <view class="page-bd">

    <view class="qui-cell-group">
      <view class="qui-cell-group__hd">
        <text class="qui-cell-group__txt-title">扫码结果</text>
      </view>
      <view class="qui-cell-group__bd">
        <view class="qui-cell">
          <view class="qui-cell__bd">
            <text class="qui-cell__txt">{{result}}</text>
          </view>
        </view>
      </view>
      <view class="qui-cell-group__ft">
        <button type="primary" bindtap="scanCode">扫一扫</button>
      </view>
    </view>

  </view>

  <template is="foot" />
</view>
