<template>
  <Layout :hideHeader="true" :disableScroll="true">
    <div class="container sm:pxi-0 mx-auto min-h-screen pt-24">
      <div class="flex flex-row flex-wrap items-center mx-4 sm:mx-0">
        <div class="w-full md:w-5/6 md:pl-8 lg:pl-0">
          <h1
            class="
              uppercase
              leading-none
              text-4xl text-gray-800
              font-black font-heading
            "
          >
            {{ $page.job.title }}
          </h1>
        </div>
      </div>
      <section class="post-content mx-auto relative font-serif text-gray-700">
        <div class="mt-6 mb-8 text-gray-900" v-html="$page.job.content"></div>
        <a
          :href="$page.job.link"
          target="_blank"
          aria-current="page"
          class="
            inline-block
            bg-green-500
            text-sm
            learn-button
            hover:bg-green-600
            px-8
            py-2
            mr-2
            my-0
            rounded
            shadow
            rounded-full
            active--exact active
          "
          type="button"
        >
          {{ $page.job.button }}
        </a>
      </section>
    </div>
    <div
      class="container-fluid mx-auto pt-24"
      v-for="edge in $page.allCustomCta.edges"
      :key="edge.node.id"
    >
      <CustomCTA
        v-if="edge.node.id == 'careers'"
        :title="edge.node.title"
        :link="edge.node.link"
        :image="edge.node.image"
      />
    </div>
  </Layout>
</template>

<page-query>
  query($id: ID!) {
    job(id: $id) {
        id
        title
        content
        button
        link
      }
    allCustomCta {
        edges {
          node {
            id
            title
            link
            image
          }
        }
      }
}
</page-query>

<script>
import CustomCTA from "~/components/custom/sections/CustomCTA.vue";
export default {
  components: {
    CustomCTA,
  },
  metaInfo() {
    return {
      title: this.$page.job.title,
    };
  },
};
</script>

<style scoped>
.post-content {
  font-family: "Roboto", sans-serif !important;
}

h3 {
  color: black !important;
}

ul li {
  list-style-type: disc !important;
}

.learn-button {
  color: white;
}
</style>