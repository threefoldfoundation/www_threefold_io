<template>
  <section class="px-4 text-center">
  <div
      class="w-full max-w-7xl mx-auto mt-10 px-2 py-16"
     
    >
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
      <g-image class="mx-auto" :src="cta.image" />
     
      <div
        v-html="cta.content"
        class="mt-6 mb-8 mx-auto text-xl text-gray-800"
      ></div>
      <div class="mt-8 tracking-wide leading-loose" v-if="cta.video_button">
        <a
          @click="toggleModal"
          class="
            inline-block
            cursor-pointer
            bg-blue-900
            text-lg
            learn-button
            hover:bg-blue-800
            text-gray-100
            px-12
            py-2
            mr-5
            my-2
            shadow
            rounded-full
          "
          >{{ cta.video_button }}</a
        >
      </div>
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
      <div v-if="cta.button2" class="inline-block">
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
          v-if="cta.button2 && cta.link2.includes('http')"
          :href="cta.link2"
          >{{ cta.button2 }}</a
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
          :href="cta.link2"
          >{{ cta.button2 }}</a
        >
      </div>
      <div v-if="cta.button3" class="inline-block">
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
          v-if="cta.button3 && cta.link3.includes('http')"
          :href="cta.link3"
          >{{ cta.button3 }}</a
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
          :href="cta.link3"
          >{{ cta.button3 }}</a
        >
      </div>
      <div v-if="cta.button4" class="inline-block">
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
          v-if="cta.button4 && cta.link4.includes('http')"
          :href="cta.link4"
          >{{ cta.button4 }}</a
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
          :href="cta.link4"
          >{{ cta.button4 }}</a
        >
      </div>
    </div>
  </section>
</template>

<script>
export default {
  props: ["cta"],
};
</script>
