<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'input'}}"/>

  <view class="page-bd">
    <view class="qui-cell-group">
      <view class="qui-cell-group__hd">
        <text class="qui-cell-group__txt-title">可以自动聚焦的input</text>
      </view>
      <view class="qui-cell-group__bd">
        <view class="qui-cell">
          <view class="qui-cell__bd">
            <view class="qui-input">
              <input class="qui-input__txt-input" auto-focus placeholder="将会获取焦点" placeholder-class="qui-input__txt-placeholder" />
            </view>
          </view>
        </view>
      </view>
    </view>

    <view class="qui-cell-group">
      <view class="qui-cell-group__hd">
        <text class="qui-cell-group__txt-title">控制最大输入长度的input</text>
      </view>
      <view class="qui-cell-group__bd">
        <view class="qui-cell">
          <view class="qui-cell__bd">
            <view class="qui-input">
              <input class="qui-input__txt-input" maxlength="10" placeholder="最大输入长度为10" placeholder-class="qui-input__txt-placeholder" />
            </view>
          </view>
        </view>
      </view>
    </view>

    <view class="qui-cell-group">
      <view class="qui-cell-group__hd">
        <text class="qui-cell-group__txt-title">实时获取输入值：{{inputValue}}</text>
      </view>
      <view class="qui-cell-group__bd">
        <view class="qui-cell">
          <view class="qui-cell__bd">
            <view class="qui-input">
              <input class="qui-input__txt-input" maxlength="10" bindinput="bindKeyInput" placeholder="输入同步到view中(最大输入长度为10)" placeholder-class="qui-input__txt-placeholder" />
            </view>
          </view>
        </view>
      </view>
    </view>

    <view class="qui-cell-group">
      <view class="qui-cell-group__hd">
        <text class="qui-cell-group__txt-title">控制输入的input</text>
      </view>
      <view class="qui-cell-group__bd">
        <view class="qui-cell">
          <view class="qui-cell__bd">
            <view class="qui-input">
              <input class="qui-input__txt-input" bindinput="bindReplaceInput" placeholder="连续的两个1会变成2" placeholder-class="qui-input__txt-placeholder" />
            </view>
          </view>
        </view>
      </view>
    </view>

    <view class="qui-cell-group">
      <view class="qui-cell-group__hd">
        <text class="qui-cell-group__txt-title">控制键盘的input</text>
      </view>
      <view class="qui-cell-group__bd">
        <view class="qui-cell">
          <view class="qui-cell__bd">
            <view class="qui-input">
              <input class="qui-input__txt-input" bindinput="bindHideKeyboard" placeholder="输入123自动收起键盘" placeholder-class="qui-input__txt-placeholder" />
            </view>
          </view>
        </view>
      </view>
    </view>

    <view class="qui-cell-group">
      <view class="qui-cell-group__hd">
        <text class="qui-cell-group__txt-title">数字输入的input</text>
      </view>
      <view class="qui-cell-group__bd">
        <view class="qui-cell">
          <view class="qui-cell__bd">
            <view class="qui-input">
              <input class="qui-input__txt-input" type="number" placeholder="这是一个数字输入框" placeholder-class="qui-input__txt-placeholder" />
            </view>
          </view>
        </view>
      </view>
    </view>

    <view class="qui-cell-group">
      <view class="qui-cell-group__hd">
        <text class="qui-cell-group__txt-title">密码输入的input</text>
      </view>
      <view class="qui-cell-group__bd">
        <view class="qui-cell">
          <view class="qui-cell__bd">
            <view class="qui-input">
              <input class="qui-input__txt-input" password type="text" placeholder="这是一个密码输入框" placeholder-class="qui-input__txt-placeholder" />
            </view>
          </view>
        </view>
      </view>
    </view>

    <view class="qui-cell-group">
      <view class="qui-cell-group__hd">
        <text class="qui-cell-group__txt-title">带小数点的input</text>
      </view>
      <view class="qui-cell-group__bd">
        <view class="qui-cell">
          <view class="qui-cell__bd">
            <view class="qui-input">
              <input class="qui-input__txt-input" type="digit" placeholder="带小数点的数字键盘" placeholder-class="qui-input__txt-placeholder" />
            </view>
          </view>
        </view>
      </view>
    </view>

    <view class="qui-cell-group">
      <view class="qui-cell-group__hd">
        <text class="qui-cell-group__txt-title">身份证输入的input</text>
      </view>
      <view class="qui-cell-group__bd">
        <view class="qui-cell">
          <view class="qui-cell__bd">
            <view class="qui-input">
              <input class="qui-input__txt-input" type="idcard" placeholder="身份证输入键盘" placeholder-class="qui-input__txt-placeholder" />
            </view>
          </view>
        </view>
      </view>
    </view>

    <view class="qui-cell-group">
      <view class="qui-cell-group__hd">
        <text class="qui-cell-group__txt-title">控制占位符颜色的input</text>
      </view>
      <view class="qui-cell-group__bd">
        <view class="qui-cell">
          <view class="qui-cell__bd">
            <view class="qui-input">
              <input class="qui-input__txt-input" placeholder-style="color:#F76260" placeholder="占位符字体是红色的" placeholder-class="qui-input__txt-placeholder" />
            </view>
          </view>
        </view>
      </view>
    </view>
  </view>

  <template is="foot" />
</view>
