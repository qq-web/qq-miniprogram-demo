<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'makePhoneCall'}}"/>

  <view class="page-bd">

    <view class="qui-cell-group">
      <view class="qui-cell-group__hd">
        <text class="qui-cell-group__txt-title">请在下方输入电话号码</text>
      </view>
      <view class="qui-cell-group__bd">
        <view class="qui-cell">
          <view class="qui-cell__bd">
            <view class="qui-input">
              <input class="qui-input__txt-input" type="number" name="input" placeholder-class="qui-input__txt-placeholder" bindinput="bindInput" />
            </view>
          </view>
        </view>
      </view>
      <view class="qui-cell-group__ft">
        <button type="primary" bindtap="makePhoneCall" disabled="{{disabled}}">拨打</button>
      </view>
    </view>

  </view>

  <template is="foot" />
</view>
