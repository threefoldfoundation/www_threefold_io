<template>
  <section class="pb-20 px-4 bg-cover text-center">
    <div class="w-full max-w-2xl mx-auto" v-if="id == 'why'">
      <h2
        v-if="cta.title"
        class="text-6xl text-center uppercase mb-2 leading-none font-light font-heading"
      >
        {{ cta.title }}
      </h2>
      <span
        class="text-center uppercase leading-none text-5xl text-gray-800 font-black font-heading"
      >
        {{ cta.slogan }}
      </span>
      <div
        v-html="cta.content"
        class="mb-8 mt-10 text-center text-lg text-gray-800"
      ></div>
      <div class="mt-8 tracking-wide leading-loose" v-if="cta.video_button">
        <a
          @click="toggleModal"
          class="inline-block bg-gray-900 text-sm learn-button hover:bg-gray-800 text-gray-100 px-12 py-2 mr-5 mb-4 rounded shadow rounded-full"
          >{{ cta.video_button }}</a
        >
      </div>
      <a
        class="inline-block bg-gray-900 text-sm learn-button hover:bg-gray-800 text-gray-100 px-12 py-2 mr-5 mb-4 rounded shadow rounded-full"
        target="_blank"
        v-if="cta.button"
        :href="cta.link"
        >{{ cta.button }}</a
      >
      <g-link
        class="inline-block bg-gray-900 text-sm learn-button hover:bg-gray-800 text-gray-100 px-12 py-2 mr-5 mb-4 rounded shadow rounded-full"
        v-if="cta.button2"
        :to="cta.link2"
        >{{ cta.button2 }}</g-link
      >
      <g-link
        class="inline-block bg-gray-900 text-sm learn-button hover:bg-gray-800 text-gray-100 px-12 py-2 mr-5 mb-4 rounded shadow rounded-full"
        v-if="cta.button3"
        :to="cta.link3"
        >{{ cta.button3 }}</g-link
      >
    </div>

    <div class="w-full max-w-7xl mx-auto" v-else>
      <h2
        v-if="cta.title"
        class="text-4xl leading-tight font-semibold font-heading"
      >
        {{ cta.title }}
      </h2>
      <div
        v-html="cta.content"
        class="mt-6 mb-8 text-gray-700 leading-relaxed"
      ></div>
      <div class="mt-8 tracking-wide leading-loose" v-if="cta.video_button">
        <a
          @click="toggleModal"
          class="inline-block bg-blue-900 text-sm learn-button hover:bg-blue-800 text-gray-100 px-12 py-2 mr-5 mb-4 rounded shadow rounded-full"
          >{{ cta.video_button }}</a
        >
      </div>
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
  props: ["cta", "id"],
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
  mounted() {
    console.log(this.id);
  },
};
</script>
