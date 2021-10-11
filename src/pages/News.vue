<template>
  <Layout>
    <!-- <NewsFilterHeader
      @selectedTopic="setTopic"
      @selectedYear="setYear"
      @selectedMonth="setMonth"
      @resetAll="resetAll"
      :topics="topics"
      :years="years"
      :months="months"
    /> -->

    <div
      class="container sm:pxi-0 mx-auto overflow-hidden"
      :style="{ 'min-height': contentHeight + 'px' }"
    >
      <div class="flex my-5">
        <FilterDropdown
          class="xs:w-2/3"
          @selectedTopic="setTopic"
          :topics="topics"
        />
        <SearchBox class="xs:w-1/3" v-model="search" />
      </div>

      <div v-if="search !== ''">
        <div v-if="searchResults.length > 0">
          <div class="flex flex-wrap news pt-12 pb-8 mt-8 mx-4 sm:-mx-4">
            <PostListItem
              v-for="post in searchResults"
              :key="post.node.id"
              :record="post.node"
            />
          </div>
        </div>
      </div>

      <div v-else class="flex flex-wrap news pt-12 mt-8 pb-8 mx-4 sm:-mx-4">
        <PostListItem
          v-for="edge in news.edges"
          :key="edge.node.id"
          :record="edge.node"
        />
      </div>
      <div
        class="text-center"
        v-if="news.edges.length == 0 || searchResults.length == 0"
      >
        <h2 class="inlibe-flex mx-auto text-gray-700 w-3/4">
          Your search didn't return any results. Please try again.
        </h2>
      </div>
    </div>
    <div class="pagination flex justify-center mb-8">
      <Pager :info="$page.entries.pageInfo" range="10" linkClass="pager-link" />
    </div>
  </Layout>
</template>

<page-query>
query($page: Int){
  entries: allNews(perPage: 10, page: $page, sortBy: "created", order: DESC, filter: {category: { contains: ["foundation"]}}) @paginate{
    totalCount
    pageInfo {
      totalPages
      currentPage
    }
    edges {
      node {
        id
        tags{
          id
          title
          path
        }
        excerpt
        category{
          id
          title
        }
        image(width:800)
        path
        humanTime : created(format:"DD MMM YYYY")
        datetime : created
      }
    }
  }
  markdownPage(id: "home") {
        id
        metaImg
  }

  topics:  allNewsTag(filter: { title: {in: ["blockchain", "experience", "technology", "farming", "community", "infrastructure", "impact"]}}) {
    edges{
      node{
				title        
      }
    }
  }
}

</page-query>

