<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'get/set/ClipboardData'}}"/>

  <view class="page-bd">

    <view class="qui-cell-group">
      <view class="qui-cell-group__bd">
        <view class="qui-cell qui-cell_input">
          <view class="qui-cell__hd">
            <text class="qui-cell__txt-label">Copy</text>
          </view>
          <view class="qui-cell__bd">
            <view class="qui-input">
              <input class="qui-input__txt-input" type="text" name="key" value="{{value}}" bindinput="valueChanged" placeholder-class="qui-input__txt-placeholder" />
            </view>
          </view>
        </view>

        <view class="qui-cell qui-cell_input">
          <view class="qui-cell__hd">
            <text class="qui-cell__txt-label">Paste</text>
          </view>
          <view class="qui-cell__bd">
            <view class="qui-input">
              <input class="qui-input__txt-input" type="text" value="{{pasted}}" bindinput="valueChanged" placeholder-class="qui-input__txt-placeholder" />
            </view>
          </view>
        </view>
      </view>
    </view>


    <view class="btn-area">
      <button type="primary" bindtap="copy">复制</button>
      <button bindtap="paste">粘贴</button>
    </view>
  </view>

  <template is="foot" />
</view>
