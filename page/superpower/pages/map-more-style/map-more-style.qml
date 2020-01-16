<import src="../../../common/head.qml"/>
<import src="../../../common/foot.qml"/>

<view class="container grayPage">
  <template is="head" data="{{title: 'map'}}"/>

  <view class="page-bd">
    <view class="map-wrap">
      <view class="map-wrap__title">经典</view>
      <!-- map添加subkey属性，由产品提供 -->
      <map id="map" longitude="113.93041000000001" latitude="22.533319999999996" scale="14"  bindcontroltap="controltap" bindmarkertap="markertap" bindregionchange="regionchange" show-location></map>

      <view class="map-wrap__title mt32">墨渊</view>
      <!-- map添加subkey属性，由产品提供 -->
      <map id="map" longitude="113.93041000000001" latitude="22.533319999999996" scale="14"  bindcontroltap="controltap" bindmarkertap="markertap" bindregionchange="regionchange" show-location></map>
    </view>
  </view>

  <template is="foot"/>
</view>
