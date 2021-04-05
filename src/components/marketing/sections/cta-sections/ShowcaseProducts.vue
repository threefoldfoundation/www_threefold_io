<template>
  <div class="py-0 mb-5">
    <div class="w-full text-center">
      <h2
        v-if="main !== null"
        class="text-4xl font-semibold leading-tight font-heading"
      >
        {{ main.title }}
      </h2>
      <p v-if="main !== null" class="mb-6 text-m tracking-widest text-gray-800">
        {{ main.subtitle }}
      </p>
    </div>

    <div class="grid grid-cols-1 gap-4 sm:grid-cols-2">
      <a
        v-for="(product, idx) in products"
        target="_blank"
        :key="idx"
        :href="product.url"
        class="m-auto rounded overflow-hidden transition duration-500"
      >
        <div class="px-2 py-2">
          <g-image class="py-4" :src="img(product.image)" />
          <!-- <div class="font-bold text-xl mb-2">{{ product.title }}</div> -->
          <p v-html="product.content" class="text-gray-700 text-base"></p>
        </div>
      </a>
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
.bannerFondo {
  height: 400px;
}
</style>
