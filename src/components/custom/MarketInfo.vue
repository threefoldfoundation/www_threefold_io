<template>
  <div class="flex flex-wrap -mx-auto">
    <div class="text-center mx-auto my-4">
      <h1
        class="
          text-md
          lg:text-6xl
          text-gray-900
          font-bold
          sm:text-9xl
          leading-tight
        "
      >
        {{ main.title }}
      </h1>
      <div
        class="my-5 max-w-2xl text-lg lg:text-xl mx-auto text-gray-900 sm:mt-4"
        v-html="main.content"
      ></div>
    </div>
    <div class="flex flex-col my-1 px-1 lg:w-1/2 overflow-hidden">
      <g-image :src="mainItem.image" class="w-3/4 mx-auto" />
      <div class="flex-1 bg-white p-6 flex flex-col justify-between">
        <div class="flex-1">
          <div
            class="mt-3 text-lg lg:text-2xl leading-tight text-gray-800"
            v-html="mainItem.content"
          ></div>
        </div>
      </div>
    </div>

    <!-- Column Content -->
    <div class="flex flex-col my-1 px-1 lg:w-1/2 overflow-hidden">
      <div class="flex my-10" v-for="info in marketInfo" :key="info.id">
        <div class="flex-shrink-0">
          <g-image :src="info.image" class="h-24 w-24" />
        </div>
        <div class="ml-4">
          <div
            class="mt-5 text-xl leading-6 text-gray-900"
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