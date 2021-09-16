<template>
  <div
    class="flex flex-post px-0 sm:px-4 pb-8 mb-8"
    v-bind:class="{ 'no-border': !border }"
  >
    <a :href="path" class="post-card-image-link">
      <g-image
        :src="img(record.image)"
        :alt="record.title"
        class="post-card-image"
      ></g-image>
    </a>
    <div>
      <a :href="path">
        <h2 class="post-card-title mt-3">{{ record.title || record.name }}</h2>
        <p class="post-card-excerpt text-gray-700">{{ record.excerpt }}</p>
        <section
          class="flex flex-wrap post-tags container mx-auto relative py-1"
        >
          <a
            v-for="membership in record.memberships"
            :key="membership.id"
            :href="membership.path"
            class="text-xs bg-transparent hover:text-blue-700 py-1 px-2 mr-1 border hover:border-blue-500 border-gray-600 text-gray-700 rounded-full mb-2"
            >{{ membership.title }}</a
          >
        </section>
      </a>

      <div class="w-full post-card-meta pt-2">
        <div class="avatars">
          <div class="flex items-center">
            <div class="flex justify-between items-center">
              <ul class="list-none flex author-list m-0">
                <li
                  v-for="author in record.authors"
                  :key="author.id"
                  class="author-list-item"
                >
                  <a :href="author.path" v-tooltip="author.name">
                    <g-image
                      :src="img(author.image)"
                      :alt="author.name"
                      class="w-8 h-8 rounded-full bg-gray-200 border-2 border-white"
                    />
                  </a>
                </li>
              </ul>
            </div>

            <div class="flex flex-col text-xs leading-none uppercase">
              <p>
                <a :href="path">
                  <time :datetime="record.datetime">{{
                    record.humanTime
                  }}</time>
                </a>
              </p>
              <p>
                <a :href="path">
                  <time :datetime="record.datetime">{{
                    record.startDate
                  }}</time>
                </a>
                {{ record.status }}
              </p>
            </div>
          </div>
          <section
            class="post-tags container mx-auto relative py-3"
            v-if="displaytags()"
          >
            <a
              v-for="tag in record.tags"
              :key="tag.id"
              :href="tag.path"
              class="inline-block text-xs bg-transparent hover:text-blue-700 py-2 px-4 mr-2 border hover:border-blue-500 border-gray-600 text-gray-700 rounded-full"
              >{{ tag.title.replace("_", " ") }}</a
            >
          </section>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    record: {},
    showtags: false,
    pathPrefix: "",
    border: {
      type: Boolean,
      default: true,
    },
  },

  computed: {
    path() {
      if (this.pathPrefix) return this.pathPrefix + "/" + this.record.id;
      return this.record.path;
    },
  },
  methods: {
    displaytags() {
      return this.showtags;
    },
    img(image) {
      if (!image) return "";
      if (image.src) return image.src;
      return image;
    },
  },
};
</script>

<style scoped>
.post-card-excerpt {
  font-family: "Roboto", sans-serif;
  line-height: 1.2;
}

.post-card-image {
  max-width: 100%;
  /* height: auto; */
}
</style>
