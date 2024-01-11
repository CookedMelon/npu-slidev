# naive-img

powered by **naive-ui**

<div class="flex row">
<div style="flex:1">
    <my-carousel style="flex:1" :imageSrcList='[
                "/image8.png",
                "/image14.png",
                "/image21.jpg",
                "/image37.png"
            ]'
    ></my-carousel>
click the image and view it ↓
    <n-image-group>
        <my-space class="bg-blue p-1 justify-content-between">
            <my-image
            width="100"
            src="/image6.png"
            />
            <my-image
            width="100"
            src="/image10.png"
            />
            <my-image
            width="100"
            src="/image6.png"
            />
        </my-space>
    </n-image-group>
</div>
<div style="flex:1">
```html
<my-carousel style="flex:1" :imageSrcList='[
            "/image8.png",
            "/image14.png",
            "/image21.jpg",
            "/image37.png"
        ]'
></my-carousel>
click the image and view it
<n-image-group>
    <my-space class="bg-blue p-1 justify-content-between">
        <my-image width="100" src="/image6.png" />
        <my-image width="100" src="/image10.png" />
        <my-image width="100" src="/image6.png" />
    </my-space>
</n-image-group>
```
</div>

</div>