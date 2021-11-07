<template>
  <Layout :hideHeader="true" :disableScroll="true">
    <div
      class="container sm:pxi-0 mx-auto overflow-x-hidden pt-6 px-4 text-center"
    >
      <div class="py-12">
        <section
          class="
            post-content
            container
            mx-auto
            relative
            font-serif
            text-gray-900 text-center
          "
        >
          <g-image class="mx-auto w-full" :src="$page.dev.image"></g-image>

          <div
            class="post-content-text text-xl text-center mx-auto"
            v-html="$page.dev.content"
          ></div>
        </section>

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
            my-8
            border-2
            shadow
            border-black
          "
          :href="$page.dev.link"
          >{{ $page.dev.button }}</a
        >

        <!-- <section class="post-tags container mx-auto relative py-10">
          <g-link
            v-for="tag in $page.dev.tags"
            :key="tag.id"
            :to="tag.path"
            class="
              text-xs
              bg-transparent
              hover:text-blue-700
              py-2
              px-4
              mr-2
              border
              hover:border-blue-500
              border-gray-600
              text-gray-700
              rounded-full
            "
            >{{ tag.title }}</g-link
          >
        </section> -->
      </div>
    </div>
  </Layout>
</template>

<page-query>
  query($id: ID!) {
    dev(id: $id) {
      id
      title
      content
      image
      button
      link
    }
    metadata {
      siteUrl
    }
  }
</page-query>

<script>
import PostListItem from "~/components/custom/Cards/PostListItem.vue";
import Alert from "~/components/custom/Alert.vue";
export default {
  components: {
    PostListItem,
    Alert,
  },
  data() {
    return {
      showAlert: false,
    };
  },
  methods: {
    copyLink() {
      const el = document.createElement("input");
      el.value = window.location.href;
      document.body.appendChild(el);
      el.select();
      document.execCommand("copy");
      document.body.removeChild(el);
      this.showAlert = true;
    },
    linkCopied(val) {
      this.showAlert = val;
    },
    img(image) {
      if (!image) return "";
      if (image.src) return image.src;
      return image;
    },
  },
  computed: {
    getCoverImage() {
      let coverImage = "";
      const cover = this.$page.dev.image;
      if (cover != null) {
        coverImage = `${this.getBaseUrl}${this.$page.dev.image.src}`;
      }
      return coverImage;
    },
    getBaseUrl() {
      return this.$page.metadata.siteUrl;
    },
  },
  metaInfo() {
    return {
      title: "",
      titleTemplate: `ThreeFold | ${this.$page.dev.id}`,
      meta: [
        {
          key: "description",
          name: "description",
          content: this.$page.dev.excerpt,
        },
        {
          key: "og:title",
          property: "og:title",
          content: this.$page.dev.title,
        },
        {
          key: "og:description",
          property: "og:description",
          content: this.$page.dev.excerpt,
        },
        {
          key: "og:image",
          property: "og:image",
          content: this.getCoverImage,
        },
        {
          name: "twitter:description",
          property: "twitter:description",
          content: this.$page.dev.excerpt,
        },
        {
          name: "twitter:image",
          property: "twitter:image",
          content: this.getCoverImage,
        },
        {
          name: "twitter:title",
          property: "twitter:title",
          content: this.$page.dev.title,
        },
        {
          name: "twitter:card",
          property: "twitter:card",
          content: "summary_large_image",
        },
      ],
    };
  },
};
</script>

