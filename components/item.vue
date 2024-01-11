<template>
    <div :style="flexStyle" style="width:0">
        <slot></slot>
    </div>
</template>
  
<script setup lang="ts">
import { computed } from 'vue';

const props = defineProps({
    flex: {
        type: [String, Number],
        default: 1,
    },
    padding: {
        type: String,
        default: '10px',
    }
});

const flexStyle = computed(() => {
    return {
        flex: props.flex.toString(),
        padding: props.padding,
        // width: 0 可根据需要保留或注释掉
    };
});
</script>
