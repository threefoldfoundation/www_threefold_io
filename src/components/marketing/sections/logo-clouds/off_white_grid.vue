<template>
  <div class="bg-white">
    <div class="max-w-screen-xl mx-auto py-12 px-4 sm:px-6 lg:py-24 lg:px-2">
      <div
        v-html="news.content"
        class="text-center text-6xl font-semibold leading-tight font-heading"
      ></div>
      <div class="mt-6 grid grid-cols-2 gap-3 md:grid-cols-3 lg:mt-10 ">
        <g-link
          v-for="partner in news.partners"
          :key="partner.id"
          :to="partner.path"
          target="_blank"
          class="col-span-1 flex justify-center m-1"
        >
          <img :src="img(partner.logo)" />
        </g-link>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["news"],
  methods: {
    img(image) {
      if (!image) return "";
      if (image.src) return image.src;
      return image;
    },
  },
};
</script>