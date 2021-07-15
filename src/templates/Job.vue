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
        <div class="mt-6 mb-8 text-gray-600" v-html="$page.job.content"></div>
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
.post-content {
  font-family: "Roboto", sans-serif !important;
}

h3{
  color: black !important;
}

ul li {
  list-style-type: disc !important;
}
</style>