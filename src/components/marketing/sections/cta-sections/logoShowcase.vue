<template>
  <section class="py-10 pb-8 px-4 text-center">
    <div class="max-w-2xl mx-auto mb-4" v-if="main">
      <h2 class="lg:text-6xl uppercase leading-tight mb-6 font-bold font-heading">
        {{ main.title }}
      </h2>
      <p class="text-gray-400 leading-relaxed"></p>
       
    </div>
    <div
      v-if="id == 'support' || id == 'community'"
      class="flex flex-wrap mx-2"
    >
      <div
        v-for="(logo, idx) in logos"
        class="w-1/2 md:w-1/4 px-12 mb-8"
        :key="idx"
      >
        <a v-if="logo.url.includes('http')" target="_blank" :href="logo.url">
          <g-image :src="img(logo.image)" />
        </a>

        <g-link v-else :href="logo.url">
          <g-image :src="img(logo.image)" />
        </g-link>
      </div>
    </div>
    <div v-else class="flex flex-wrap -mx-8">
      <a
        v-for="(logo, idx) in logos"
        :key="idx"
        :href="logo.url"
        class="px-8 mb-8 mx-auto"
      >
        <g-image :src="img(logo.image)" />
      </a>
    </div>
   <a
        class="
          inline-block
          bg-white
          text-lg
          learn-button
          hover:bg-gray-400
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        v-if="main.button"
        :href="main.link"
        >{{ main.button }}</a
      >
    
  </section>
</template>

<script>
export default {
  props: ["id", "logos", "main"],
  methods: {
    img(image) {
      if (!image) return "";
      if (image.src) return image.src;
      return image;
    },
  },
};
</script>



