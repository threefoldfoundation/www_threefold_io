<template>
  <div class="bg-white">
    <div class="max-w-screen-xl mx-auto py-16">
      <div
        class="brandpanel rounded-lg shadow-xl overflow-hidden lg:grid lg:grid-cols-2 lg:gap-4"
      >
        <div
          class="pt-10 pb-12 px-6 sm:pt-16 sm:px-16 lg:py-16 lg:pr-0 xl:py-20 xl:px-20"
        >
          <div class="lg:self-center">
            <h2
              class="text-3xl leading-9 font-extrabold text-white sm:text-3xl sm:leading-10"
            >
              <span class="block">{{ brand.title }}</span>
              <span class="block" v-if="brand.subtitle">{{
                brand.subtitle
              }}</span>
            </h2>
            <p class="py-6 mt-4 text-lg leading-6 text-white">
              {{ brand.excerpt }}
            </p>
            <g-link
              :to="brand.sourceUrl"
              class="bg-teal-300 text-sm learn-button hover:bg-teal-400 text-gray-900 px-12 py-2 mr-3 rounded shadow rounded-full"
              
              >{{ brand.btnTxt }}</g-link
            >
          </div>
        </div>
        <div class="relative pb-3/5 -mt-6 md:pb-1/2">
          <g-image
            class="absolute brandpanel inset-0 w-full h-full transform translate-x-6 translate-y-6 rounded-md object-cover object-left-top sm:translate-x-16 lg:translate-y-20"
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