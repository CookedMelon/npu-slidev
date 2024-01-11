<script setup lang="ts">
import { NCarousel, NCarouselItem } from 'naive-ui'
import { ref, computed } from 'vue'
const props = defineProps({
    imageSrcList: {
        type: Array,
        default: () => [
        ]
    }
})
const imageSrcList = ref(props.imageSrcList)
// const imageSrcList = [
//     "https://naive-ui.oss-cn-beijing.aliyuncs.com/carousel-img/carousel1.jpeg",
//     "https://naive-ui.oss-cn-beijing.aliyuncs.com/carousel-img/carousel2.jpeg",
//     "https://naive-ui.oss-cn-beijing.aliyuncs.com/carousel-img/carousel3.jpeg",
//     "https://naive-ui.oss-cn-beijing.aliyuncs.com/carousel-img/carousel4.jpeg"
// ]
</script>
<template>
    <n-carousel direction="vertical" dot-placement="right" mousewheel style="width: 100%; height: 240px">
        <img v-for="(src, index) in imageSrcList" :key="index" class="carousel-img" :src="src">
    </n-carousel>
</template>
  
<style scoped>
.carousel-img {
    width: 100%;
    height: 240px;
    object-fit: cover;
}
</style>