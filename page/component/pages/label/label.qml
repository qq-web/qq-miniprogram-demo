<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'label'}}"/>

  <view class="page-bd">
    <view class="checkbox-wrap checkbox-wrap_1">
      <view class="checkbox-wrap__hd">
        <text class="checkbox-wrap__txt-title">表单组件在label内</text>
      </view>
      <view class="checkbox-wrap__bd">
        <checkbox-group class="group" bindchange="checkboxChange">
          <view class="checkbox-wrap__list" qq:for="{{checkboxItems}}">
            <label class="checkbox-wrap__label">
              <checkbox value="{{item.name}}" checked="{{item.checked}}"></checkbox>
              <text class="checkbox-wrap__label-txt">{{item.value}}</text>
            </label>
          </view>
        </checkbox-group>
      </view>
    </view>

    <view class="checkbox-wrap checkbox-wrap_2">
      <view class="checkbox-wrap__hd">
        <text class="checkbox-wrap__txt-title">label用for标识表单组件</text>
      </view>
      <view class="checkbox-wrap__bd">
        <radio-group class="group" bindchange="radioChange">
          <view class="checkbox-wrap__list" qq:for="{{radioItems}}">
            <radio id="{{item.name}}" value="{{item.name}}" checked="{{item.checked}}"></radio>
            <label class="checkbox-wrap__label" for="{{item.name}}"><text class="checkbox-wrap__label-txt">{{item.name}}</text></label>
          </view>
        </radio-group>
      </view>
    </view>

    <view class="checkbox-wrap checkbox-wrap_3">
      <view class="checkbox-wrap__hd">
        <text class="checkbox-wrap__txt-title">label内有多个时选中第一个</text>
      </view>
      <view class="checkbox-wrap__bd">
        <label class="checkbox-wrap__label checkbox-wrap__list">
          <checkbox class="checkbox-wrap__label-item">选项一</checkbox>
          <checkbox class="checkbox-wrap__label-item">选项二</checkbox>
          <text class="checkbox-wrap__label-txt">点击该label下的文字默认选中第一个checkbox</text>
        </label>
        
      </view>
    </view>
  </view>

  <template is="foot" />
</view>