<script>
import NewsFilterHeader from "~/components/custom/NewsFilterHeader.vue";
import PostListItem from "~/components/custom/Cards/PostListItem.vue";
import { Pager } from "gridsome";
import SearchBox from "~/components/custom/SearchBox.vue";
import FilterDropdown from "~/components/custom/FilterDropdown.vue";
export default {
  data() {
    const allMonths = [
      "All Months",
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December",
    ];
    const currYear = new Date().getFullYear();
    var years = ["All Years"];
    var r = this.range(2019, currYear);
    r.forEach((year) => years.push(String(year)));

    return {
      selectedTopic: "Popular Topics",
      selectedYear: "All Years",
      selectedMonth: "All Months",
      months: allMonths,
      years: years,
      listArchive: false,
      archiveButtonText: "Archive",
      search: "",
    };
  },

  metaInfo() {
    return {
      title: "",
      titleTemplate: "ThreeFold | News",
      meta: [
        {
          key: "description",
          name: "description",
          content: "Updates and announcements from the ThreeFold Foundation.",
        },
        {
          key: "og:title",
          property: "og:title",
          content: "ThreeFold | News",
        },
        {
          key: "og:description",
          property: "og:description",
          content: "Updates and announcements from the ThreeFold Foundation.",
        },
        {
          key: "og:image",
          property: "og:image",
          content: this.getImg,
        },
        {
          key: "twitter:description",
          name: "twitter:description",
          content: "Updates and announcements from the ThreeFold Foundation.",
        },
        {
          key: "twitter:image",
          property: "twitter:image",
          content: this.getImg,
        },
        {
          key: "twitter:title",
          property: "twitter:title",
          content: "ThreeFold | News",
        },
      ],
    };
  },
  components: {
    PostListItem,
    Pager,
    NewsFilterHeader,
    SearchBox,
    FilterDropdown,
  },
  methods: {
    setTopic: function (topic) {
      this.selectedTopic = topic;
    },
    setYear(year) {
      this.selectedYear = year;
    },
    setMonth(month) {
      this.selectedMonth = month;
    },
    resetAll() {
      this.selectedTopic = "Popular Topics";
      this.selectedYear = "All Years";
      this.selectedMonth = "All Months";
    },
    toggleListArchive() {
      if (this.listArchive) {
        this.listArchive = false;
      } else {
        this.listArchive = true;
      }
    },

    // toggleArchiveButtonText() {
    //   if (this.archiveButtonText == "Archive") {
    //     this.archiveButtonText = "News";
    //     this.resetAll()
    //   } else {
    //     this.archiveButtonText = "Archive"
    //   }
    // },
    range(start, end, step) {
      var range = [];
      var typeofStart = typeof start;
      var typeofEnd = typeof end;

      if (step === 0) {
        throw TypeError("Step cannot be zero.");
      }

      if (typeofStart == "undefined" || typeofEnd == "undefined") {
        throw TypeError("Must pass start and end arguments.");
      } else if (typeofStart != typeofEnd) {
        throw TypeError("Start and end arguments must be of same type.");
      }

      typeof step == "undefined" && (step = 1);

      if (end < start) {
        step = -step;
      }

      if (typeofStart == "number") {
        while (step > 0 ? end >= start : end <= start) {
          range.push(start);
          start += step;
        }
      } else if (typeofStart == "string") {
        if (start.length != 1 || end.length != 1) {
          throw TypeError("Only strings with one character are supported.");
        }

        start = start.charCodeAt(0);
        end = end.charCodeAt(0);

        while (step > 0 ? end >= start : end <= start) {
          range.push(String.fromCharCode(start));
          start += step;
        }
      } else {
        throw TypeError("Only string and number types are supported");
      }

      return range;
    },
  },
  computed: {
    topics: function () {
      var res = ["Popular Topics"];
      this.$page.topics.edges.forEach((edge) => res.push(edge.node.title));
      return res;
    },

    baseurl: function () {
      return "/news/";
    },

    news() {
      var res = {};
      var old = this.$page.entries;
      res.totalCount = old.totalCount;
      res.pageInfo = old.pageInfo;
      res.edges = [];

      for (var i = 0; i < old.edges.length; i++) {
        var node = old.edges[i].node;
        var nodeDate = new Date(node.datetime);
        const diff = Math.abs(new Date() - nodeDate);
        const diffDays = Math.ceil(diff / (1000 * 60 * 60 * 24));
        var selected = false;

        // if (!this.listArchive && diffDays <= 180) {
        //   selected = true;
        // } else if (this.listArchive && diffDays > 180) {
        //   selected = true;
        // }

        // if (!selected) continue;

        // Now check topic
        var topics = ["Popular Topics"];
        node.tags.forEach((tag) => topics.push(tag.title));

        if (!topics.includes(this.selectedTopic)) continue;

        // Check year
        var years = ["All Years", String(nodeDate.getFullYear())];
        if (!years.includes(this.selectedYear)) continue;

        // Check Month
        var months = ["All Months", this.months[nodeDate.getMonth() + 1]];

        if (!months.includes(this.selectedMonth)) continue;
        res.edges.push({ node: node, id: node.id });
      }
      return res;
    },
    contentHeight() {
      if (process.isClient) {
        return window.innerHeight - 570;
      }
    },
    getImg() {
      let img = "";
      if (process.isClient) {
        img = `${window.location.origin}${this.$page.markdownPage.metaImg.src}`;
      }
      return img;
    },
    searchResults() {
      return this.$page.entries.edges.filter((post) => {
        return post.node.excerpt
          .toLowerCase()
          .includes(this.search.toLowerCase().trim());
      });
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