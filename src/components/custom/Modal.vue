<template>
  <div @click="handleClose">
    <div
      v-if="showModal"
      class="fixed inset-0 z-50 outline-none focus:outline-none justify-center items-center flex"
    >
      <div
        class="iframe-container relative h-0 w-1/2"
        style="padding-bottom: 56.25%"
      >
        <iframe
          :src="link"
          frameborder="0"
          width="640"
          height="360"
          allowfullscreen
          class="absolute top-0 left-0 w-full h-full"
        ></iframe>
      </div>
    </div>
    <div v-if="showModal" class="opacity-75 fixed inset-0 z-40 bg-black"></div>
  </div>
</template>

<script>
export default {
  name: "Modal",
  props: ["showModal", "link"],
  methods: {
    handleClose() {
      this.$emit("onClose");
    },
  },
};
</script>
<style scoped>
@media (max-width: 768px) {
  .iframe-container {
    width: 100%;
  }
}
</style>