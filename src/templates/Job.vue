<template>
  <Layout :hideHeader="true" :disableScroll="true">
    <div
      class="container sm:pxi-0 mx-auto min-h-screen overflow-x-hidden pt-24"
    >
      <div class="flex flex-row flex-wrap items-center mx-4 sm:mx-0">
        <div class="w-full md:w-5/6 md:pl-8 lg:pl-0">
          <h1 class="pb-0 mb-0 mt-0 text-4xl font-bold">
            {{ $page.job.title }}
          </h1>
        </div>
      </div>
      <section
        class="post-content container mx-auto relative font-serif text-gray-700"
      >
        <div class="post-content-text text-lg" v-html="$page.job.content"></div>
      </section>
    </div>
  </Layout>
</template>

<page-query>
  query($id: ID!) {
    job(id: $id) {
        id
        title
        content
      }
    }
</page-query>

<script>
export default {
  metaInfo() {
    return {
      title: this.$page.job.title,
    };
  },
};
</script>

<style scoped>
h3 {
  font-family: "Roboto", sans-serif;
}
</style>