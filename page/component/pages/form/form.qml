<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'form'}}"/>

  <view class="page-bd">
    <form catchsubmit="formSubmit" catchreset="formReset">

      <view class="checkbox-wrap">
        <view class="checkbox-wrap__hd">
          <text class="checkbox-wrap__txt-title">switch</text>
        </view>
        <view class="checkbox-wrap__bd">
          <switch name="switch"/>
        </view>
      </view>

      <view class="checkbox-wrap">
        <view class="checkbox-wrap__hd">
          <text class="checkbox-wrap__txt-title">radio</text>
        </view>
        <view class="checkbox-wrap__bd">
          <radio-group name="radio">
            <label class="checkbox-wrap__label"><radio value="radio1"/>选项一</label>
            <label class="checkbox-wrap__label"><radio value="radio2"/>选项二</label>
          </radio-group>
        </view>
      </view>

      <view class="checkbox-wrap">
        <view class="checkbox-wrap__hd">
          <text class="checkbox-wrap__txt-title">checkbox</text>
        </view>
        <view class="checkbox-wrap__bd">
          <checkbox-group name="checkbox">
            <label class="checkbox-wrap__label"><checkbox value="checkbox1"/>选项一</label>
            <label class="checkbox-wrap__label"><checkbox value="checkbox2"/>选项二</label>
          </checkbox-group>
        </view>
      </view>

      <view class="checkbox-wrap">
        <view class="checkbox-wrap__hd">
          <text class="checkbox-wrap__txt-title">slider</text>
        </view>
        <view class="checkbox-wrap__bd">
          <slider value="50" name="slider" show-value ></slider>
        </view>
      </view>

      <view class="qui-cell-group">
        <view class="qui-cell-group__hd">
          <text class="qui-cell-group__txt-title">input</text>
        </view>
        <view class="qui-cell-group__bd">
          <view class="qui-cell">
            <view class="qui-cell__bd">
              <view class="qui-input">
                <input class="qui-input__txt-input" type="text" name="input" placeholder="这是一个输入框" placeholder-class="qui-input__txt-placeholder" />
              </view>
            </view>
          </view>
        </view>
      </view>


      <view class="btn-area">
        <button type="primary" formType="submit">Submit</button>
        <button formType="reset">Reset</button>
      </view>
    </form>
  </view>

  <template is="foot" />
</view>
