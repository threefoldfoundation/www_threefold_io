<template>
  <section class="py-15 mb-10 px-4 lg:mx-40">
    <div
      class="flex flex-wrap text-center lg:mt-10 lg:text-left -mx-2"
      v-if="id == 'why'"
    >
      <div class="lg:w-1/2 px-2"><g-image :src="img" :alt="altImg" /></div>
      <div class="lg:w-1/2 px-2 py-20 lg:pr-20 px-10 lg:mt-10 order-1 lg:order-none">
        <h1
          class="flex text-center uppercase mb-6 mt-10 leading-none text-5xl font-light font-heading"
        >
          {{ title }}
        </h1>
        <span
          class="flex text-center uppercase mb-6 leading-none text-6xl font-black font-heading"
        >
          {{ slogan }}
        </span>

        <div
          class="mb-8 text-center text-lg mx-10 text-gray-800"
          v-html="excerpt"
        ></div>
        <div v-if="button">
          <a
            v-if="link.includes('http')"
            target="_blank"
            class="nline-block bg-blue-900 text-sm learn-button hover:bg-blue-800 text-gray-100 px-12 py-2 mr-5 mb-4 rounded shadow rounded-full"
            :href="link"
            >{{ button }}</a
          >
          <a
            v-else
            class="nline-block bg-blue-900 text-md learn-button hover:bg-blue-800 text-gray-100 px-12 py-2 mr-5 mb-4 rounded shadow rounded-full"
            :href="link"
            >{{ button }}</a
          >
          <!-- <a class="text-gray-600 hover:underline" href="#">Learn more</a> -->
        </div>
      </div>
    </div>

    <div class="flex flex-wrap text-center lg:text-left lg:mt-10 lg:pt-10 -mx-2" v-else>
      <div class="lg:w-1/2 px-2 lg:pr-20 lg:mt-10 order-1 lg:order-none">
        <h2
          class="text-8xl mb-6 mt-20 leading-none font-extrabold font-heading"
        >
          <span class="text-blue-600">{{ slogan }}</span> {{ title }}
        </h2>
        <div class="mb-8 text-gray-700 leading-relaxed" v-html="excerpt"></div>
        <div v-if="button">
          <a
            v-if="link.includes('http')"
            target="_blank"
            class="nline-block bg-blue-900 text-sm learn-button hover:bg-blue-800 text-gray-100 px-12 py-2 mr-5 mb-4 rounded shadow rounded-full"
            :href="link"
            >{{ button }}</a
          >
          <a
            v-else
            class="nline-block bg-blue-900 text-md learn-button hover:bg-blue-800 text-gray-100 px-12 py-2 mr-5 mb-4 rounded shadow rounded-full"
            :href="link"
            >{{ button }}</a
          >
          <!-- <a class="text-gray-600 hover:underline" href="#">Learn more</a> -->
        </div>
      </div>
      <div class="lg:w-1/2 px-2"><g-image :src="img" :alt="altImg" /></div>
    </div>
  </section>
</template>

<script>
export default {
  props: [
    "title",
    "id",
    "slogan",
    "excerpt",
    "altImg",
    "image",
    "button",
    "link",
  ],
  computed: {
    img: function () {
      if (!this.image) return "";
      if (this.image.src) return this.image.src;
      return this.image;
    },
  },
};
</script>