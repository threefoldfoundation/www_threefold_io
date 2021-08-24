<template>
  <section class="px-4 bg-cover text-center">
    <div class="w-full mx-auto tft_section2">
      <h2 class="text-9xl mb-2 leading-none font-heading mx-auto">
        {{ cta.title1 }}
        <br />
        {{ cta.title2 }}
      </h2>
      <div
        v-html="cta.content"
        class="text-gray-800 mb-4 text-2xl tft_subtitle"
      ></div>

      <a
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
        target="_blank"
        v-if="cta.button"
        :href="cta.link"
        >{{ cta.button }}</a
      >
      <g-link
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
        v-if="cta.button2"
        :to="cta.link2"
        >{{ cta.button2 }}</g-link
      >
      <g-link
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
        v-if="cta.button3"
        :to="cta.link3"
        >{{ cta.button3 }}</g-link
      >
    </div>
  </section>
</template>

<script>
export default {
  props: ["cta"],
};
</script>
