<template>
  <div class="my-20 tft_section px-10">
    <div v-if="main" class="text-center mx-2">
      <h2 class="text-8xl uppercase leading-none font-heading my-0">{{ main.title }}</h2>
      <h2 v-if="main.subtitle" class="text-8xl uppercase leading-none font-heading mt-0">{{ main.subtitle }}</h2>
      <div
        class="my-10 text-2xl mx-auto text-gray-800 sm:mt-4 tft_subtitle"
        v-html="main.content"
      ></div>
    </div>
    <VueSlickCarousel v-bind="settings">
      <div
        class="px-2"
        v-for="(slide, index) in slides"
        :key="`${slide}-${index}`"
      >
        <img :src="img(slide.img)" class="h-100" />
      </div>
    </VueSlickCarousel>
  </div>
</template>

<script>
import "vue-slick-carousel/dist/vue-slick-carousel.css";
export default {
  props: ["main", "slides"],
  data() {
    return {
      settings: {
        arrows: true,
        slidesToShow: 4,
        slidesToScroll: 4,
        responsive: [
          {
            breakpoint: 1024,
            settings: {
              slidesToShow: 3,
              slidesToScroll: 3,
              infinite: true,
              dots: true,
              arrows: false,
            },
          },
          {
            breakpoint: 600,
            settings: {
              slidesToShow: 2,
              slidesToScroll: 2,
              initialSlide: 2,
              dots: true,
              arrows: false,
            },
          },
          {
            breakpoint: 480,
            settings: {
              slidesToShow: 1,
              slidesToScroll: 1,
              dots: true,
              arrows: false,
            },
          },
        ],
      },
    };
  },
  methods: {
    img(slide) {
      if (!slide) return "";
      if (slide.src) return slide.src;
      return slide;
    },
  },
};
</script>

<style>
.slick-prev:before,
.slick-next:before {
  color: black !important;
  z-index: 999999999;
}
</style>

