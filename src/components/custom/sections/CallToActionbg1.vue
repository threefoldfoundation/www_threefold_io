<template>
  <section class="pt-10 pb-10 px-4 bg-cover bg-hero text-center">
 
    <div class="w-full  py-10 max-w-7xl mx-auto">
      <h2 class="text-4xl text-white leading-tight font-semibold font-heading uppercase">
        {{ cta.title1 }} 
        <br>
        {{ cta.title2 }}
      </h2>
      <div
        v-html="cta.content"
        class="mt-6 mb-20 text-white leading-relaxed "
      ></div>


       <a
          class="inline-block bg-blue-900 text-sm learn-button hover:bg-blue-800 text-gray-100 px-12 py-2 mr-5 mb-4 rounded shadow rounded-full" 
          target="_blank"
          v-if="cta.button"
          :href="cta.link"
          >{{ cta.button }}</a
        >
        <g-link
          class="inline-block bg-blue-900 text-sm learn-button hover:bg-blue-800 text-gray-100 px-12 py-2 mr-5 mb-4 rounded shadow rounded-full"
          v-if="cta.button2"
          :to="cta.link2"
          >{{ cta.button2 }}</g-link
        >
         <g-link
          class="inline-block bg-blue-900 text-sm learn-button hover:bg-blue-800 text-gray-100 px-12 py-2 mr-5 mb-4 rounded shadow rounded-full"
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
<style scoped>
.bg-hero {
        background-image: url("~@/assets/images/bg1.png");
    }
</style>