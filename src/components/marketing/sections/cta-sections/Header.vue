<template>
  <section class="mb-10 bg-no-repeats">
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
              shadow
              rounded-full
            "
            :href="link"
            >{{ button }}</a
          >
        </div>
      </div>
    </div>

    <div
      class="
        flex flex-wrap
        text-center
        items-center
        lg:text-left lg:mb-10 lg:mt-4
        -mx-2
      "
      v-if="id == 'mission'"
    >
      <div class="lg:w-1/2 px-2 lg:pr-10 lg:mt-10 order-1 lg:order-none">
        <h1
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
            text-center text-2xl text-extrabold
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
      <div class="lg:w-1/2 px-2">
        <g-image class="mx-auto" :src="img" :alt="altImg" />
      </div>
    </div>

    <!-- Farm -->
    <div
      class="
        flex flex-wrap
        text-center
        items-center
        lg:text-left lg:mb-20 lg:mt-24
        mt-10
        lg:mx-40
      "
      v-if="id == 'farm'"
    >
      <div class="lg:w-1/2 px-2"><g-image :src="img" :alt="altImg" /></div>
      <div class="lg:w-1/2 px-10 lg:mt-10 order-1 lg:order-none lg:max-w-2xl">
        <h2
          class="
            lg:text-left lg:text-7xl
            font-normal
            uppercase
            mb-6
            mt-20
            leading-none
            font-heading
          "
        >
          {{ title }}
          <br />
          <span class="block leading-none font-bold">{{ title2 }}</span>
        </h2>
        <div
          class="
            mb-8
            text-center text-2xl text-extrabold
            lg:text-left
            leading-tight
            mx-auto
          "
          v-html="excerpt"
        ></div>
        <div v-if="button" class="block lg:text-left text-center">
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
    </div>

    <!-- developer -->
    <div
      class="
        flex flex-wrap
        text-center
        items-center
        lg:mb-10 lg:mt-24
        mt-10
        lg:mx-40
      "
      v-if="id == 'developer'"
    >
      <div class="lg:w-1/2 px-2 lg:mt-10 order-1 lg:order-none lg:max-w-2xl">
        <h2
          class="
            lg:text-6xl
            font-normal
            uppercase
            mb-6
            mt-20
            leading-none
            font-heading
          "
        >
          {{ title }}
          <br />
          <span class="block leading-none font-bold">{{ title2 }}</span>
        </h2>
        <div
          class="
            mb-8
            text-center text-2xl text-extrabold
            leading-tight
            mx-auto
            lg:max-w-md
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

    <!-- <div
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
          
        </div>
      </div>
      <div class="lg:w-1/2 px-2 self-center">
        <g-image :src="img" :alt="altImg" />
      </div>
    </div> -->

    <div
      class="flex flex-wrap text-center lg:text-left lg:pt-10 -mx-2"
      v-if="id == 'tft'"
    >
      <div class="px-2 mt-10 order-1 lg:order-none mx-auto text-center">
        <div class="w-1/2 mx-auto px-2 self-center">
          <g-image :src="img" class="w-3/4 mx-auto" :alt="altImg" />
        </div>
        <h2
          class="
            h2
            text-5xl
            max-w-2xl
            mx-auto
            uppercase
            mb-6
            lg:mt-20
            leading-none
            font-heading
          "
        >
          {{ title }}
        </h2>
        <div
          class="mb-8 text-xl max-w-2xl mx-auto leading-relaxed"
          v-html="excerpt"
        ></div>
        <div class="quicklinks">
          <a :href="link" target="_blank"
            ><g-image :src="buttonImg" style="width: 200px" /></a
          ><a :href="link2" target="_blank"
            ><g-image :src="buttonImg2" style="width: 150px"
          /></a>
        </div>
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
        <div class="mb-8 mx-auto lg:text-2xl max-w-2xl" v-html="excerpt"></div>

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
      <g-image
        class="order-2 lg:order-none mx-auto w-full"
        :src="img"
        :alt="altImg"
      />
    </div>

    <div
      class="flex flex-wrap text-center lg:text-left lg:pt-10 lg:pb-10 -mx-2"
      v-else-if="id == 'home'"
    >
      <div class="px-3 lg:mt-5 order-1 lg:order-none mx-auto text-center">
        <h2
          class="
            lg:text-6xl
            font-normal
            uppercase
            mb-6
            mt-10
            leading-none
            font-heading
          "
        >
          {{ title }}
          <span class="block leading-none font-bold">{{ title2 }}</span>
        </h2>

        <h3 class="text-4xl leading-none font-light">{{ slogan }}</h3>
        <div
          class="mb-8 mx-auto lg:text-2xl text-xl max-w-3xl"
          v-html="excerpt"
        ></div>

        <a
          v-if="button && link.includes('http')"
          target="_blank"
          class="
            inline-block
            bg-white
            lg:text-lg
            learn-button
            hover:bg-gray-400
            px-12
            py-1
            mr-5
            mb-4
            border-2
            shadow
            border-black
            capitalize
          "
          :href="link"
          >{{ button }}</a
        >
        <a
          v-else-if="button"
          class="
            inline-block
            bg-white
            lg:text-lg
            learn-button
            hover:bg-gray-400
            px-12
            py-1
            mr-5
            mb-4
            border-2
            shadow
            border-black
            capitalize
          "
          :href="link"
          >{{ button }}</a
        >
      </div>
      <g-image
        class="order-2 lg:order-none mx-auto w-full"
        :src="img"
        :alt="altImg"
      />
    </div>
    <!-- conversation -->
    <div
      class="w-full max-w-6xl mx-auto lg:my-10"
      v-else-if="id == 'conversations'"
    >
      <g-image class="mx-auto lg:w-4/6 my-2 px-4" :src="img" :alt="altImg" />
      <div
        class="px-3 lg:mt-5 order-1 lg:order-none mx-auto text-center lg:mb-20"
      >
        <h2 class="md:text-6xl uppercase mb-2 mt-4 leading-none font-heading">
          {{ title }}
        </h2>
        <div class="mb-8 mx-auto lg:text-2xl max-w-2xl" v-html="excerpt"></div>

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
    </div>
    <!-- community -->
    <div
      class="flex flex-wrap text-center lg:text-left lg:pt-10 lg:pb-10 -mx-2"
      v-else-if="id == 'community'"
    >
      <div class="px-6 lg:mt-2 order-1 lg:order-none mx-auto text-center">
        <h2
          class="
            lg:text-6xl
            font-normal
            uppercase
            mb-2
            lg:mt-4
            mt-10
            leading-none
            font-heading
          "
        >
          {{ title }}
          <span class="block leading-none font-bold">{{ title2 }}</span>
        </h2>

        <h3 class="text-4xl leading-none font-light">{{ slogan }}</h3>
        <div
          class="mb-8 mx-auto lg:text-2xl text-xl lg:max-w-3xl"
          v-html="excerpt"
        ></div>

        <a
          v-if="button && link.includes('http')"
          target="_blank"
          class="
            inline-block
            bg-white
            lg:text-lg
            learn-button
            hover:bg-gray-400
            px-12
            py-1
            mr-5
            mb-4
            border-2
            shadow
            border-black
            capitalize
          "
          :href="link"
          >{{ button }}</a
        >
        <a
          v-else-if="button"
          class="
            inline-block
            bg-white
            lg:text-lg
            learn-button
            hover:bg-gray-400
            px-12
            py-1
            mr-5
            mb-4
            border-2
            shadow
            border-black
            capitalize
          "
          :href="link"
          >{{ button }}</a
        >
      </div>
      <g-image
        class="order-2 lg:order-none mx-auto w-full"
        :src="img"
        :alt="altImg"
      />
    </div>

    <div
      class="flex flex-wrap text-center lg:text-left lg:mt-10 lg:pt-10 lg:mx-40"
      v-else-if="id == 'oldsupport'"
    >
      <div class="lg:w-1/2 px-2 lg:mt-10 order-1 lg:order-none">
        <h2
          class="
            text-8xl
            mb-6
            mt-20
            uppercase
            leading-none
            font-heading
            lg:max-w-xl
          "
        >
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
        </div>
      </div>
      <div class="lg:w-1/2 px-2 self-center">
        <g-image :src="img" :alt="altImg" />
      </div>
    </div>
    <div
      class="flex flex-wrap text-center mx-4 lg:pt-4 pb-10"
      v-else-if="id == 'cloud'"
    >
      <div class="px-3 lg:mt-5 order-1 lg:order-none mx-auto text-center">
        <h2
          class="
            lg:text-5xl
            uppercase
            mb-6
            leading-none
            font-black font-heading
          "
        >
          {{ title }}
          <br />
          <span>{{ title2 }}</span>
        </h2>
        <div
          class="mb-8 mx-auto lg:text-2xl text-xl lg:max-w-4xl leading-normal"
          v-html="excerpt"
        ></div>
      </div>
      <div class="grid grid-cols-1 md:grid-cols-3 mx-auto items-center">
        <div class="w-full mb-4 border-b border-gray-600">
          <div class="arrow_up"></div>
          <g-link :to="link1" class="text-5xl font-extrabold">{{
            text1
          }}</g-link>
        </div>
        <div class="mb-4">
          <g-image
            class="mx-auto sm:w-1/2 lg:w-full"
            :src="img"
            :alt="altImg"
          />
        </div>
        <div class="w-full mb-4 border-b border-gray-600">
          <g-link :to="linkheader2" class="text-5xl font-extrabold">{{
            text2
          }}</g-link>
          <div class="arrow_down"></div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  props: [
    "title",
    "title2",
    "id",
    "slogan",
    "slogan2",
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
    "buttonImg",
    "buttonImg2",
    "text1",
    "link1",
    "text2",
    "linkheader2",
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
.quicklinks {
  box-sizing: border-box;
  -webkit-align-items: center;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  width: auto;
  display: inline-block;
  margin: 0 auto;
  border-radius: 10px;
  text-align: left;
  margin-top: 30px;
  -webkit-flex-wrap: wrap;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  margin-bottom: 60px;
}
.quicklinks img {
  height: auto;
  /* max-width: 150px; */
  display: inline-block;
  -webkit-filter: grayscale(100%);
  filter: grayscale(100%);
  position: relative;
  margin-right: 30px;
  -webkit-transition: all 0.2s ease;
  transition: all 0.2s ease;
  opacity: 0.5;
}

.quicklinks img:hover {
  opacity: 1;
  -webkit-transition: all 0.2s ease;
  transition: all 0.2s ease;
  -webkit-filter: grayscale(0%);
  filter: grayscale(0%);
}

.arrow_up,
.arrow_down {
  display: inline-block;
  margin-right: 10px;
  width: 0;
  height: 0;
  border-width: 0 12.5px 30px 12.5px;
  border-color: transparent transparent #000000 transparent;
  border-style: solid;
}
.arrow_down {
  margin-left: 10px;

  border-width: 35px 12.5px 0 12.5px;
  border-color: #000000 transparent transparent transparent;
}

a {
  font-family: "Orbitron", sans-serif !important;
}
hr {
  height: 1px;
  border-width: 0;
  color: gray;
  background-color: gray;
}

@media (max-width: 640px) {
  .bg-home {
    background-position: center !important;
  }
}
</style>