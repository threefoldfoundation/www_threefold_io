<template>
  <div class="lg:py-20 lg:flex lg:justify-center flex flex-col">
    <div class="lg:flex lg:rounded-lg lg:px-40">
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
      <div class="px-6 lg:w-1/2">
        <h2
          class="text-4xl leading-tight mb-6 font-bold font-heading uppercase"
        >
          {{ card.title }}
        </h2>
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
<style scoped>

.video_bg{

background-color: #ebfefd;
}

</style>