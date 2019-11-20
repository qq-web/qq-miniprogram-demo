<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'open-data'}}"/>
  <view class="page-bd">
    <view class="avatar">
      <open-data class="avatar-img" type="userAvatarUrl" lang="zh_CN"></open-data>
    </view>
    
    <form>
      <view class="qui-cell-group">
        <view class="qui-cell-group__bd">
          <view class="qui-cell qui-cell_input">
            <view class="qui-cell__hd">
              <text class="qui-cell__txt-label">昵称</text>
            </view>
            <view class="qui-cell__bd">
              <open-data type="userNickName" lang="zh_CN"></open-data>
            </view>
          </view>

          <view class="qui-cell qui-cell_input">
            <view class="qui-cell__hd">
              <text class="qui-cell__txt-label">性别</text>
            </view>
            <view class="qui-cell__bd">
              <open-data type="userGender" lang="zh_CN"></open-data>
            </view>
          </view>

          <view class="qui-cell qui-cell_input">
            <view class="qui-cell__hd">
              <text class="qui-cell__txt-label">地区</text>
            </view>
            <view class="qui-cell__bd">
                <open-data class="country" type="userCountry" lang="zh_CN"></open-data>
                <open-data class="province" type="userProvince" lang="zh_CN"></open-data>
                <open-data class="city" type="userCity" lang="zh_CN"></open-data>
            </view>
          </view>

          <view class="qui-cell qui-cell_input">
            <view class="qui-cell__hd">
              <text class="qui-cell__txt-label">语言</text>
            </view>
            <view class="qui-cell__bd">
              <open-data class="country" type="userLanguage" lang="zh_CN"></open-data>
            </view>
          </view>

        </view>
      </view>
    </form>

  </view>
  <template is="foot" />
</view>
