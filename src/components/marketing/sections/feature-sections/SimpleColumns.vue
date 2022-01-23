<template>
  <div class="py-20 bg-white">
    <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:max-w-screen-2xl lg:px-16">
      <div v-if="main" class="mx-auto mb-24 lg:text-center lg:max-w-5xl">
        <h2
          class="
            lg:text-6xl
            text-center
            uppercase
            my-2
            leading-none
            font-bold font-heading
          "
        >
          {{ main.title }}
        </h2>
        <div
          class="mt-2 text-xl leading-normal text-gray-900"
          v-html="main.content"
        ></div>
      </div>
      <div
        class="lg:grid lg:gap-8"
        :class="{
          'lg:grid-cols-3': id == 'storage',
          'lg:grid-cols-4': id == 'cloud',
        }"
      >
        <div
          class="my-10 text-center lg:mt-0"
          v-for="section in sections"
          :key="section.id"
        >
          <div class="flex items-center justify-center rounded-md text-white">
            <g-image
              :src="section.image"
              class="w-3/4 mx-auto"
              :class="{
                'w-full mx-auto': id == 'storage',
                'w-3/4 mx-auto': id == 'cloud',
              }"
            />
          </div>
          <div class="mt-5 ">
            <h2
              class="
                text-2xl
                uppercase
                mb-6
                leading-none
                font-bold font-heading
                py-8
              "
            >
              {{ section.title }}
            </h2>
            <div
              class="mt-2 text-xl leading-normal text-gray-900 pb-6"
              v-html="section.content"
            ></div>
          </div>
        </div>
      </div>
      <div class="block text-center mt-10">
        <a
          v-if="main.link.includes('http')"
          target="_blank"
          :href="main.link"
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
            mb-4
            border-2
            shadow
            border-black
          "
          >{{ main.button }}</a
        >
        <a
          v-else
          :href="main.link"
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
            mb-4
            border-2
            shadow
            border-black
          "
          >{{ main.button }}</a
        >
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["id", "main", "sections"],
};
</script>

<style scoped>
.green {
  /* background-color: #70dfc9; */
  font-family: "Orbitron", sans-serif !important;
}
</style>