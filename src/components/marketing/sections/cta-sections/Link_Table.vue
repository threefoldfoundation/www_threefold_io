
<template>
  <section id="table_link">
    <div
      class="
        max-w-screen-2xl
        mx-auto
        py-12
        px-4
        text-center
        sm:px-6
        lg:py-16 lg:px-8
      "
    >
      <div v-if="main">
        <h2
          class="
            lg:text-6xl
            text-center
            uppercase
            mb-8
            leading-none
            font-normal font-heading
          "
        >
          {{ main.title1 }}
          <br />
          <span class="font-bold">{{ main.title2 }}</span>
        </h2>
      </div>
      <div class="xl:grid xl:grid-cols-3 mx-auto xl:gap-2">
        <div
          class="mt-12 grid md:grid-cols-3 sm:grid-cols-2 xl:mt-0 xl:col-span-3"
        >
          <div
            v-for="footersLink in record.items"
            :key="footersLink.title"
            class=""
          >
            <div>
              <h2
                class="
                  text-4xl
                  leading-5
                  py-6
                  ml-5
                  font-extrabold
                  tracking-wider
                  capitalize
                "
              >
                {{ footersLink.title }}
              </h2>
              <ul class="mt-4 space-y-5 footerslink">
                <li v-for="item in footersLink.links" :key="item.name">
                  <a
                    v-if="item.link.includes('http')"
                    :href="item.link"
                    target="_blank"
                    class="text-2xl mb-4 leading-5 hover:text-gray-900"
                  >
                    {{ item.name }}
                  </a>
                  <a
                    v-else
                    :href="item.link"
                    class="text-2xl leading-5 hover:text-gray-900"
                  >
                    {{ item.name }}
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  props: ["id", "record", "main"],
};
</script>

<style scoped>
ul {
  list-style-type: none;
}
</style>
