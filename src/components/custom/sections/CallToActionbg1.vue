<template>
  <section class="py-4 px-4 text-center tft_section2">
 
    <div class="w-full max-w-7xl mx-auto">
      <h1 class="text-9xl mb-2 mt-20 leading-none font-heading mx-auto">
        {{ cta.title1 }} 
        <br>
        {{ cta.title2 }}
      </h1>
      <div
        v-html="cta.content"
        class="mb-8 text-gray-800 text-2xl tft_subtitle"
      ></div>


       <a
          class="inline-block
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
              tracking-wide" 
          target="_blank"
          v-if="cta.button"
          :href="cta.link"
          >{{ cta.button }}</a
        >
        <g-link
          class="inline-block
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
              tracking-wide"
          v-if="cta.button2"
          :to="cta.link2"
          >{{ cta.button2 }}</g-link
        >
         <g-link
          class="inline-block
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
              tracking-wide"
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
