<template>
  <div class="cp-loading-word">
    <span class="iconfont icon-shangla">{{ loadingWord }}</span>
  </div>
</template>

<script>
export default {
  props: {
    loadingWord: {
      type: String,
      default: ''
    }
  }
};
</script>

<style lang="stylus" scoped>
  @import url('//at.alicdn.com/t/font_342152_sf25eoela9f9lik9.css');
  .cp-loading-word{
    text-align: center;
    z-index: 100;
    width: 100%;
    height:1rem;
    line-height: 1rem;
    font-size: 0.24rem;
    span{
      vertical-align: middle;
      margin-left: 0.14rem;
      &:before{
        color:#666;
        margin-right: 0.1rem;
      }
    }
  }
</style>
