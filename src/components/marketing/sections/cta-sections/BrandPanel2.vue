<template>
  <div class="">
    <div class="max-w-screen-xl mx-auto py-2">
      <div
        class="brandpanel bg-white rounded-lg shadow-xl overflow-hidden lg:grid lg:grid-cols-2 lg:gap-4"
      >
        <div
          class="pt-10 pb-12 px-6 sm:pt-16 sm:px-16 lg:py-16 lg:pr-0 xl:py-20 xl:px-10"
        >
          <div class="lg:self-center">
            <h2
              class="text-4xl mb-2 uppercase leading-tight font-semibold font-heading"
            >
              <span class="block">{{ brand.title }}</span>
              <span class="block" v-if="brand.subtitle">{{
                brand.subtitle
              }}</span>
            </h2>
            <div class="py-6 mt-4 text-gray-600" v-html="brand.content"></div>
            <a
              v-if="brand.sourceUrl.includes('http')"
              target="_blank"
              :href="brand.sourceUrl"
              class="inline-block bg-blue-900 text-sm learn-button hover:bg-blue-800 text-gray-100 px-12 py-2 mr-5 mb-4 rounded shadow rounded-full"
              >{{ brand.btnTxt }}</a
            >
            <a
              v-else
              :href="brand.sourceUrl"
              class="inline-block bg-blue-900 text-sm learn-button hover:bg-blue-800 text-gray-100 px-12 py-2 mr-5 mb-4 rounded shadow rounded-full"
              >{{ brand.btnTxt }}</a
            >
            <a
              v-if="brand.sourceUrl2.includes('http')"
              target="_blank"
              :href="brand.sourceUrl2"
              class="inline-block bg-blue-900 text-sm learn-button hover:bg-blue-800 text-gray-100 px-12 py-2 mr-5 mb-4 rounded shadow rounded-full"
              >{{ brand.btnTxt2 }}</a
            >
            <a
              v-else
              :href="brand.sourceUrl2"
              class="inline-block bg-blue-900 text-sm learn-button hover:bg-blue-800 text-gray-100 px-12 py-2 mr-5 mb-4 rounded shadow rounded-full"
              >{{ brand.btnTxt2 }}</a
            >
          </div>
        </div>
        <div class="relative pb-3/5 -mt-6 md:pb-1/2">
          <g-image
            class="absolute brandpanel inset-0 w-full h-full transform translate-x-0 translate-y-6 rounded-md object-fill object-left-top sm:translate-x-0 lg:translate-y-20"
            :src="image"
            :alt="brand.title"
          />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["brand"],
  computed: {
    image() {
      return this.brand.image.src
        ? this.brand.image.src
        : require(`!!assets-loader!@images/brandPanel/${this.brand.image}`);
    },
  },
};
</script>