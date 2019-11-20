<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'getSystemInfo'}}"/>

  <view class="page-bd">
    <view class="page-section">

      <view class="qui-cell-group">
        <view class="qui-cell-group__bd">
          <view class="qui-cell">
            <view class="qui-cell__hd">
              <text class="qui-cell__txt-label">手机品牌</text>
            </view>
            <view class="qui-cell__bd">
              <view class="qui-cell__input">
                <input class="qui-cell__txt-input" type="text" disabled="{{true}}" placeholder="未获取" placeholder-class="qui-input__txt-placeholder" value="{{systemInfo.brand}}" />
              </view>
            </view>
          </view>

          <view class="qui-cell">
            <view class="qui-cell__hd">
              <text class="qui-cell__txt-label">手机型号</text>
            </view>
            <view class="qui-cell__bd">
              <view class="qui-cell__input">
                <input class="qui-cell__txt-input" type="text" disabled="{{true}}" placeholder="未获取" placeholder-class="qui-input__txt-placeholder" value="{{systemInfo.model}}" />
              </view>
            </view>
          </view>

          <view class="qui-cell">
            <view class="qui-cell__hd">
              <text class="qui-cell__txt-label">QQ语言</text>
            </view>
            <view class="qui-cell__bd">
              <view class="qui-cell__input">
                <input class="qui-cell__txt-input" type="text" disabled="{{true}}" placeholder="未获取" placeholder-class="qui-input__txt-placeholder" value="{{systemInfo.language}}" />
              </view>
            </view>
          </view>

          <view class="qui-cell">
            <view class="qui-cell__hd">
              <text class="qui-cell__txt-label">QQ版本</text>
            </view>
            <view class="qui-cell__bd">
              <view class="qui-cell__input">
                <input class="qui-cell__txt-input" type="text" disabled="{{true}}" placeholder="未获取" placeholder-class="qui-input__txt-placeholder" value="{{systemInfo.version}}" />
              </view>
            </view>
          </view>

          <view class="qui-cell">
            <view class="qui-cell__hd">
              <text class="qui-cell__txt-label">屏幕宽度</text>
            </view>
            <view class="qui-cell__bd">
              <view class="qui-cell__input">
                <input class="qui-cell__txt-input" type="text" disabled="{{true}}" placeholder="未获取" placeholder-class="qui-input__txt-placeholder" value="{{systemInfo.windowWidth}}" />
              </view>
            </view>
          </view>

          <view class="qui-cell">
            <view class="qui-cell__hd">
              <text class="qui-cell__txt-label">屏幕高度</text>
            </view>
            <view class="qui-cell__bd">
              <view class="qui-cell__input">
                <input class="qui-cell__txt-input" type="text" disabled="{{true}}" placeholder="未获取" placeholder-class="qui-input__txt-placeholder" value="{{systemInfo.windowHeight}}" />
              </view>
            </view>
          </view>

          <view class="qui-cell">
            <view class="qui-cell__hd">
              <text class="qui-cell__txt-label">DPR</text>
            </view>
            <view class="qui-cell__bd">
              <view class="qui-cell__input">
                <input class="qui-cell__txt-input" type="text" disabled="{{true}}" placeholder="未获取" placeholder-class="qui-input__txt-placeholder" value="{{systemInfo.pixelRatio}}" />
              </view>
            </view>
          </view>

        </view>
      </view>


      <view class="btn-area">
        <button type="primary" bindtap="getSystemInfo">获取手机系统信息</button>
      </view>
    </view>
  </view>

  <template is="foot" />
</view>
