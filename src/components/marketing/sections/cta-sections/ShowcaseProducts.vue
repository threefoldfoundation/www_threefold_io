<template>
  <div class="py-12 mb-5">
    <div class="w-full text-center">
      <p v-if="main !== null" class="text-sm tracking-widest text-gray-700">{{ main.subtitle }}</p>
      <h1 v-if="main !== null" class="text-4xl mt-2 mb-6 leading-tight font-heading">
        {{ main.title }}
      </h1>
    </div>

    <div class="grid grid-cols-1 gap-4 sm:grid-cols-2">

        <g-link
        v-for="(product, idx) in products"
        :key="idx"
        :to="product.url"
          class="m-auto rounded overflow-hidden transition duration-500"
        >
        
          <div class="px-2 py-2">
            <g-image class="py-4" :src="img(product.image)" />
            <!-- <div class="font-bold text-xl mb-2">{{ product.title }}</div> -->
            <p v-html="product.content" class="text-gray-700 text-base"></p>
          </div>
          
        </g-link>
      
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
