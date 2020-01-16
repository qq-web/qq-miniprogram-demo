<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'picker'}}"/>

  <view class="picker-wrap">
    <view class="section">
      <view class="section__title">普通选择器</view>
      <picker bindchange="bindPickerChange" value="{{index}}" range="{{array}}">
        <view class="picker">
          <text class="picker-label">当前选择</text>
          <text class="picker-value">{{array[index]}}</text>
        </view>
      </picker>
    </view>
    <view class="section">
      <view class="section__title">多列选择器</view>
      <picker mode="multiSelector" bindchange="bindMultiPickerChange" bindcolumnchange="bindMultiPickerColumnChange" value="{{multiIndex}}" range="{{multiArray}}">
        <view class="picker">
          <text class="picker-label">当前选择</text>
          <text class="picker-value">{{multiArray[0][multiIndex[0]]}}，{{multiArray[1][multiIndex[1]]}}，{{multiArray[2][multiIndex[2]]}}</text>
        </view>
      </picker>
    </view>
    <view class="section">
      <view class="section__title">时间选择器</view>
      <picker mode="time" value="{{time}}" start="09:01" end="21:01" bindchange="bindTimeChange">
        <view class="picker">
          <text class="picker-label">当前选择</text>
          <text class="picker-value">{{time}}</text>
        </view>
      </picker>
    </view>

    <view class="section">
      <view class="section__title">日期选择器</view>
      <picker mode="date" value="{{date}}" start="2015-09-01" end="2017-09-01" bindchange="bindDateChange">
        <view class="picker">
          <text class="picker-label">当前选择</text>
          <text class="picker-value">{{date}}</text>
        </view>
      </picker>
    </view>
    <view class="section">
      <view class="section__title">省市区选择器</view>
      <picker mode="region" bindchange="bindRegionChange" value="{{region}}" custom-item="{{customItem}}">
        <view class="picker">
          <text class="picker-label">当前选择</text>
          <text class="picker-value">{{region[0]}}，{{region[1]}}，{{region[2]}}</text>
        </view>
      </picker>
    </view>
  </view>

  <template is="foot" />
</view>
