<template>
  <div class="">
    <div class="max-w-screen-xl mx-auto py-24">
      <div
        v-if="id == 'token'"
        class="brandpanel rounded-lg shadow-xl overflow-hidden lg:grid lg:grid-cols-2 lg:gap-4"
      >
        <div class="relative pb-3/5 -mt-6 md:pb-1/2">
          <g-image
            class="absolute brandpanel inset-0 w-full h-full translate-x-0 translate-y-center rounded-md object-fill object-left-top sm:translate-x-0 lg:translate-y-20"
            :src="brand.img.src"
            :alt="brand.title"
          />
        </div>
        <div
          class="pt-10 pb-10 px-6 sm:pt-16 sm:px-10 lg:py-16 lg:pr-0 xl:py-20 xl:px-15"
        >
          <div class="lg:self-center">
            <h2 class="text-3xl leading-9 font-extrabold sm:leading-10">
              <span class="block">{{ brand.title }}</span>
              <span class="block" v-if="brand.subtitle">{{
                brand.subtitle
              }}</span>
            </h2>
            <div
              class="py-6 mt-4 text-lg leading-6"
              v-html="brand.content"
            ></div>
            <a
              v-if="brand.btnTxt"
              target="_blank"
              :href="brand.sourceUrl"
              class="bg-gray-800 text-sm learn-button hover:bg-57EEF8-400 text-white px-12 py-2 mr-3 shadow rounded-full"
              >{{ brand.btnTxt }}</a
            >
          </div>
        </div>
      </div>

      <div
        v-else
        class="brandpanel bg-gray-900 rounded-lg shadow-xl overflow-hidden lg:grid lg:grid-cols-2 lg:gap-4"
      >
        <div
          class="pt-10 pb-12 px-6 sm:pt-16 sm:px-16 lg:py-16 lg:pr-0 xl:py-20 xl:px-15"
        >
          <div class="lg:self-center">
            <h2
              class="text-3xl leading-9 font-extrabold text-white sm:leading-10"
            >
              <span class="block">{{ brand.title }}</span>
              <span class="block" v-if="brand.subtitle">{{
                brand.subtitle
              }}</span>
            </h2>
            <div
              class="py-6 mt-4 text-lg leading-6 text-white"
              v-html="brand.content"
            ></div>
            <!-- <a
              :href="brand.sourceUrl"
              class="bg-teal-300 text-sm learn-button hover:bg-57EEF8-400 text-gray-900 px-12 py-2 mr-3 rounded shadow rounded-full"
              >{{ brand.btnTxt }}</a
            > -->
          </div>
        </div>
        <div class="relative pb-3/5 -mt-6 md:pb-1/2">
          <g-image
            class="absolute brandpanel inset-0 w-full h-full transform translate-x-0 translate-y-6 rounded-md object-fill object-left-top sm:translate-x-0 lg:translate-y-20"
            :src="img(brand.img)"
            :alt="brand.title"
          />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["brand", "id"],
  methods: {
    img(image) {
      if (!image) return "";
      if (image.src) return image.src;
      return image;
    },
  },
};
</script>