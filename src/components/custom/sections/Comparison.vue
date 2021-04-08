<template>
  <section class="py-24 px-4 text-center">
    <h2 class="text-4xl mb-2 leading-tight font-semibold font-heading">
      {{ main.title }}
    </h2>
    <p class="text-gray-600">{{ main.description }}</p>
    <div class="flex flex-wrap -mx-8 mt-12 mb-2" v-if="id == 'home'">
      <div
        class="lg:w-1/3 px-6 mb-10"
        v-for="(section, index) in sections"
        :key="index"
      >
        <!-- <g-link :to="section.link"> -->
          <g-image
            class="mx-auto"
            :src="section.svg.src"
            :alt="section.title"
          />
          <div class="part py-1">
            <h3 class="text-2xl font-semibold font-heading">
              <!-- <span
            class="inline-flex items-center justify-center h-12 w-12 mr-2 border rounded-full"
            >{{ index + 1 }}</span
          > -->
              {{ section.title }}
            </h3>
            <div
              class="mb-4 px-5 text-black-700"
              v-html="section.content"
            ></div>
          </div>
        <!-- </g-link> -->
      </div>
    </div>

    <div class="flex flex-wrap items-center -mx-8 mt-12 mb-2" v-else>
      <div
        class="lg:w-1/3 px-6 mb-2"
        v-for="(section, index) in sections"
        :key="index"
      >
        <g-image
          class="mx-auto mb-8"
          :src="section.svg.src"
          :alt="section.title"
        />
        <h3 class="text-2xl mb-4 font-semibold font-heading">
          <!-- <span
            class="inline-flex items-center justify-center h-12 w-12 mr-2 border rounded-full"
            >{{ index + 1 }}</span
          > -->
          <span>{{ section.title }}</span>
        </h3>
        <div class="text-gray-700" v-html="section.content"></div>
      </div>
    </div>

    <div v-if="main.button">
      <a
        v-if="main.link.includes('http')"
        target="_blank"
        :href="main.link"
        class="bg-blue-900 text-sm learn-button hover:bg-blue-800 text-gray-100 px-12 py-2 mr-5 shadow rounded-full"
        >{{ main.button }}</a
      >
      <a
        v-else
        :href="main.link"
        class="bg-blue-900 text-sm learn-button hover:bg-blue-800 text-gray-100 px-12 py-2 mr-5 shadow rounded-full"
        >{{ main.button }}</a
      >
    </div>
  </section>
</template>

<script>
export default {
  props: ["main", "sections", "id"],
};
</script>

<style scoped>
.part {
  height: 160px;
  background-color: #66efc5;
  border-bottom-left-radius: 5px;
  border-bottom-right-radius: 5px;
}
</style>