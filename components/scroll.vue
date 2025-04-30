<!-- 传参为dir:[h|v]、[height]， 如果不设置height则默认充满高度到靠近页面底部 -->
<template>
    <div :class="[scrollClass]" :style="scrollStyle">
        <slot></slot>
    </div>
</template>
  
<script>
import { computed , nextTick } from 'vue';

export default {
    props: {
        dir: {
            type: String,
            default: 'both', // 默认为 'both', 可选值为 'h' 或 'v'
        },
        height: {
            type: String,
            default: '',
        },
        width: {
            type: String,
            default: '',
        },
    },
    data() {
        return {
            height: this.height || `${this.componentHeight}px`,
            elementTop: 0,
        };
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
        scrollStyle() {
            // 动态计算高度，确保下边与页面底部平齐
            return {
                height: this.height || `${this.componentHeight}px`,
                width: this.width
            };
        },
    },
    mounted() {
        if (!this.height) {
                this.updateHeight();
            }

    },
    beforeUnmount() {
    },
    methods: {
        // 获取组件对于#slidev-content底部的位置
        updateHeight() {
            // 获取 #slidev-content 的底部位置
            const slideContent = document.querySelector('#slide-content');
            const element = this.$el;  // 获取当前组件元素
            if (slideContent && element) {
                // slideContent的高度
                const slideContentHeight = slideContent.clientHeight;  // 获取#slidev-content的高度
                // console.log("slideContentHeight", slideContentHeight);


                // 计算element和slideContent顶部的间距
                const slideContentRect = slideContent.getBoundingClientRect();
                const slidevHeightInView = slideContentRect.height;  // 获取#slidev-content的高度


                const elementRect = element.getBoundingClientRect();
                this.elementTop = (elementRect.top + window.scrollY - slideContentRect.top + window.scrollY) / slidevHeightInView * slideContentHeight;  // 计算组件顶部相对于#slidev-content的顶部位置
                console.log("this.elementTop", this.elementTop);



                // 将2.5rem转换为px
                const rootFontSize = parseFloat(window.getComputedStyle(document.documentElement).fontSize);  // 获取根元素的字体大小
                const remToPx = 2.5 * rootFontSize;  // 将 2.5rem 转换为 px
                // console.log("2.5rem in px:", remToPx);
                

                // 计算组件的高度
                this.componentHeight = Math.round(slideContentHeight - this.elementTop - 40);
                console.log("this.componentHeight", this.componentHeight);
                // 设置组件的高度
                this.$el.style.height = `${this.componentHeight}px`;
                // console.log("this.$el.style.height", this.$el.style.height);

            }
        },
    },
};
</script>

<style>
.horizontal-scroll {
  overflow-y: hidden; /* 隐藏垂直滚动条 */
  overflow-x: auto; /* 显示水平滚动条 */
}

.vertical-scroll {
  overflow-x: hidden; /* 隐藏水平滚动条 */
  overflow-y: auto; /* 显示垂直滚动条 */
}
</style>