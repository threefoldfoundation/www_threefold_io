<template>
  <div class="lg:py-12 lg:flex lg:justify-center flex flex-col">
    <div
      v-if="id == 'tft'"
      class="bg-white lg:mx-8 lg:flex lg:rounded-lg tft_section lg:py-20"
    >
      <div class="py-2 px-6 max-w-xl lg:max-w-5xl lg:w-1/2 text-center ">
        <h2 class="text-8xl mb-6 leading-none font-heading">{{ card.title }}</h2>
        <div class="mt-4 text-gray-900 text-2xl tft_subtitle tracking-wide" v-html="card.content"></div>
        <div class="mt-8" v-if="card.button">
          <a
            v-if="card.link.includes('http')"
            target="_blank"
            :href="card.link"
            class="
              inline-block
              bg-gray-900
              text-2xl
              learn-button
              hover:bg-gray-800
              text-gray-100
              px-16
              py-1
              mb-4
              shadow
              rounded-full
              tft_subtitle
              tracking-wide
            "
            >{{ card.button }}</a
          >
          <a
            v-else
            :href="card.link"
            class="
              inline-block
              bg-gray-900
              text-2xl
              learn-button
              hover:bg-gray-800
              text-gray-100
              px-16
              py-1
              mb-4
              shadow
              rounded-full
              tft_subtitle
              tracking-wide
            "
            >{{ card.button }}</a
          >
        </div>
      </div>
      <div class="lg:w-3/4">
        <div
          class="h-64 bg-cover lg:rounded-lg lg:h-full"
          :style="{ 'background-image': 'url(' + img(card.img) + ')' }"
        ></div>
      </div>
    </div>

    <div
      v-else
      class="bg-white lg:mx-8 lg:flex lg:max-w-5xl lg:shadow-lg lg:rounded-lg"
    >
      <div class="lg:w-1/2">
        <div
          class="h-64 bg-cover lg:rounded-lg lg:h-full"
          :style="{ 'background-image': 'url(' + img(card.img) + ')' }"
        ></div>
      </div>
      <div class="py-12 px-6 max-w-xl lg:max-w-5xl lg:w-1/2">
        <h2 class="text-3xl text-gray-700 font-bold">{{ card.title }}</h2>
        <div class="mt-4 text-gray-700" v-html="card.content"></div>
        <div class="mt-8" v-if="card.button">
          <a
            v-if="card.link.includes('http')"
            target="_blank"
            :href="card.link"
            class="
              bg-gray-900
              learn-button
              hover:bg-gray-700
              text-gray-100
              px-5
              py-3
              font-semibold
              rounded
            "
            >{{ card.button }}</a
          >
          <a
            v-else
            :href="card.link"
            class="
              bg-gray-900
              learn-button
              hover:bg-gray-700
              text-gray-100
              px-5
              py-3
              font-semibold
              rounded
            "
            >{{ card.button }}</a
          >
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["id", "card"],
  methods: {
    img(image) {
      if (!image) return "";
      if (image.src) return image.src;
      return image;
    },
  },
};
</script>