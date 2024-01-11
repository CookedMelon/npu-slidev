<template>
    <div :class="flexClass" style="normal">
        <slot></slot>
    </div>
</template>
  
<script setup lang="ts">
import { ref, computed } from 'vue'

const props = defineProps({
    type: {
        type: String,
        default: 'row',
        validator: (value: string) => {
            return ['col', 'row'].includes(value);
        },
    }
})

const flexClass = computed(() => {
    return {
        'flex-col': props.type === 'col',
        'flex-row': props.type === 'row'
    };
});
</script>
  
<style>
.normal {
    /* width: 100% */
}

.flex-col {
    display: flex;
    flex-direction: column;
}

.flex-row {
    display: flex;
    flex-direction: row;
}
</style>
  