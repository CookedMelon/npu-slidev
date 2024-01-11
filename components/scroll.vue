<template>
    <div :class="['scroll-container', scrollClass]">
        <slot></slot>
    </div>
</template>
  
<script>
export default {
    props: {
        dir: {
            type: String,
            default: 'both', // 默认为 'both', 可选值为 'horizontal' 或 'vertical'
        },
    },
    computed: {
        scrollClass() {
            switch (this.dir) {
                case 'h':
                    return 'horizontal-scroll';
                case 'v':
                    return 'vertical-scroll';
                default:
                    return '';
            }
        },
    },
};
</script>
  
<style>
.scroll-container {
    width: 100%;
    /* 容器宽度 */
    height: 100%;
    /* 容器高度 */
    overflow: auto;
    /* 超出内容自动显示滚动条 */
}

.horizontal-scroll {
    overflow-y: hidden;
    /* 隐藏垂直滚动条 */
    overflow-x: scroll;
    /* 显示水平滚动条 */
}

.vertical-scroll {
    overflow-x: hidden;
    /* 隐藏水平滚动条 */
    overflow-y: scroll;
    /* 显示垂直滚动条 */
}

/* 自定义滚动条样式 */
.scroll-container::-webkit-scrollbar {
    width: 10px;
}

.scroll-container::-webkit-scrollbar-track {
    background: #f1f1f1;
}

.scroll-container::-webkit-scrollbar-thumb {
    background: #888;
}

.scroll-container::-webkit-scrollbar-thumb:hover {
    background: #555;
}
</style>
  