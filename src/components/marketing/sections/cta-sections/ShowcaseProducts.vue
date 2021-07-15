<template>
  <div class="py-0 mb-5 mx-4">
    <div class="text-center mx-auto my-4" v-if="id == 'why'"> 
      <h1 class="text-4xl text-gray-900 font-light sm:text-9xl sm:leading-10">
        {{ main.title }} <span class="font-extrabold">{{ main.subtitle }}</span>
      </h1>
      <div
        class="mt-3 max-w-2xl mx-auto text-gray-600 sm:mt-4"
        v-html="main.content"
      ></div>
    </div>
    <div class="w-full text-center" v-else>
      <h2
        v-if="main !== null && main.title"
        class="text-4xl font-semibold leading-tight font-heading uppercase"
      >
        {{ main.title }}
      </h2>
      <p v-if="main !== null && main.subtitle" class="mb-6 text-gray-600">
        {{ main.subtitle }}
      </p>
    </div>

    <!-- token -->
    <div
      class="grid grid-cols-1 gap-4 sm:grid-cols-3 text-center"
      v-if="id == 'token'"
    >
      <a 
        v-for="(product, idx) in products"
        target="_blank"
        :key="idx"
        :href="product.url"
        class="m-auto rounded overflow-hidden transition duration-500"
      >
        <div class="px-2 py-2">
          <g-image class="py-4" :src="img(product.image)" />
          <div class="font-bold text-xl mb-2 uppercase">
            {{ product.title }}
          </div>
          <div v-html="product.content" class="text-gray-600"></div>
        </div>
      </a>
    </div>

    <!-- universe -->
    <div
      class="grid grid-cols-1 gap-4 sm:grid-cols-2 text-center"
      v-else-if="id == 'universe'"
    >
      <div
        v-for="(product, idx) in products"
        target="_blank"
        :key="idx"
        :href="product.link"
        class="m-auto rounded overflow-hidden transition duration-500 bg-gray-100"
      >
        <div>
          <g-image :src="img(product.image)" />
          <div class="font-bold text-xl pt-5 mx-4">
            {{ product.title }}
          </div>
          <div v-html="product.content" class="py-2 text-gray-600 mx-4"></div>
          <div v-if="product.button" class="mb-2 py-5 text-center">
            <a
              v-if="product.link.includes('http')"
              target="_blank"
              :href="product.link"
              class="bg-blue-900 text-sm learn-button hover:bg-blue-800 text-gray-100 px-12 py-2 mr-5 shadow rounded-full"
              >{{ product.button }}</a
            >
            <a
              v-else
              :href="product.link"
              class="bg-blue-900 text-sm learn-button hover:bg-blue-800 text-gray-100 px-12 py-2 mr-5 shadow rounded-full"
              >{{ product.button }}</a
            >
          </div>
        </div>
      </div>
    </div>

    <!-- why -->
    <div
      class="grid grid-cols-1 gap-4 sm:grid-cols-2 text-center"
      v-else-if="id == 'why'"
    >
      <div
        v-for="(product, idx) in products"
        target="_blank"
        :key="idx"
        :href="product.link"
        class="m-auto rounded overflow-hidden transition duration-500"
      >
        <div>
          <g-image :src="img(product.image)" />
          <div class="product font-bold text-2xl pt-5">
            {{ product.title }}
          </div>
          <div v-html="product.content" class="product p-5 text-gray-600"></div>
          <div v-if="product.button" class="product mb-3 py-5 text-center">
            <a
              v-if="product.link.includes('http')"
              target="_blank"
              :href="product.link"
              class="bg-gray-800 text-sm learn-button border-gray-900 text-white px-12 py-2 mr-5 shadow rounded-full"
              >{{ product.button }}</a
            >
            <a
              v-else
              :href="product.link"
              class="bg-gray-800 text-sm learn-button border-gray-900 text-white px-12 py-2 mr-5 shadow rounded-full"
              >{{ product.button }}</a
            >
          </div>
        </div>
      </div>
    </div>

    <div class="grid grid-cols-1 gap-4 sm:grid-cols-3 text-center" v-else>
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
        class="bg-blue-900 text-sm learn-button hover:bg-blue-800 text-gray-100 px-12 py-2 mr-5 rounded shadow rounded-full"
        >{{ main.button }}</a
      >
      <a
        v-else
        :href="main.link"
        class="bg-blue-900 text-sm learn-button hover:bg-blue-800 text-gray-100 px-12 py-2 mr-5 rounded shadow rounded-full"
        >{{ main.button }}</a
      >
    </div>
  </div>
</template>


<script>
export default {
  props: ["products", "main", "id"],
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
.product {
  background-color: #ebfefd;
}
</style>
