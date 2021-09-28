<template>
  <Layout :hideHeader="true" :disableScroll="true">
    <div
      class="container sm:pxi-0 mx-auto overflow-x-hidden pt-6 px-4 text-center"
    >
      <!-- <div class="pt-8">
        <Alert v-if="showAlert" @clicked="linkCopied" />
        <section class="post-header container mx-auto px-0 mb-4 border-b">
          <h1 class="text-5xl font-medium leading-none mt-0">
            {{ $page.info.title }}
          </h1>
          <div
            class="text-2xl pt-4 pb-10 text-gray-700"
            v-html="$page.info.excerpt"
          ></div>
        </section>
        <section class="post-author-list mb-10 mx-0">
          <div class="flex items-center">
            <div class="flex justify-between items-center">
              <ul class="list-none flex author-list m-0">
                <li
                  v-for="author in $page.info.authors"
                  :key="author.id"
                  class="author-list-item"
                >
                  <g-link :to="author.path" v-tooltip="author.name">
                    <g-image
                      :src="author.image"
                      :alt="author.name"
                      class="
                        h-8
                        w-8
                        sm:h-10
                        sm:w-10
                        rounded-full
                        bg-gray-200
                        border-2 border-white
                      "
                    />
                  </g-link>
                </li>
              </ul>
            </div>

            <div class="pl-3 flex flex-col text-xs leading-none uppercase">
              <p>
                <span
                  v-for="(author, index) in $page.info.authors"
                  :key="author.id"
                >
                  <g-link
                    :to="author.path"
                    v-tooltip="author.name"
                    class="hover:underline"
                    >{{ author.name }}</g-link
                  >
                  <span v-if="index < $page.info.authors.length - 1">,</span>
                </span>
              </p>
              <p class="text-gray-700">
                <g-link :to="$page.info.path">
                  <time :datetime="$page.info.datetime">{{
                    $page.info.humanTime
                  }}</time>
                </g-link>
                &nbsp;&middot;&nbsp; {{ $page.info.timeToRead }} min read
                &nbsp;&middot;&nbsp;
                <g-link :to="$page.info.path">
                  <time :datetime="$page.info.datetime">{{
                    $page.info.startDate
                  }}</time>
                </g-link>
              </p>
            </div>

            <share-it
              icons
              :targets="['twitter', 'linkedin', 'facebook']"
              class="ml-auto"
            />

            <font-awesome
              :icon="['fas', 'link']"
              class="cursor-pointer"
              @click="copyLink"
            />
          </div>
        </section>
      </div> -->
      <!-- <section class="post-image mx-auto w-full">
        <g-image :src="$page.info.image"></g-image>
      </section> -->

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
          <g-image class="mx-auto w-full" :src="$page.info.image"></g-image>

          <div
            class="post-content-text text-xl text-center mx-auto"
            v-html="$page.info.content"
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
          :href="$page.info.link"
          >{{ $page.info.button }}</a
        >

        <!-- <section class="post-tags container mx-auto relative py-10">
          <g-link
            v-for="tag in $page.info.tags"
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
    info(id: $id) {
      id
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
      const cover = this.$page.info.image;
      if (cover != null) {
        coverImage = `${this.getBaseUrl}${this.$page.info.image.src}`;
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
      titleTemplate: `ThreeFold | ${this.$page.info.title}`,
      meta: [
        {
          key: "description",
          name: "description",
          content: this.$page.info.excerpt,
        },
        {
          key: "og:title",
          property: "og:title",
          content: this.$page.info.title,
        },
        {
          key: "og:description",
          property: "og:description",
          content: this.$page.info.excerpt,
        },
        {
          key: "og:image",
          property: "og:image",
          content: this.getCoverImage,
        },
        {
          name: "twitter:description",
          property: "twitter:description",
          content: this.$page.info.excerpt,
        },
        {
          name: "twitter:image",
          property: "twitter:image",
          content: this.getCoverImage,
        },
        {
          name: "twitter:title",
          property: "twitter:title",
          content: this.$page.info.title,
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

