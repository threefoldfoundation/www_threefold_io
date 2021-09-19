<template>
  <section class="pb-10 px-4 bg-cover text-center">
    <div class="w-full mx-auto">
      <g-image :src="roadmap.image" />
      <div
        v-html="roadmap.content"
        class="mt-10 mb-8 lg:text-2xl text-gray-900"
      ></div>
    </div>
  </section>
</template>

<script>
export default {
  props: ["roadmap", "id"],
};
</script>