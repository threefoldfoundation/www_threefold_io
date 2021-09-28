<template>
  <div class="flex flex-wrap -mx-auto lg:my-20">
    <div class="text-center mx-auto my-4">
      <h2
        class="
          text-md
          lg:text-6xl
          font-bold
          leading-tight
          lg:max-w-3xl
        "
      >
        {{ main.title }}
      </h2>
      <div
        class="my-5 max-w-2xl text-lg lg:text-2xl mx-auto text-gray-900 sm:mt-4"
        v-html="main.content"
      ></div>
    </div>
    <div class="flex flex-col my-1 lg:w-1/2 overflow-hidden">
      <g-image :src="mainItem.image" class="w-1/2 mx-auto" />
      <div class="flex-1 bg-white p-6 flex flex-col justify-between">
        <div class="flex-1">
          <div
            class="mt-3 lg:text-xl max-w-xl mx-auto leading-tight text-gray-800 text-center"
            v-html="mainItem.content"
          ></div>
        </div>
      </div>
    </div>

    <!-- Column Content -->
    <div class="flex flex-col my-1 lg:w-1/2 overflow-hidden lg:px-20">
      <div class="flex my-4 px-2" v-for="info in marketInfo" :key="info.id">
        <div class="flex-shrink-0">
          <g-image :src="info.image" class="h-32 w-32" />
        </div>
        <div class="lg:mx-20">
          <div
            class="mt-5 lg:mx-10 text-xl leading-6 text-gray-900"
            v-html="info.content"
          ></div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["id", "main", "mainItem", "marketInfo"],
};
</script>