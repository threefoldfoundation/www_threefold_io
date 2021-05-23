<template>
  <div class="lg:py-12 lg:flex lg:justify-center flex flex-col">
    <div class="bg-white lg:flex lg:max-w-5xl lg:rounded-lg">
      <div class="lg:w-1/2">
        <div class="aspect-w-16 aspect-h-9">
          <iframe
            width="560"
            height="315"
            :src="card.video"
            title="YouTube video player"
            frameborder="0"
            allowfullscreen
          ></iframe>
        </div>
      </div>
      <div class="py-6 px-6 max-w-xl lg:max-w-5xl lg:w-1/2">
        <h2 class="text-2xl text-gray-700 font-bold">{{ card.title }}</h2>
        <div class="mt-4 text-gray-700" v-html="card.content"></div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["card"],
};
</script>