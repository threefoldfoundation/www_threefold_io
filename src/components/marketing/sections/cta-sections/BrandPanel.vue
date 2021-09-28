<template>
  <div :class="{ 'bg-about': id == 'about-us' && brandPanel3 }">
    <div class="mx-auto py-10">
      <!-- oldtoken -->
      <div
        v-if="id == 'oldtoken'"
        class="
          brandpanel
          rounded-lg
          shadow-xl
          overflow-hidden
          lg:grid lg:grid-cols-2
          lg:gap-4
        "
      >
        <div class="relative pb-3/5 -mt-6 md:pb-1/2">
          <g-image
            class="
              absolute
              brandpanel
              inset-0
              w-full
              h-full
              translate-x-0 translate-y-center
              rounded-md
              object-fill object-left-top
              sm:translate-x-0
              lg:translate-y-20
            "
            :src="image"
            :alt="brand.title"
          />
        </div>
        <div
          class="
            pt-10
            pb-10
            px-6
            sm:pt-16
            sm:px-10
            lg:py-16
            lg:pr-0
            xl:py-20
            xl:px-15
          "
        >
          <div class="lg:self-center">
            <h2
              class="
                text-4xl
                mb-2
                uppercase
                leading-tight
                font-semibold font-heading
              "
            >
              <span class="block">{{ brand.title }}</span>
              <span class="block" v-if="brand.subtitle">{{
                brand.subtitle
              }}</span>
            </h2>
            <div class="py-6 mt-4 text-gray-600" v-html="brand.content"></div>
            <a
              v-if="brand.btnTxt"
              target="_blank"
              :href="brand.sourceUrl"
              class="
                bg-blue-900
                text-sm
                learn-button
                hover:bg-blue-800
                text-white
                px-12
                py-2
                mr-3
                shadow
                rounded-full
              "
              >{{ brand.btnTxt }}</a
            >
          </div>
        </div>
      </div>

      <!-- why -->
      <div
        v-else-if="id == 'why'"
        class="
          whybrand
          brandpanel
          rounded-lg
          shadow-xl
          overflow-hidden
          lg:grid lg:grid-cols-2
          lg:gap-4
        "
      >
        <div
          class="
            pt-10
            pb-12
            px-6
            sm:pt-16
            sm:px-16
            lg:py-16
            lg:pr-0
            xl:py-20
            xl:px-15
          "
        >
          <div class="lg:self-center text-center">
            <h2
              class="
                text-4xl
                mb-2
                uppercase
                leading-tight
                font-semibold font-heading
              "
            >
              <span class="block">{{ brand.title }}</span>
              <span class="block" v-if="brand.subtitle">{{
                brand.subtitle
              }}</span>
            </h2>
            <div class="py-6 mt-4 mx-4 text-black" v-html="brand.content"></div>
            <a
              :href="brand.sourceUrl"
              class="
                bg-gray-700
                text-sm
                learn-button
                hover:bg-57EEF8-400
                text-white
                px-12
                py-2
                mr-3
                shadow
                rounded-full
              "
              >{{ brand.btnTxt }}</a
            >
          </div>
        </div>
        <div class="relative pb-3/5 -mt-6 md:pb-1/2">
          <g-image
            class="
              absolute
              brandpanel
              inset-0
              w-full
              h-full
              transform
              translate-x-0 translate-y-6
              rounded-md
              object-fill object-left-top
              sm:translate-x-0
              lg:translate-y-20
            "
            :src="image"
            :alt="brand.title"
          />
        </div>
      </div>

      <!-- home -->
      <div
        v-else-if="id == 'home'"
        class="flex flex-wrap lg:text-left lg:pt-16 px-4"
      >
        <div class="lg:w-1/2 lg:px-6 self-center">
          <g-image :src="image" :alt="brand.title" />
        </div>
        <div class="lg:w-1/2 lg:px-10 order-1 lg:order-none lg:self-center">
          <div class="">
            <h2 class="lg:text-6xl mb-8 uppercase leading-none font-heading">
              <span class="block">{{ brand.title }}</span>
              <!-- <span class="block" v-if="brand.subtitle">{{
                brand.subtitle
              }}</span> -->
            </h2>
            <div
              class="pb-6 text-gray-900 text-2xl leading-tight tracking-wide"
              v-html="brand.content"
            ></div>
            <a
              v-if="brand.btnTxt"
              target="_blank"
              :href="brand.sourceUrl"
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
              >{{ brand.btnTxt }}</a
            >

            <a
              v-if="brand.button2 && brand.link2.includes('http')"
              target="_blank"
              :href="brand.link2"
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
              >{{ brand.button2 }}</a
            >

            <a
              v-else
              :href="brand.link2"
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
              >{{ brand.button2 }}</a
            >
          </div>
        </div>
      </div>

      <!-- About us -->
      <div
        v-else-if="id == 'about-us' && !brandPanel2 && !brandPanel3"
        class="flex flex-wrap text-left lg:my-10 lg:px-20"
      >
        <div class="lg:w-1/2 px-2 self-center">
          <g-image class="lg:w-2/3 mx-auto" :src="image" :alt="brand.title" />
        </div>
        <div class="lg:w-1/2 lg:mt-10 order-1 lg:order-none text-left px-4">
          <div class="lg:self-center">
            <h2 class="lg:text-6xl mb-8 uppercase leading-none font-heading">
              <span class="block">{{ brand.title }}</span>
              <span class="block" v-if="brand.subtitle">{{
                brand.subtitle
              }}</span>
            </h2>
            <div
              class="py-6 mt-4 text-2xl leading-tight tracking-wide"
              v-html="brand.content"
            ></div>
            <a
              v-if="brand.btnTxt"
              target="_blank"
              :href="brand.sourceUrl"
              class="
                bg-blue-900
                text-lg
                learn-button
                hover:bg-blue-800
                text-white
                px-12
                py-2
                mr-3
                shadow
                rounded-full
              "
              >{{ brand.btnTxt }}</a
            >
          </div>
        </div>
      </div>

      <div
        v-else-if="id == 'about-us' && brandPanel2"
        class="flex flex-wrap lg:text-left lg:pt-16 px-4 lg:mb-20 lg:px-20"
      >
        <div class="lg:w-1/2 px-2 lg:mt-10 order-1 lg:order-none">
          <div class="lg:self-center">
            <h2 class="lg:text-6xl mb-8 uppercase leading-none font-heading">
              <span class="block">{{ brand.title }}</span>
              <span class="block" v-if="brand.subtitle">{{
                brand.subtitle
              }}</span>
            </h2>
            <div
              class="pb-6 text-gray-900 text-2xl leading-tight tracking-wide"
              v-html="brand.content"
            ></div>
            <a
              v-if="brand.btnTxt"
              target="_blank"
              :href="brand.sourceUrl"
              class="
                inline-block
                bg-gray-900
                text-xl
                learn-button
                hover:bg-gray-800
                text-gray-100
                px-16
                py-1
                mb-4
                shadow
                rounded-full
                tft_subtitle
                tracking-widev
              "
              >{{ brand.btnTxt }}</a
            >
          </div>
        </div>
        <div class="lg:w-1/2 px-2 self-center">
          <g-image class="lg:w-2/3 mx-auto" :src="image" :alt="brand.title" />
        </div>
      </div>

      <div
        v-else-if="id == 'about-us' && brandPanel3"
        class="flex flex-wrap lg:text-left lg:p-20 px-4"
      >
        <div class="lg:w-1/2 px-2 self-center">
          <g-image class="lg:w-2/3 mx-auto" :src="image" :alt="brand.title" />
        </div>
        <div class="lg:w-1/2 px-2 lg:mt-10 order-1 lg:order-none">
          <div class="lg:self-center">
            <h2 class="lg:text-6xl mb-8 uppercase leading-none font-heading">
              <span class="block">{{ brand.title }}</span>
              <span class="block" v-if="brand.subtitle">{{
                brand.subtitle
              }}</span>
            </h2>
            <div
              class="pb-6 text-gray-900 text-2xl leading-tight tracking-wide"
              v-html="brand.content"
            ></div>
            <a
              v-if="brand.btnTxt"
              target="_blank"
              :href="brand.sourceUrl"
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
                tracking-widev
              "
              >{{ brand.btnTxt }}</a
            >
          </div>
        </div>
      </div>

      <!-- grid -->
      
      <div
        v-else-if="id == 'grid' && !brandPanel2 && !brandPanel3"
        class="flex flex-wrap text-left"
      >
        <div class="lg:w-1/2 px-2 lg:mt-10 order-1 lg:order-none text-left lg:self-center lg:px-32">
          <div class="px-2">
            <h2 class="lg:text-6xl mb-6 uppercase leading-none font-heading">
              <span class="block">{{ brand.title }}</span>
              <span class="block" v-if="brand.subtitle">{{
                brand.subtitle
              }}</span>
            </h2>
            <div
              class="
                py-6
                mt-4
                text-gray-900 text-2xl
                leading-tight
                tracking-wide
              "
              v-html="brand.content"
            ></div>
            <a
              
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
              v-if="brand.btnTxt && brand.sourceUrl.includes('http')"
              target="_blank"
              :href="brand.sourceUrl"
              >{{ brand.btnTxt }}</a
            >
            <a
              
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
              v-else
              :href="brand.sourceUrl"
              >{{ brand.btnTxt }}</a
            >
          </div>
        </div>
        <div class="lg:w-1/2">
          <g-image class="mx-auto" :src="image" :alt="brand.title" />
        </div>
      </div>

      <div
        v-else-if="id == 'grid' && brandPanel2"
        class="flex flex-wrap lg:text-left lg:pt-16 px-2"
      >
        <div class="lg:w-1/2 self-center">
          <g-image class="" :src="image" :alt="brand.title" />
        </div>
        <div class="lg:w-1/2 px-2 lg:mt-10 order-1 lg:order-none lg:px-32 lg:self-center">
          <div class="px-2">
            <h2 class="lg:text-6xl mb-8 uppercase leading-none font-heading">
              {{ brand.title }}
            </h2>
            <div
              class="pb-6 text-gray-900 text-2xl leading-tight tracking-wide"
              v-html="brand.content"
            ></div>
            <a
              v-if="brand.btnTxt"
              target="_blank"
              :href="brand.sourceUrl"
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
              "
              >{{ brand.btnTxt }}</a
            >
          </div>
        </div>
      </div>

      <div
        v-else-if="id == 'grid' && brandPanel3"
        class="flex flex-wrap lg:text-left lg:pt-16 px-2"
      >
        <div class="lg:w-1/2 px-2 lg:mt-10 order-1 lg:order-none lg:px-32 lg:self-center">
          <div class="">
            <h2 class="lg:text-6xl mb-8 uppercase leading-none font-heading">
              {{ brand.title }}
            </h2>
            <div
              class="pb-6 text-gray-900 text-2xl leading-tight tracking-wide"
              v-html="brand.content"
            ></div>
            <a
              v-if="brand.btnTxt"
              target="_blank"
              :href="brand.sourceUrl"
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
              >{{ brand.btnTxt }}</a
            >
             <a
              v-if="brand.btnTxt2"
              target="_blank"
              :href="brand.sourceUrl2"
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
              >{{ brand.btnTxt2 }}</a
            >
          </div>
        </div>
        <div class="lg:w-1/2 px-2 self-center">
          <g-image class="mx-auto" :src="image" :alt="brand.title" />
        </div>
      </div>

       <div
        v-else-if="id == 'grid' && brandPanel4"
        class="flex flex-wrap lg:text-left lg:pt-16 px-2"
      >
        <div class="lg:w-1/2 px-2 lg:mt-10 order-1 lg:order-none lg:px-32 lg:self-center">
          <div class="">
            <h2 class="lg:text-6xl mb-8 uppercase leading-none font-heading">
              {{ brand.title }}
            </h2>
            <div
              class="pb-6 text-gray-900 text-2xl leading-tight tracking-wide"
              v-html="brand.content"
            ></div>
            <a
              v-if="brand.btnTxt"
              :href="brand.sourceUrl"
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
              >{{ brand.btnTxt }}</a
            >
             <a
              v-if="brand.btnTxt2"
              :href="brand.sourceUrl2"
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
              >{{ brand.btnTxt2 }}</a
            >
          </div>
        </div>
        <div class="lg:w-1/2 px-2 self-center">
          <g-image class="mx-auto" :src="image" :alt="brand.title" />
        </div>
      </div>

      <!-- token -->
      <div
        v-else-if="id == 'token' && !brandPanel2 && !brandPanel3"
        class="flex flex-wrap text-left mt-24"
      >
        <div class="lg:w-1/2 lg:px-32 lg:mt-5 order-1 lg:order-none text-left lg:self-center">
          <div class="px-2">
            <h2 class="lg:text-6xl mb-6 uppercase leading-none font-heading">
              <span class="block">{{ brand.title }}</span>
              <span class="block" v-if="brand.subtitle">{{
                brand.subtitle
              }}</span>
            </h2>
            <div
              class="
                py-6
                mt-4
                max-w-md
                text-gray-900 text-2xl
                leading-tight
                tracking-wide
              "
              v-html="brand.content"
            ></div>
          </div>
        </div>
        <div class="lg:w-1/2">
          <g-image class="mx-auto" :src="image" :alt="brand.title" />
        </div>
      </div>

      <div
        v-else-if="id == 'token' && brandPanel2"
        class="flex flex-wrap lg:text-left lg:pt-16 px-4"
      >
        <div class="lg:w-1/2 self-center">
          <g-image class="" :src="image" :alt="brand.title" />
        </div>
        <div class="lg:w-1/2 px-2 lg:mt-10 order-1 lg:order-none lg:px-32 lg:self-center">
          <div class="px-2">
            <h2 class="lg:text-6xl mb-8 uppercase leading-none font-heading">
              {{ brand.title }}
            </h2>
            <div
              class="pb-6 text-gray-900 text-2xl leading-tight tracking-wide"
              v-html="brand.content"
            ></div>
            <a
              v-if="brand.btnTxt"
              target="_blank"
              :href="brand.sourceUrl"
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
              "
              >{{ brand.btnTxt }}</a
            >
          </div>
        </div>
      </div>

      <div
        v-else-if="id == 'token' && brandPanel3"
        class="flex flex-wrap lg:text-left lg:pt-16 px-2"
      >
        <div class="lg:w-1/2 px-2 lg:mt-10 order-1 lg:order-none lg:self-center lg:px-32">
          <div class="">
            <h2 class="lg:text-6xl mb-8 uppercase leading-none font-heading">
              {{ brand.title }}
            </h2>
            <div
              class="pb-6 text-gray-900 text-2xl leading-tight tracking-wide"
              v-html="brand.content"
            ></div>
            <a
              v-if="brand.btnTxt"
              target="_blank"
              :href="brand.sourceUrl"
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
              >{{ brand.btnTxt }}</a
            >
          </div>
        </div>
        <div class="lg:w-1/2 px-2 self-center">
          <g-image class="mx-auto" :src="image" :alt="brand.title" />
        </div>
      </div>

      <div
        v-else
        class="
          brandpanel
          bg-gray-900
          rounded-lg
          shadow-xl
          overflow-hidden
          lg:grid lg:grid-cols-2
          lg:gap-4
        "
      >
        <div
          class="
            pt-10
            pb-12
            px-6
            sm:pt-16
            sm:px-16
            lg:py-16
            lg:pr-0
            xl:py-20
            xl:px-15
          "
        >
          <div class="lg:self-center">
            <h2
              class="text-3xl leading-9 font-extrabold text-white sm:leading-10"
            >
              <span class="block">{{ brand.title }}</span>
              <span class="block" v-if="brand.subtitle">{{
                brand.subtitle
              }}</span>
            </h2>
            <div class="py-6 mt-4 mx-4 text-white" v-html="brand.content"></div>
            <!-- <a
              :href="brand.sourceUrl"
              class="bg-teal-300 text-sm learn-button hover:bg-57EEF8-400 text-gray-900 px-12 py-2 mr-3 rounded shadow rounded-full"
              >{{ brand.btnTxt }}</a
            > -->
          </div>
        </div>
        <div class="relative pb-3/5 -mt-6 md:pb-1/2">
          <g-image
            class="
              absolute
              brandpanel
              inset-0
              w-full
              h-full
              transform
              translate-x-0 translate-y-6
              rounded-md
              object-fill object-left-top
              sm:translate-x-0
              lg:translate-y-20
            "
            :src="image"
            :alt="brand.title"
          />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["brand", "id", "brandPanel2", "brandPanel3"],
  computed: {
    image() {
      return this.brand.image.src
        ? this.brand.image.src
        : require(`!!assets-loader!@images/brandPanel/${this.brand.image}`);
    },
  },
};
</script>

<style scoped>
.bg-about {
  background: #70dfc9;
  background: -webkit-linear-gradient(to right, #70dfc9, #ea1ff7);
  background: linear-gradient(to right, #70dfc9, #ea1ff7);
}
</style>