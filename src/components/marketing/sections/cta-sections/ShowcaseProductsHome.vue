<template>
  <div class="py-10 mb-5" id="home">
    <div class="w-full max-w-7xl mx-auto mt-10 px-16 text-center">
      <h2
        v-if="main !== null"
        class="text-4xl font-semibold leading-tight font-heading"
      >
        {{ main.title }}
      </h2>
      <p v-if="main !== null" class="mb-6 text-gray-700">
        {{ main.subtitle }}
      </p>
    </div>

    <div class="grid grid-cols-1 gap-4 sm:grid-cols-3">
      <a
        v-for="(product, idx) in products"  
        target="_blank"
        :key="idx"
        :href="product.url"
        class="m-auto rounded overflow-hidden transition duration-500"
      >
        <div class="take_apart text-center pb-8 my-5">
          <g-image :src="img(product.image)" />
          <h3 class="font-bold text-2xl">{{ product.title }}</h3>
          <div v-html="product.content" class="pb-4 px-5 text-gray-600"></div>

          <div v-if="product.button">
            <a
              v-if="product.url.includes('http')"
              target="_blank"
              :href="product.url"
              class="bg-blue-900 text-sm learn-button hover:bg-blue-800 text-gray-100 px-12 py-2 mb-5 shadow rounded-full"
              >{{ product.button }}</a
            >
            <a
              v-else
              :href="product.url"
              class="bg-blue-900 text-sm learn-button hover:bg-blue-800 text-gray-100 px-12 py-2 mb-5 shadow rounded-full"
              >{{ product.button }}</a
            >
          </div>
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

.take_apart {
  background-color: #f5f5f5;
  max-height: 570px;
}
</style>
