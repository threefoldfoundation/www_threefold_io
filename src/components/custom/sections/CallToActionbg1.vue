<template>
  <section class="px-4 text-center">
    <div class="w-full max-w-7xl mx-auto mt-10 px-2 py-16">
      <h2
        v-if="cta.title"
        class="
          lg:text-6xl
          mb-2
          uppercase
          leading-tight
          font-semibold font-heading
        "
      >
        {{ cta.title }}
      </h2>
      <g-image class="mx-auto w-3/4" :src="cta.image" />

      <div
        v-if="cta.content"
        v-html="cta.content"
        class="mt-6 mb-8 mx-auto text-xl text-gray-800"
      ></div>
      <div v-if="cta.button" class="inline-block">
        <a
          class="
            inline-block
            bg-white
            text-lg
            learn-button
            hover:bg-gray-400
            bo
            px-12
            py-1
            mr-5
            my-2
            border-2
            shadow
            border-black
          "
          target="_blank"
          v-if="cta.button && cta.link.includes('http')"
          :href="cta.link"
          >{{ cta.button }}</a
        >
        <a
          class="
            inline-block
            bg-white
            text-lg
            learn-button
            hover:bg-gray-400
            bo
            px-12
            py-1
            mr-5
            my-2
            border-2
            shadow
            border-black
          "
          v-else
          :href="cta.link"
          >{{ cta.button }}</a
        >
      </div>
    </div>
  </section>
</template>

<script>
export default {
  props: ["id", "cta"],
};
</script>
