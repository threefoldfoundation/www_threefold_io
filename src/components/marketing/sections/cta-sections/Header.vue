<template>
  <section
    class="mb-10 bg-no-repeats bg-home"
    :style="[
      id == 'home'
        ? { background: 'url(' + img + ') no-repeat' }
        : { background: 'transparent' },
    ]"
  >
    <div
      class="flex flex-wrap text-center items-center pb-20 lg:text-left -mx-2"
      v-if="id == 'why'"
    >
      <div class="lg:w-1/2 px-2"><g-image :src="img" :alt="altImg" /></div>
      <div class="lg:w-1/2 px-2 lg:pr-20 order-1 lg:order-none">
        <h1
          class="
            flex
            text-center
            uppercase
            mb-6
            mt-10
            leading-none
            text-5xl
            font-light font-heading
          "
        >
          {{ title }}
        </h1>
        <span
          class="
            flex
            text-center
            uppercase
            mb-6
            leading-none
            text-6xl
            font-black font-heading
          "
        >
          {{ slogan }}
        </span>

        <div
          class="mb-8 text-center text-xl mx-10 text-gray-600"
          v-html="excerpt"
        ></div>
        <div v-if="button">
          <a
            v-if="link.includes('http')"
            target="_blank"
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
              rounded
              shadow
              rounded-full
            "
            :href="link"
            >{{ button }}</a
          >
          <a
            v-else
            class="
              inline-block
              bg-blue-900
              text-md
              learn-button
              hover:bg-blue-800
              text-gray-100
              px-12
              py-2
              mr-5
              mb-4
              rounded
              shadow
              rounded-full
            "
            :href="link"
            >{{ button }}</a
          >
          <!-- <a class="text-gray-600 hover:underline" href="#">Learn more</a> -->
        </div>
      </div>
    </div>

    <div
      class="flex flex-wrap text-center items-center lg:text-left lg:mb-10 lg:mt-4 -mx-2"
      v-else-if="id == 'about-us'"
    >
      <div class="lg:w-1/2 px-2 lg:pr-10 lg:mt-10 order-1 lg:order-none">
        <h1
          v-if="id == 'about-us'"
          class="
            text-center
            uppercase
            mb-6
            mt-10
            leading-none
            text-8xl
            font-heading
          "
        >
          {{ title }}
        </h1>
        <div
          class="
            mb-8
            px-10
            text-center
            text-2xl
            text-extrabold
            leading-tight
            lg:max-w-2xl
            mx-auto
          "
          v-html="excerpt"
        ></div>
        <div v-if="button" class="block text-center">
          <a
            v-if="link.includes('http')"
            target="_blank"
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
            :href="link"
            >{{ button }}</a
          >
          <a
            v-else
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
            :href="link"
            >{{ button }}</a
          >
          <!-- <a class="text-gray-600 hover:underline" href="#">Learn more</a> -->
        </div>
      </div>
      <div class="lg:w-1/2 px-2"><g-image :src="img" :alt="altImg" /></div>
    </div>

    <div
      v-else-if="id == 'tft'"
      class="
        flex flex-wrap
        text-center
        tft_section
        lg:text-left
        lg:mt-10
        lg:py-10
        -mx-2
      "
    >
      <div
        class="
          lg:w-1/2
          px-2
          lg:pr-20
          lg:mt-10
          order-1
          lg:order-none
          text-center
        "
      >
        <h1 class="text-8xl mb-6 mt-20 leading-none font-heading">
          {{ title }}
        </h1>
        <div
          class="mb-8 text-gray-800 text-3xl tft_subtitle"
          v-html="excerpt"
        ></div>
        <div v-if="button">
          <a
            v-if="link.includes('http')"
            target="_blank"
            class="
              inline-block
              bg-gray-900
              text-2xl
              learn-button
              hover:bg-gray-800
              text-gray-100
              px-16
              py-1
              mb-4
              shadow
              rounded-full
              tft_subtitle
              tracking-wide
            "
            :href="link"
            >{{ button }}</a
          >
          <a
            v-else
            class="
              inline-block
              bg-gray-900
              text-2xl
              learn-button
              hover:bg-gray-800
              text-gray-100
              px-16
              py-1
              mb-4
              shadow
              rounded-full
              tft_subtitle
              tracking-wide
            "
            :href="link"
            >{{ button }}</a
          >
          <!-- <a class="text-gray-600 hover:underline" href="#">Learn more</a> -->
        </div>
      </div>
      <div class="lg:w-1/2 px-2 self-center">
        <g-image :src="img" :alt="altImg" />
      </div>
    </div>

    <div
      class="flex flex-wrap lg:text-left lg:pt-10 -mx-2"
      v-else-if="id == 'home'"
    >
      <div
        class="px-2 lg:py-40 lg:mt-10 order-1 lg:order-none mx-auto text-center"
      >
      <div class="px-2 mt-20">
        <g-image :src="img2" :alt="altImg" />
      </div>
        <!-- <h2 class="text-8xl uppercase mb-6 mt-20 leading-none font-heading">
          <span class="">{{ slogan }}</span
          ><br />
          {{ title }}
        </h2> -->

        <div class="mb-8 text-2xl leading-relaxed" v-html="excerpt"></div>

        <a
          v-if="link.includes('http')"
          target="_blank"
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
          :href="link"
          >{{ button }}</a
        >
        <a
          v-else
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
          :href="link"
          >{{ button }}</a
        >
        <a
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
          :href="link2"
          >{{ button2 }}</a
        >
        <a
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
          :href="link3"
          >{{ button3 }}</a
        >
        <!-- <a class="text-gray-600 hover:underline" href="#">Learn more</a> -->
      </div>
      <!-- <div class="lg:w-3/5 px-2 self-center">
        <g-image :src="img" :alt="altImg" />
      </div> -->
    </div>

    <div
      class="flex flex-wrap text-center lg:text-left lg:pt-10 -mx-2"
      v-else-if="id == 'token'"
    >
      <div class="px-2 lg:mt-10 order-1 lg:order-none mx-auto text-center">
        <div class="w-1/2 mx-auto px-2 self-center">
          <g-image :src="img" :alt="altImg" />
        </div>
        <h2 class="text-8xl uppercase mb-6 mt-20 leading-none font-heading">
          {{ title }}
        </h2>
        <div class="mb-8 text-2xl leading-relaxed" v-html="excerpt"></div>
      </div>
    </div>

    <div
      class="flex flex-wrap text-center lg:text-left lg:pt-10 -mx-2"
      v-else-if="id == 'grid'"
    >
      <div class="px-3 lg:mt-5 order-1 lg:order-none mx-auto text-center">
        <h2 class="text-8xl uppercase mb-6 mt-20 leading-none font-heading">
          {{ title }}
        </h2>
        <div
          class="mb-8 mx-auto text-2xl max-w-xl"
          v-html="excerpt"
        ></div>

        <a
          v-if="link.includes('http')"
          target="_blank"
          class="
            inline-block
            bg-white
            text-lg
            learn-button
            hover:bg-gray-400
            px-12
            py-1
            mr-5
            mb-4
            border-2
            shadow
            border-black
          "
          :href="link"
          >{{ button }}</a
        >
        <a
          v-else
          class="
            inline-block
            bg-white
            text-lg
            learn-button
            hover:bg-gray-400
            px-12
            py-1
            mr-5
            mb-4
            border-2
            shadow
            border-black
          "
          :href="link"
          >{{ button }}</a
        >
      </div>
      <g-image class="order-2 lg:order-none" :src="img" :alt="altImg" />
    </div>
    <div
      class="flex flex-wrap text-center lg:text-left lg:mt-10 lg:pt-10 -mx-2"
      v-else
    >
      <div class="lg:w-2/5 px-2 lg:pr-20 lg:mt-10 order-1 lg:order-none">
        <h2 class="text-6xl mb-6 mt-20 uppercase leading-none font-heading">
          <span class="text-blue-600">{{ slogan }}</span> {{ title }}
        </h2>
        <div class="mb-8 text-gray-700 leading-relaxed" v-html="excerpt"></div>
        <div v-if="button">
          <a
            v-if="link.includes('http')"
            target="_blank"
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
              rounded
              shadow
              rounded-full
            "
            :href="link"
            >{{ button }}</a
          >
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
              rounded
              shadow
              rounded-full
            "
            :href="link"
            >{{ button }}</a
          >
          <!-- <a class="text-gray-600 hover:underline" href="#">Learn more</a> -->
        </div>
      </div>
      <div class="lg:w-3/5 px-2 self-center">
        <g-image :src="img" :alt="altImg" />
      </div>
    </div>
  </section>
</template>

<script>
export default {
  props: [
    "title",
    "id",
    "slogan",
    "excerpt",
    "altImg",
    "image",
    "img2",
    "button",
    "button2",
    "button3",
    "link",
    "link2",
    "link3",
  ],
  computed: {
    img: function () {
      if (!this.image) return "";
      if (this.image.src) return this.image.src;
      return this.image;
    },
  },
};
</script>

<style scoped>
.bg-home {
  background: #70dfc9;
  background: -webkit-linear-gradient(to bottom, #ea1ff7, #70dfc9);
  background: linear-gradient(to bottom, #ea1ff7, #70dfc9);
  background-size: cover !important;
}
</style>