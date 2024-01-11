<script setup lang="ts">
import { ref, computed } from 'vue'

const props = defineProps({
    type: {
        default: 0,
    },
    margin: {
        type: String,
        default: '5px', // 设置默认 margin 值
    }
})

const type = ref(props.type)
const marginStyle = computed(() => ({
    margin: props.margin
}))
</script>

<template>
    <div :style="marginStyle">
        <!-- 横线 -->
        <div v-if="type == 1" class="horizontal-line"></div>
        <!-- 竖线 -->
        <div v-else class="vertical-line"></div>
    </div>
</template>

<style>
.horizontal-line {
    border-top: 2px dashed #808080;
}

.vertical-line {
    border-left: 2px dashed #808080;
    height: 100%;
}
</style>
