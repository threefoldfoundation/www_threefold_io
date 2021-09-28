<template>
  <section class="py-12 px-4 text-center">
    <div class="w-full mx-auto lg:max-w-6xl">
      <span class="text-sm font-semibold">{{ header.title }}</span>
      <h2 class="lg:text-5xl mt-2 uppercase mb-6 leading-tight font-heading">
        {{ header.subtitle }}
      </h2>
      <div
        v-if="header.content"
        v-html="header.content"
        class="post-content mb-8 text-xl leading-relaxed"
      ></div>
      <div>
        <g-link
          class="
            inline-block
            bg-green-500
            text-lg
            text-white
            learn-button
            hover:bg-green-400
            bo
            px-12
            py-1
            mr-5
            mb-4
            border-2
            shadow
            border-black
          "
          v-if="header.btn1"
          :to="header.link1"
          >{{ header.btn1 }}</g-link
        ><g-link
          class="
            inline-block
            bg-teal-300
            text-sm
            learn-button
            hover:bg-teal-400
            text-gray-900
            px-12
            py-2
            mr-3
            my-2
            rounded
            shadow
            rounded-full
          "
          v-if="header.btn2"
          :to="header.link2"
          >{{ header.btn2 }}</g-link
        >
      </div>
    </div>
  </section>
</template>

<script>
export default {
  props: ["header"],
};
</script>
