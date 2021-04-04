<template>
  <div>
    <div
      v-if="showModal"
      class="overflow-x-hidden overflow-y-auto fixed inset-0 z-50 outline-none focus:outline-none justify-center items-center flex"
    >
      <div class="relative w-auto my-6 mx-auto max-w-6xl">
        <button
          class="p-1 ml-auto bg-transparent border-0 text-black opacity-5 float-right text-3xl leading-none font-semibold outline-none focus:outline-none"
          @click="handleClose"
        >
          <span
            class="bg-transparent text-white opacity-5 h-6 w-6 text-2xl block outline-none focus:outline-none"
          >
            ×
          </span>
        </button>
        <div
          class="border-0 rounded-lg relative flex flex-col w-full outline-none focus:outline-none"
        >
          <div class="relative flex-auto">
            <iframe
              width="800"
              height="450"
              :src="link"
              frameborder="0"
              allow="accelerometer; autoplay; encrypted-media; gyroscope;
            picture-in-picture"
              allowfullscreen
            />
          </div>
        </div>
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