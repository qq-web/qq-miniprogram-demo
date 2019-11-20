<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'setNaivgationBarTitle'}}"/>

  <form class="page-bd" bindsubmit="setNaivgationBarTitle">

    <view class="qui-cell-group">
      <view class="qui-cell-group__hd">
        <text class="qui-cell-group__txt-title">设置导航栏标题</text>
      </view>
      <view class="qui-cell-group__bd">
        <view class="qui-cell qui-cell_input">
          <view class="qui-cell__hd">
            <text class="qui-cell__txt-label">设置标题</text>
          </view>
          <view class="qui-cell__bd">
            <view class="qui-input">
              <input class="qui-input__txt-input" type="text" placeholder="请输入页面标题并点击设置即可" name="title" placeholder-class="qui-input__txt-placeholder" />
            </view>
          </view>
        </view>
      </view>
    </view>

    <view class="qui-cell-group">
      <view class="qui-cell-group__hd">
        <text class="qui-cell-group__txt-title">设置导航栏标题颜色</text>
      </view>
      <view class="qui-cell-group__bd">
        <view class="color-wrap">
          <view class="color-wrap__item color-wrap__txt-color-1 {{selectedFontButton === '1' ? 'color-wrap__item_selected' : ''}}" id="fontButton1" bindtap="setFontColor"></view>
          <view class="color-wrap__item color-wrap__txt-color-2 {{selectedFontButton === '2' ? 'color-wrap__item_selected' : ''}}" id="fontButton2" bindtap="setFontColor"></view>
        </view>
      </view>
    </view>

    <view class="qui-cell-group">
      <view class="qui-cell-group__hd">
        <text class="qui-cell-group__txt-title">设置导航栏底色(实际开发中可自由选择)</text>
      </view>
      <view class="qui-cell-group__bd">
        
        <view class="color-wrap">
          <view class="color-wrap__item color-wrap__bg-color-1 {{selectedButton === '1' ? 'color-wrap__item_selected' : ''}}" id="button1" bindtap="setColor"></view>
          <view class="color-wrap__item color-wrap__bg-color-2 {{selectedButton === '2' ? 'color-wrap__item_selected' : ''}}" id="button2" bindtap="setColor"></view>
          <view class="color-wrap__item color-wrap__bg-color-3 {{selectedButton === '3' ? 'color-wrap__item_selected' : ''}}" id="button3" bindtap="setColor"></view>
          <view class="color-wrap__item color-wrap__bg-color-4 {{selectedButton === '4' ? 'color-wrap__item_selected' : ''}}" id="button4" bindtap="setColor"></view>
          <view class="color-wrap__item color-wrap__bg-color-5 {{selectedButton === '5' ? 'color-wrap__item_selected' : ''}}" id="button5" bindtap="setColor"></view>
          <view class="color-wrap__item color-wrap__bg-color-6 {{selectedButton === '6' ? 'color-wrap__item_selected' : ''}}" id="button6" bindtap="setColor"></view>
        </view>
      </view>
    </view>



    <view class="btn-area">
      <button type="primary" formType="submit">设置</button>
    </view>
  </form>

  <template is="foot" />
</view>
