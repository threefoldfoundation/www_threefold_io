<template>
  <section class="text-gray-600 body-font relative mt-20">
    <div class="absolute inset-0 bg-gray-300">
      <iframe
        width="100%"
        height="100%"
        frameborder="0"
        marginheight="0"
        marginwidth="0"
        title="map"
        scrolling="no"
        :src="map.map"
        style=""
      ></iframe>
    </div>
    <div class="container px-5 py-24 mx-auto flex">
      <div
        class="
          lg:w-1/3
          md:w-1/2
          bg-white
          rounded-lg
          p-8
          flex flex-col
          md:ml-auto
          w-full
          mt-10
          md:mt-0
          relative
          z-10
          shadow-md
        "
      >
        <h2 class="text-gray-900 text-lg mb-1 font-medium title-font">
          {{ contacts.title }}
        </h2>
        <p class="leading-relaxed text-gray-600">
          {{ contacts.subtitle }}
        </p>

        <div
          class="mt-8 text-base leading-6 text-gray-500"
          v-html="contacts.content"
        ></div>

        <p class="mt-6 text-base leading-6 text-gray-500">
          {{ contacts.emailTxt }}
          <a
            :href="contacts.email"
            class="font-medium text-gray-700 underline"
            >{{ contacts.email }}</a
          >.
        </p>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  props: ["id", "contacts", "map"],
};
</script>
