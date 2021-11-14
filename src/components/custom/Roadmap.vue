<template>
  <section class="pb-10 px-4 bg-cover text-center">
    <div class="w-full mx-auto">
      <g-image class="lg:w-3/4 mx-auto" :src="roadmap.image" />
      <div
        v-html="roadmap.content"
        class="mt-10 mb-8 lg:text-xl max-w-3xl mx-auto text-gray-900"
      ></div>
    </div>
  </section>
</template>

<script>
export default {
  props: ["roadmap", "id"],
};
</script>