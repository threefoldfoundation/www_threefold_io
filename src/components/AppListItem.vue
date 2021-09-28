<template>
  <div class="flex flex-wrap with-large pt-8 pb-8 mx-4 sm:-mx-4">
    <div class="text-center mx-auto my-4">
      <h1 class="text-4xl text-gray-900 font-light sm:text-9xl sm:leading-10">
        {{ main.title }} <span class="font-extrabold">{{ main.slogan }}</span>
      </h1>
      <div
        class="mt-3 max-w-2xl mx-auto text-gray-600 sm:mt-4"
        v-html="main.content"
      ></div>
    </div>
    <div
      class="flex w-1/2 app px-0 sm:px-4 pb-4"
      v-for="product in products"
      :key="product.id"
    >
      <div class="post-card-image-link px-1">
        <g-link :to="product.link">
          <g-image
            :src="img(product.image)"
            :alt="product.title"
            class="post-card-image"
          ></g-image>
        </g-link>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["products", "main"],
  methods: {
    img(image) {
      if (!image) return "";
      if (image.src) return image.src;
      return image;
    },
  },
};
</script>

<style scoped>
.post-card-excerpt {
  font-family: "Roboto", sans-serif;
  line-height: 1.2;
}
.post-card-image {
  max-width: 100%;
  height: auto;
}
.app:last-child {
  width: auto !important;
}
@media (max-width: 768px) {
  .app {
    flex: 1 1 auto;
  }
}
</style>
