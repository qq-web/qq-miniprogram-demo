<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'chooseAddress'}}"/>
  <view class="page-bd">  
    <form>
      <view class="qui-cell-group">
        <view class="qui-cell-group__bd">
          <view class="qui-cell qui-cell_input">
            <view class="qui-cell__hd">
              <text class="qui-cell__txt-label label">收货人姓名</text>
            </view>
            <view class="qui-cell__bd">
                <text class="qui-cell__txt-label">{{address.userName}}</text>
            </view>
          </view>

          <view class="qui-cell qui-cell_input">
            <view class="qui-cell__hd">
              <text class="qui-cell__txt-label label">邮编</text>
            </view>
            <view class="qui-cell__bd">
                <text class="qui-cell__txt-label">{{address.postalCode}}</text>
            </view>
          </view>

          <view class="qui-cell qui-cell_input">
            <view class="qui-cell__hd">
              <text class="qui-cell__txt-label label">地区</text>
            </view>
            <view class="qui-cell__bd">
                <text class="qui-cell__txt-label">{{address.provinceName}}</text>
                <text class="qui-cell__txt-label">{{address.cityName}}</text>
                <text class="qui-cell__txt-label">{{address.countyName}}</text>

            </view>
          </view>

          <view class="qui-cell qui-cell_input">
            <view class="qui-cell__hd">
              <text class="qui-cell__txt-label label">收货地址</text>
            </view>
            <view class="qui-cell__bd">
                <text class="qui-cell__txt-label">{{address.detailInfo}}</text>
            </view>
          </view>
          <view class="qui-cell qui-cell_input">
            <view class="qui-cell__hd">
              <text class="qui-cell__txt-label label">国家码</text>
            </view>
            <view class="qui-cell__bd">
                <text class="qui-cell__txt-label">{{address.nationalCode}}</text>
            </view>
          </view>
          <view class="qui-cell qui-cell_input">
            <view class="qui-cell__hd">
              <text class="qui-cell__txt-label label">手机号码</text>
            </view>
            <view class="qui-cell__bd">
                <text class="qui-cell__txt-label">{{address.telNumber}}</text>
            </view>
          </view>
        </view>
      </view>
    </form>
    <view class="btn-area">
      <button type="primary" bindtap="getAddress">获取收货地址</button>
    </view>
  </view>
  <template is="foot" />
</view>
