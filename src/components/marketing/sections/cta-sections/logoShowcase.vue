<template>
  <section class="lg:py-20 pb-8 px-4 text-center">
    <div class="mx-auto mb-4" v-if="main">
      <h2
        class="lg:text-6xl uppercase leading-tight mb-0 font-light"
      >
        {{ main.title }}
      </h2>
      <h2
        class="lg:text-6xl uppercase leading-tight mt-0 mb-4 font-bold"
      >
        {{ main.title2 }}
      </h2>
      <p class="text-xl leading-tight tracking-wide mb-10">{{ main.subtitle }}</p>

      <g-image :src="img(main.image)" class="lg:w-2/3 mx-auto" />
    </div>
    <div
      v-if="id == 'support' || id == 'community'"
      class="flex flex-wrap lg:mx-40"
    >
      <div
        v-for="(logo, idx) in logos"
        class="w-1/2 md:w-1/4 px-12 mb-8"
        :key="idx"
      >
        <a v-if="logo.url.includes('http')" target="_blank" :href="logo.url">
          <g-image :src="img(logo.image)" />
        </a>

        <a v-else :href="logo.url">
          <g-image :src="img(logo.image)" />
        </a>
      </div>
    </div>

    <!-- <div v-else-if="id == 'home'" class="flex flex-wrap lg:mx-40">
      <div v-for="logo in logos" class="w-1/2 md:w-1/6" :key="logo.node.id">
        <a
          v-if="logo.node.path.includes('http')"
          target="_blank"
          :href="logo.node.path"
        >
          <g-image :src="img(logo.node.logo)" class="w-1/2 mx-auto" />
        </a>

        <a v-else :href="logo.node.path">
          <g-image :src="img(logo.node.logo)" class="w-1/2 mx-auto" />
        </a>
      </div>
    </div> -->
    <div v-else class="flex flex-wrap -mx-8">
      <g-image
        class="mx-auto"
        v-for="(logo, idx) in logos"
        :key="idx"
        :src="img(logo.image)"
      />
    </div>
    <div v-if="main.button" class="my-4">
      <a
        class="
          inline-block
          bg-white
          lg:text-lg
          learn-button
          hover:bg-gray-400
          px-12
          py-1
          mr-5
          border-2
          shadow
          border-black
        "
        v-if="main.button"
        :href="main.link"
        >{{ main.button }}</a
      >
    </div>
  </section>
</template>

<script>
export default {
  props: ["id", "logos", "main"],
  methods: {
    img(image) {
      if (!image) return "";
      if (image.src) return image.src;
      return image;
    },
  },
};
</script>



