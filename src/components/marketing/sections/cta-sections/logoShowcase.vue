<template>
  <section class="py-10 pb-8 px-4 text-center">
    <div class="max-w-2xl mx-auto mb-16" v-if="main">
      <h2 class="text-4xl leading-tight mb-6 font-bold font-heading">
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
        class="w-1/2 md:w-1/6 px-8 mb-8"
      >
        <g-image :src="img(logo.image)" />
      </a>
    </div>
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



