<template>
  <div class="py-10 lg:flex lg:justify-center flex flex-col">
    <div class="lg:flex lg:rounded-lg">
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
          class="text-4xl leading-tight my-0 font-bold font-heading uppercase"
        >
          {{ card.title }}
        </h2>
        <div class="mt-2 text-gray-700" v-html="card.content"></div>
        <div class="mx-auto mt-4 mb-6" v-if="card.btn">
          <a
            v-if="card.link.includes('http')"
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
            :href="card.link"
            target="_blank"
            >{{ card.btn }}
          </a>

          <a
            v-else
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
            :href="card.link"
            >{{ card.btn }}
          </a>
        </div>
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
.video_bg {
  background-color: #ebfefd;
}
</style>