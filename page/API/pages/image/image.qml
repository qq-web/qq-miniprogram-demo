<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'choose/previewImage'}}"/>

  <view class="page-bd">
    <form>
      <view class="qui-cell-group">
        <view class="qui-cell-group__bd">
          <view class="qui-cell">
            <view class="qui-cell__hd">
              <text class="qui-cell__txt-label">图片来源</text>
            </view>
            <view class="qui-cell__bd">
              <picker range="{{sourceType}}" bindchange="sourceTypeChange" value="{{sourceTypeIndex}}" mode="selector">
                <text class="qui-cell__txt">{{sourceType[sourceTypeIndex]}}</text>
              </picker>
            </view>
          </view>

          <view class="qui-cell">
            <view class="qui-cell__hd">
              <text class="qui-cell__txt-label">图片质量</text>
            </view>
            <view class="qui-cell__bd">
              <picker range="{{sizeType}}" bindchange="sizeTypeChange" value="{{sizeTypeIndex}}" mode="selector">
                <text class="qui-cell__txt">{{sizeType[sizeTypeIndex]}}</text>
              </picker>
            </view>
          </view>

          <view class="qui-cell">
            <view class="qui-cell__hd">
              <text class="qui-cell__txt-label">数量限制</text>
            </view>
            <view class="qui-cell__bd">
              <picker range="{{count}}" bindchange="countChange" value="{{countIndex}}" mode="selector">
                <text class="qui-cell__txt">{{count[countIndex]}}</text>
              </picker>
            </view>
          </view>
        </view>
      </view>

      <view class="qui-cell-group">
        <view class="qui-cell-group__bd">
          <view class="qui-cell">
            <view class="qui-cell__bd">
              <text class="qui-cell__txt-label">点击可预览选好的图片</text>
            </view>
            <view class="qui-cell__ft">
              <text class="qui-cell__txt-tips">{{imageList.length}}/{{count[countIndex]}}</text>
            </view>
          </view>

          <view class="qui-cell">
            <view class="qui-cell__bd">

              <view class="upload-wrap">
                <view class="upload-wrap__bd">
                  <block qq:for="{{imageList}}" qq:for-item="image">
                    <view class="upload-wrap__item">
                      <image class="upload-wrap__img"  src="{{image}}" data-src="{{image}}" bindtap="previewImage" mode="aspectFill" />
                    </view>
                  </block>

                  <view class="upload-wrap__item upload-wrap__item_default" bindtap="chooseImage">
                    <image class="upload-wrap__img" src="../../../../image/icon-add@2x.png" mode="aspectFill" />
                  </view>
                </view>
              </view>

            </view>
          </view>


        </view>
      </view>
    </form>
  </view>

  <template is="foot" />
</view>
