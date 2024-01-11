<script setup lang="ts">
import { computed } from 'vue'
import { handleBackground } from '../layoutHelper'
const props = defineProps({
    image: {
        type: String,
    },
    class: {
        type: String,
    },
})
const style = computed(() => handleBackground(props.image))
</script>

<template>
    <div class="grid grid-cols-2 w-full h-full">
        <div class="my-14 ml-14" :style="style"></div>
        <div class="slidev-layout default image-left my-auto" :class="props.class" style="word-wrap: break-word;">
            <slot />
        </div>
    </div>
</template>
