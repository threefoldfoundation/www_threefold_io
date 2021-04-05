<template>
  <div class="py-0 mb-5">
    <div class="w-full text-center">
      <h2
        v-if="main !== null && main.title"
        class="text-4xl font-semibold leading-tight font-heading"
      >
        {{ main.title }}
      </h2>
      <p
        v-if="main !== null && main.subtitle"
        class="mb-6 text-m tracking-widest text-gray-800"
      >
        {{ main.subtitle }}
      </p>
    </div>

    <div class="grid grid-cols-1 gap-4 sm:grid-cols-3 text-center">
      <a
        v-for="(product, idx) in products"
        target="_blank"
        :key="idx"
        :href="product.url"
        class="m-auto rounded overflow-hidden transition duration-500"
      >
        <div class="px-2 py-2">
          <g-image class="py-4" :src="img(product.image)" />
          <div class="font-bold text-xl mb-2">{{ product.title }}</div>
          <div v-html="product.content" class="text-gray-700 text-base"></div>
        </div>
      </a>
    </div>
    <div v-if="main.button" class="my-10 text-center">
      <!-- <a
        v-if="main.button"
        class="bg-blue-900 text-sm learn-button hover:bg-blue-800 text-gray-100 px-12 py-2 mr-5 rounded shadow rounded-full"
        :href="main.link"
        >{{ main.button }}</a
      > -->

      <a
        v-if="main.link.includes('http')"
        target="_blank"
        :href="main.link"
        class="bg-blue-900 text-sm uppercase learn-button hover:bg-blue-800 text-gray-100 px-12 py-2 mr-5 rounded shadow rounded-full"
        >{{ main.button }}</a
      >
      <g-link
        v-else
        :href="main.link"
        class="bg-blue-900 text-sm uppercase learn-button hover:bg-blue-800 text-gray-100 px-12 py-2 mr-5 rounded shadow rounded-full"
        >{{ main.button }}</g-link
      >
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
