<template>
  <Layout>
    <TagFilterHeader
      :tags="memberships"
      selected="all"
      v-if="$page.memberships.edges.length > 1"
    />
    <div class="container sm:pxi-0 mx-auto mt-8 overflow-x-hidden">
      <div class="flex flex-wrap with-large pt-8 pb-8 mx-4 sm:-mx-4">
        <PostListItem
          :showtags="true"
          v-for="person in $page.entries.edges"
          :key="person.id"
          :record="person.node"
        />
      </div>
      <div class="text-center" v-if="$page.entries.edges.length == 0">
        <h2 class="inlibe-flex mx-auto text-gray-700 w-3/4">No results</h2>
      </div>
    </div>
    <div class="pagination flex justify-center mb-8">
      <Pager :info="$page.entries.pageInfo" range="10" linkClass="pager-link" />
    </div>
  </Layout>
</template>

<page-query>
query($page: Int){
  entries: allPerson (perPage: 25, page: $page, sortBy: "rank", order: ASC, filter: {category: { contains: ["foundation"]}}) @paginate{
    totalCount
    pageInfo {
      totalPages
      currentPage
    }
    edges {
      node {
        path
        content
        excerpt
        name
        rank
        bio
        linkedin
        websites
        countries
        cities
        image(width:800)
        private
        memberships {
          id
          path
          title
        }
      }
    }
  }

    markdownPage(id: "home") {
        id
        metaImg
  }

   memberships: allMembership(filter: {title: {in: ["cofounders", "tech", "foundation", "ambassadors", "matchmakers", "farmers", "aci_members", "partners", "wisdom_council", "technology_council", "grid_guardians"]}}){
     edges{
      node{
        id
        title
        path
      }
    }
  }
}
</page-query>

<script>
import PostListItem from "~/components/custom/Cards/PostListItem.vue";
import TagFilterHeader from "~/components/custom/TagFilterHeader.vue";
import Pagination from "~/components/custom/Pagination.vue";
import { Pager } from "gridsome";

export default {
  components: {
    PostListItem,
    TagFilterHeader,
    Pagination,
    Pager,
  },
  metaInfo() {
    return {
      title: "",
      titleTemplate: "ThreeFold | People",
      meta: [
        {
          key: "description",
          name: "description",
          content:
            "Meet the wide range of passionate and dedicated individuals involved in the ThreeFold movement.",
        },
        {
          key: "og:title",
          property: "og:title",
          content: "ThreeFold | People",
        },
        {
          key: "og:description",
          property: "og:description",
          content:
            "Meet the wide range of passionate and dedicated individuals involved in the ThreeFold movement.",
        },
        {
          key: "og:image",
          property: "og:image",
          content: this.getImg,
        },
        {
          key: "twitter:description",
          name: "twitter:description",
          content:
            "Meet the wide range of passionate and dedicated individuals involved in the ThreeFold movement.",
        },
        {
          key: "twitter:image",
          property: "twitter:image",
          content: this.getImg,
        },
        {
          key: "twitter:title",
          property: "twitter:title",
          content: "ThreeFold | People",
        },
      ],
    };
  },
  computed: {
    memberships() {
      var res = [{ title: "All", path: "/people" }];
      this.$page.memberships.edges.forEach((edge) =>
        res.push({ title: edge.node.title, path: edge.node.path })
      );
      return res;
    },
    getImg() {
      let img = "";
      if (process.isClient) {
        img = `${window.location.origin}${this.$page.markdownPage.metaImg.src}`;
      }
      return img;
    },
    baseurl: function () {
      return "/people/";
    },
  },
};
</script>
<style>
.pagination {
  display: inline-block;
  font-size: 1.5rem;
  text-align: center;
  width: 100%;
  color: black;
}
.pagination a {
  text-align: center;
  padding: 0.6rem 1.2rem;
  text-decoration: none;
}
.active {
  background-color: #70dfc9;
  color: white;
}
</style>