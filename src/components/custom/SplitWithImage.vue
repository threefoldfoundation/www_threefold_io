<template>
  <div class="relative" :class="{ 'bg-token': id == 'token' }">
    <main class="lg:relative">
      <div class="relative w-full lg:absolute lg:left-0 lg:w-1/2 lg:h-auto">
        <g-image
          class="absolute w-100 lg:w-3/4 h-auto object-fit hidden md:block"
          :src="img(tft.image)"
          :alt="tft.title"
        />
      </div>
      <div
        class="
          mx-auto
          max-w-10xl
          w-full
          pt-16
          pb-20
          text-center
          lg:py-48
          lg:text-left
        "
      >
        <div class="px-4 lg:w-1/2 lg:ml-auto sm:px-8 xl:pr-16">
          <h2
            class="
              tracking-tight
              leading-10
              font-bold
              text-gray-900
              sm:leading-none
              lg:text-6xl
            "
          >
            {{ tft.title }}
            <br class="xl:hidden" />
            <span class="block">{{ tft.subtitle }}</span>
          </h2>
          <div
            class="
              mt-3
              max-w-md
              text-2xl text-gray-900
              md:mt-5
              md:max-w-xl
            "
            v-html="tft.content"
          ></div>
          <div class="mt-10 sm:flex sm:justify-center lg:justify-start">
            <a
              :href="tft.link"
              target="_blank"
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
            >
              {{ tft.button }}
            </a>
          </div>
        </div>
      </div>
    </main>
  </div>
</template>

<script>
export default {
  props: ["id", "tft"],
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
.bg-token {
  background: #70dfc9;
  background: -webkit-linear-gradient(to bottom, #ea1ff7, #70dfc9);
  background: linear-gradient(to bottom, #ea1ff7, #70dfc9);
}
</style>
