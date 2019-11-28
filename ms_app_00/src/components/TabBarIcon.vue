<template>
    <div>
        <!-- 底部导航栏 -->
        <!-- 第一个变量focused选中true -->
        <!-- 选择选中图片/否则显示默认 -->
        <img :src="focused?normalImage:selectImage" class="imgstyle" alt="">
    </div>
</template>
<script>
export default {
    props:{
        focused:false,
        selectImage:{default:""},
        normalImage:{default:""}
    }
}
</script>
<style scoped>
.imgstyle{
    width: 30px;
    height: 30px;
}
</style>