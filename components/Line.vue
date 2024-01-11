<template>
    <div>
        <!-- 水平虚线 -->
        <div v-if="dir === 'h'" class="horizontal-line"></div>
        <!-- 垂直虚线 -->
        <div v-else-if="dir === 'v'" class="vertical-line"></div>
    </div>
</template>
  
<script setup lang="ts">
import { computed } from 'vue';

const props = defineProps({
    dir: {
        type: String,
        default: 'h', // 默认为水平方向
    },
});

const dir = props.dir;
</script>
  
<style>
.horizontal-line {
    border-top: 2px dashed #808080;
    width: 100%;
    /* 确保横线横跨整个容器 */
}

.vertical-line {
    border-left: 2px dashed #808080;
    height: 100%;
    /* 确保竖线延伸整个容器的高度 */
}
</style>
  