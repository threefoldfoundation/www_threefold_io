<template>
  <section
    class="bg-cover text-center"
    :class="{
      pink: id == 'home' && !lastCta,
      green: id == 'about-us' && lastCta,
    }"
  >
    <!-- about-us -->
    <div
      class="w-full mx-auto lg:py-20"
      v-if="id == 'about-us' && !textOnly && !lastCta"
    >
      <h2
        v-if="cta.title"
        class="
          lg:text-6xl
          text-center
          uppercase
          mb-2
          leading-none
          font-bold font-heading
        "
      >
        {{ cta.title }}
      </h2>
      <div
        v-html="cta.content"
        class="mt-6 mb-8 lg:text-2xl text-gray-800"
      ></div>
      <g-image :src="cta.image" class="my-10 mx-auto" />

      <!-- <div class="mt-8 tracking-wide leading-loose" v-if="cta.video_button">
        <a
          @click="toggleModal"
          class="
            inline-block
            bg-blue-900
            text-sm
            learn-button
            hover:bg-blue-800
            text-gray-100
            px-12
            py-2
            mr-5
            mb-4
            shadow
            rounded-full
          "
          >{{ cta.video_button }}</a
        >
      </div> -->
      <a
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
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        v-else
        :href="cta.link"
        >{{ cta.button }}</a
      >
    </div>

    <div
      class="w-full max-w-3xl mx-auto py-12"
      v-else-if="id == 'about-us' && textOnly"
    >
      <h2
        v-if="cta.title"
        class="
          lg:text-6xl
          text-center
          uppercase
          mb-2
          leading-none
          font-bold font-heading
        "
      >
        {{ cta.title }}
      </h2>
      <div
        v-html="cta.content"
        class="mt-6 mb-8 lg:text-2xl text-gray-800"
      ></div>
    </div>

    <div
      class="w-full max-w-3xl mx-auto py-20"
      v-else-if="id == 'about-us' && lastCta"
    >
      <h2
        v-if="cta.title"
        class="
          lg:text-6xl
          text-center
          uppercase
          mb-2
          leading-none
          font-bold font-heading
        "
      >
        {{ cta.title }}
      </h2>
      <h2
        v-if="cta.subtitle"
        class="
          lg:text-6xl
          text-center
          uppercase
          mb-2
          leading-none
          font-bold font-heading
        "
      >
        {{ cta.subtitle }}
      </h2>
      <div
        v-html="cta.content"
        class="mt-6 mb-8 lg:text-2xl text-gray-800"
      ></div>
      <a
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
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        v-else
        :href="cta.link"
        >{{ cta.button }}</a
      >
    </div>

    <!-- home -->

    <div
      class="w-full mx-auto mt-10 py-16"
      v-else-if="id == 'home' && !lastCta"
    >
      <h2
        v-if="cta.title"
        class="lg:text-6xl uppercase mb-0 leading-tight font-semibold font-heading"
      >
        {{ cta.title }}
      </h2>

      <h2
        v-if="cta.subtitle"
        class="lg:text-6xl uppercase mt-0 leading-tight font-semibold font-heading"
      >
        {{ cta.subtitle }}
      </h2>

      <g-image :src="cta.image.src" />
      <!-- <div class="mt-8 tracking-wide leading-loose" v-if="cta.video_button">
        <a
          @click="toggleModal"
          class="
            inline-block
            cursor-pointer
            bg-blue-900
            text-sm
            learn-button
            hover:bg-blue-800
            text-gray-100
            px-12
            py-2
            mr-5
            mb-4
            shadow
            rounded-full
          "
          >{{ cta.video_button }}</a
        >
      </div> -->
      <div class="max-w-7xl mx-auto grid lg:grid-cols-3 gap-4">
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
            lg:mr-5
            mx-2
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
            mx-2
            py-1
            lg:mr-5
            border-2
            shadow
            border-black
          "
          v-else
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
            mx-2
            lg:mr-5
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
            mx-2
            py-1
            lg:mr-5
            border-2
            shadow
            border-black
          "
          v-else
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
            mx-2
            py-1
            lg:mr-5
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
            mx-2
            py-1
            lg:mr-5
            border-2
            shadow
            border-black
          "
          v-else
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
            mx-2
            py-1
            lg:mr-5
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
            mx-2
            py-1
            lg:mr-5
            border-2
            shadow
            border-black
          "
          v-else
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
            mx-2
            py-1
            lg:mr-5
            border-2
            shadow
            border-black
          "
          target="_blank"
          v-if="cta.button5 && cta.link5.includes('http')"
          :href="cta.link5"
          >{{ cta.button5 }}</a
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
            mx-2
            py-1
            lg:mr-5
            border-2
            shadow
            border-black
          "
          v-else
          :href="cta.link5"
          >{{ cta.button5 }}</a
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
            mx-2
            py-1
            lg:mr-5
            border-2
            shadow
            border-black
          "
          target="_blank"
          v-if="cta.button6 && cta.link6.includes('http')"
          :href="cta.link6"
          >{{ cta.button6 }}</a
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
            mx-2
            py-1
            lg:mr-5
            border-2
            shadow
            border-black
          "
          v-else
          :href="cta.link6"
          >{{ cta.button6 }}</a
        >
      </div>
    </div>

    <div
      class="w-full max-w-7xl mx-auto mt-10 px-2"
      v-else-if="id == 'home' && lastCta"
    >
      <g-image class="mx-auto" :src="cta.image" />
      <h2
        v-if="cta.title"
        class="lg:text-6xl mb-2 uppercase leading-tight font-semibold font-heading"
      >
        {{ cta.title }}
      </h2>
      <div v-html="cta.content" class="mt-6 mb-8 mx-auto text-2xl text-gray-800"></div>
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

    <!-- grid -->
    <div id="zero_os" class="w-full max-w-3xl mx-auto py-12" v-else-if="id == 'grid'">
      <g-image :src="cta.image" class="mx-auto lg:w-1/3 my-10" />
      <h2
        v-if="cta.title"
        class="
          lg:text-6xl
          text-center
          uppercase
          my-2
          leading-none
          font-bold font-heading
        "
      >
        {{ cta.title }}
      </h2>
      <div
        v-html="cta.content"
        class="mt-6 mb-8 lg:text-2xl text-gray-800"
      ></div>
      <a
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
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        v-else
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
          px-12
          py-1
          mr-5
          my-4
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
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        v-else
        :href="cta.link2"
        >{{ cta.button2 }}</a
      >
    </div>

    <!-- token -->
    <div
      class="w-full max-w-6xl mx-auto lg:my-20"
      v-else-if="id == 'token' && !lastCta"
    >
      <h2
        v-if="cta.title"
        class="
          lg:text-6xl
          max-w-3xl
          mx-auto
          text-center
          uppercase
          my-2
          leading-none
          font-bold font-heading
        "
      >
        {{ cta.title }}
      </h2>
      <div
        v-html="cta.content"
        class="mt-6 mb-8 max-w-3xl mx-auto lg:text-2xl text-gray-800"
      ></div>
      <g-image :src="cta.image" class="mx-auto w-full my-10" />
      <a
        class="
          inline-block
          bg-white
          lg:text-lg
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
        target="_blank"
        v-if="cta.button && cta.link.includes('http')"
        :href="cta.link"
        >{{ cta.button }}</a
      >
      <a
        class="
          inline-block
          bg-white
          lg:text-lg
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
        v-else
        :href="cta.link"
        >{{ cta.button }}</a
      >
    </div>

    <div class="w-full mx-auto lg:py-20" v-else-if="id == 'token' && lastCta">
      <h2
        v-if="cta.title"
        class="
          max-w-2xl
          mx-auto
          lg:text-6xl
          text-center
          uppercase
          mb-2
          leading-none
          font-bold font-heading
        "
      >
        {{ cta.title }}
      </h2>
      <div
        v-html="cta.content"
        class="mt-6 mb-8 lg:text-2xl text-gray-800"
      ></div>

      <a
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
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        v-else
        :href="cta.link"
        >{{ cta.button }}</a
      >
      <g-image :src="cta.image" class="w-full my-10" />
    </div>

    <!-- tft -->
    <div
      class="w-full lg:max-w-4xl mx-auto lg:mt-20 lg:px-16 lg:py-10 tft_section"
      v-else-if="id == 'tft'"
    >
      <h2
        v-if="cta.title"
        class="
          lg:max-w-lg
          text-8xl
          mb-6
          mt-20
          leading-none
          font-heading
          mx-auto
        "
      >
        {{ cta.title }}
      </h2>
      <div
        v-html="cta.content"
        class="
          mt-6
          mb-8
          text-2xl
          leading-tight
          tracking-wide
          tft_subtitle
          text-gray-800
        "
      ></div>
      <div class="mt-8 tracking-wide leading-loose" v-if="cta.video_button">
        <a
          @click="toggleModal"
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
          >{{ cta.video_button }}</a
        >
      </div>
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
          bg-blue-900
          text-sm
          learn-button
          hover:bg-blue-800
          text-gray-100
          px-12
          py-2
          mr-5
          mb-4
          shadow
          rounded-full
        "
        v-if="cta.button2"
        :to="cta.link2"
        >{{ cta.button2 }}</g-link
      >
      <g-link
        class="
          inline-block
          bg-blue-900
          text-sm
          learn-button
          hover:bg-blue-800
          text-gray-100
          px-12
          py-2
          mr-5
          mb-4
          shadow
          rounded-full
        "
        v-if="cta.button3"
        :to="cta.link3"
        >{{ cta.button3 }}</g-link
      >

      <g-link
        class="
          inline-block
          bg-blue-900
          text-sm
          learn-button
          hover:bg-blue-800
          text-gray-100
          px-12
          py-2
          mr-5
          mb-4
          shadow
          rounded-full
        "
        v-if="cta.button4"
        :to="cta.link4"
        >{{ cta.button4 }}</g-link
      >
    </div>

    <div class="w-full max-w-7xl mx-auto" v-else>
      <h2
        v-if="cta.title"
        class="text-4xl mb-2 uppercase leading-tight font-semibold font-heading"
      >
        {{ cta.title }}
      </h2>
      <div v-html="cta.content" class="mt-6 mb-8 text-gray-600"></div>
      <div class="mt-8 tracking-wide leading-loose" v-if="cta.video_button">
        <a
          @click="toggleModal"
          class="
            inline-block
            cursor-pointer
            bg-blue-900
            text-sm
            learn-button
            hover:bg-blue-800
            text-gray-100
            px-12
            py-2
            mr-5
            mb-4
            rounded
            shadow
            rounded-full
          "
          >{{ cta.video_button }}</a
        >
      </div>
      <a
        class="
          inline-block
          bg-blue-900
          text-sm
          learn-button
          hover:bg-blue-800
          text-gray-100
          px-12
          py-2
          mr-5
          mb-4
          rounded
          shadow
          rounded-full
        "
        target="_blank"
        v-if="cta.button"
        :href="cta.link"
        >{{ cta.button }}</a
      >
      <g-link
        class="
          inline-block
          bg-blue-900
          text-sm
          learn-button
          hover:bg-blue-800
          text-gray-100
          px-12
          py-2
          mr-5
          mb-4
          rounded
          shadow
          rounded-full
        "
        v-if="cta.button2"
        :to="cta.link2"
        >{{ cta.button2 }}</g-link
      >
      <g-link
        class="
          inline-block
          bg-blue-900
          text-sm
          learn-button
          hover:bg-blue-800
          text-gray-100
          px-12
          py-2
          mr-5
          mb-4
          rounded
          shadow
          rounded-full
        "
        v-if="cta.button3"
        :to="cta.link3"
        >{{ cta.button3 }}</g-link
      >
    </div>
    <Modal
      :link="cta.video_link"
      :showModal="showModal"
      @onClose="handleClose"
    />
  </section>
</template>

<script>
import Modal from "~/components/custom/Modal.vue";

export default {
  props: ["cta", "id", "textOnly", "lastCta"],
  data() {
    return {
      showModal: false,
    };
  },
  components: {
    Modal,
  },
  methods: {
    toggleModal() {
      this.showModal = !this.showModal;
    },
    handleClose() {
      this.showModal = false;
    },
  },
};
</script>
<style scoped>
.pink {
  background-color: #fff;
}

.green {
  background-color: #70dfc9;
}
</style>