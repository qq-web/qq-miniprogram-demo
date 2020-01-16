<import src="../../../common/head.qml"/>
<import src="../../../common/foot.qml"/>

<view class="container grayPage">
  <template is="head" data="{{title: 'map'}}"/>

  <view class="page-bd">
    <view class="map-wrap">
      <!-- <view class="map-wrap__title">当前组件使用了白浅地图样式，查看<navigator class="map-wrap__title-link" url="/page/superpower/pages/map-more-style/map-more-style" hover-class="none">更多样式</navigator></view> -->
      <map id="map" 
      bindcontroltap="controltap" 
      bindmarkertap="markertap" 
      bindregionchange="regionchange" 
      show-location

      longitude="{{longitude}}" 
      latitude="{{latitude}}" 
      enable-3D="{{enable3d}}"
      show-compass="{{showCompass}}"
      enable-overlooking="{{enableOverlooking}}"
      enable-rotate="{{enableRotate}}"
      polygons="{{drawPolygon ? polygons : []}}"
      scale="{{18}}"
      enable-zoom="{{enableZoom}}"
      enable-scroll="{{enableScroll}}"
      enable-satellite="{{enableSatellite}}"
      enable-traffic="{{enableTraffic}}"
      markers="{{markers}}"
      ></map>
    </view>
    <view class="btn-area">
      <button bindtap="toggle3d">{{ !enable3d ? '启用' : '关闭'}}3D效果</button>
      <button bindtap="toggleShowCompass">{{ !showCompass ? '显示' : '关闭' }}显示指南针</button>
      <button bindtap="toggleOverlooking">{{ !enableOverlooking ? '开启' : '关闭' }}俯视支持</button>
      <button bindtap="toggleRotate">{{ !enableRotate ? '开启' : '关闭' }}旋转支持</button>
      <button bindtap="togglePolygon">{{ !drawPolygon ? '绘制' : '清除' }}多边形</button>
      <button bindtap="toggleZoom">{{ !enableZoom ? '开启' : '关闭' }}缩放支持</button>
      <button bindtap="toggleScroll">{{ !enableScroll ? '开启' : '关闭' }}拖动支持</button>
      <button bindtap="toggleSatellite">{{ !enableSatellite ? '开启' : '关闭' }}卫星图</button>
      <button bindtap="toggleTraffic">{{ !enableTraffic ? '开启' : '关闭' }}实时路况</button>
    </view>
  </view>

  <template is="foot"/>
</view>
