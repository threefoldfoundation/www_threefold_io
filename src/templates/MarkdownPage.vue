<template>
  <Layout :hideHeader="true" :disableScroll="true">
    <div
      class="container-fluid sm:pxi-0 mx-auto overflow-x-hidden py-5"
      v-if="$page.markdownPage.id == 'careers'"
    >
      <g-image
        class="w-100 mx-auto"
        v-if="$page.markdownPage.solution_image"
        :src="$page.markdownPage.solution_image.src"
      />
    </div>
    <div class="container sm:pxi-0 mx-auto overflow-x-hidden py-5">
      <Header
        v-if="
          $page.markdownPage.id !== 'contact' &&
          $page.markdownPage.header_title &&
          $page.markdownPage.header_title != ''
        "
        :id="$page.markdownPage.id"
        :title="$page.markdownPage.header_title"
        :slogan="$page.markdownPage.header_slogan"
        :image="$page.markdownPage.header_image"
        :altImg="$page.markdownPage.header_altImg"
        :excerpt="$page.markdownPage.header_excerpt"
        :button="$page.markdownPage.button"
        :link="$page.markdownPage.link"
      />
      <!-- <SignUp
        v-if="$page.markdownPage.signup"
        :signup="$page.markdownPage.signup"
      /> -->

      <!-- <Comparison
        v-if="
          $page.markdownPage.comparisonSecs &&
          $page.markdownPage.comparisonSecs.length > 0
        "
        :main="$page.markdownPage.comparisonMain"
        :sections="$page.markdownPage.comparisonSecs"
      /> -->

      <TFTFuel
        v-if="
          $page.markdownPage.comparisonSecs &&
          $page.markdownPage.comparisonSecs.length > 0
        "
        :main="$page.markdownPage.comparisonMain"
        :sections="$page.markdownPage.comparisonSecs"
      />
    </div>
    <g-image
      v-if="
        $page.markdownPage.id !== 'careers' && $page.markdownPage.solution_image
      "
      class="mx-auto mt-10"
      :src="$page.markdownPage.solution_image.src"
    />
    <div class="container sm:pxi-0 mx-auto overflow-x-hidden py-5">
      <CallToAction
        :id="$page.markdownPage.id"
        v-if="$page.markdownPage.cta && $page.markdownPage.id == 'why'"
        :cta="$page.markdownPage.cta"
      />

      <AppListItem
        v-if="
          $page.markdownPage.appData && $page.markdownPage.appData.length > 0
        "
        :products="$page.markdownPage.appData"
        :main="$page.markdownPage.appsMain"
      />
      <ShowcaseProducts
        v-if="
          $page.markdownPage.productData &&
          $page.markdownPage.productData.length > 0
        "
        :id="$page.markdownPage.id"
        :main="$page.markdownPage.productsMain"
        :products="$page.markdownPage.productData"
      />
      <BrandPanel
        :id="$page.markdownPage.id"
        :brand="$page.markdownPage.brandPanel"
        v-if="$page.markdownPage.brandPanel"
      />
      <Partenerships
        v-if="
          $page.markdownPage.partnerships &&
          $page.markdownPage.partnerships.length > 0
        "
        :id="$page.markdownPage.id"
        :main="$page.markdownPage.partenershipsMain"
        :partnerships="$page.markdownPage.partnerships"
      />

      <CenteredAccordion
        v-if="$page.markdownPage.faqContent && $page.markdownPage.id == 'faq'"
        :main="$page.markdownPage.faqMain"
        :faqs="$page.markdownPage.faqContent"
      />

      <CallToAction
        class="mt-20"
        :id="$page.markdownPage.id"
        v-if="$page.markdownPage.cta3"
        :cta="$page.markdownPage.cta3"
      />
      <CallToAction
        :id="$page.markdownPage.id"
        v-if="$page.markdownPage.cta2"
        :cta="$page.markdownPage.cta2"
      />

      <ShowcaseProducts
        class="my-20"
        v-if="
          $page.markdownPage.productData2 &&
          $page.markdownPage.productData2.length > 0
        "
        :id="$page.markdownPage.id"
        :main="$page.markdownPage.productsMain2"
        :products="$page.markdownPage.productData2"
      />

      <SolutionsHeader
        class="mt-20"
        v-if="$page.markdownPage.header"
        :header="$page.markdownPage.header"
      />

      <g-image
        v-if="$page.markdownPage.solution_image2"
        :src="$page.markdownPage.solution_image2.src"
      />

      <SolutionsHeader
        v-if="$page.markdownPage.header2"
        :header="$page.markdownPage.header2"
      />

      <SolutionsHeader
        v-if="$page.markdownPage.header3"
        :header="$page.markdownPage.header3"
      />

      <logoShowcase
        v-if="$page.markdownPage.logos.length > 0"
        :id="$page.markdownPage.id"
        :logos="$page.markdownPage.logos"
        :main="$page.markdownPage.logosMain"
      />

      <FourTiersWithToggle
        v-if="$page.markdownPage.jobs.length > 0"
        :pricingPlans="$page.markdownPage.jobs"
        :main="$page.markdownPage.jobsMain"
      />

      <GetInTouch
        v-if="
          $page.markdownPage.contactData &&
          $page.markdownPage.contactData.length > 0
        "
        :contacts="$page.markdownPage.contactData"
      />

      <SignUp
        v-if="$page.markdownPage.signup"
        :signup="$page.markdownPage.signup"
      />
    </div>
    <div
      class="container-fluid mx-auto"
      v-for="edge in $page.allCustomCta.edges"
      :key="edge.node.id"
    >
      <CustomCTA
        v-if="edge.node.id == $page.markdownPage.id"
        :title="edge.node.title"
        :link="edge.node.link"
        :image="edge.node.image"
      />
    </div>
  </Layout>
</template>

<page-query>
  query($id: ID!) {
    markdownPage(id: $id) {
        id
        path
        excerpt
        metaTitle
        metaDesc
        metaImg
        header_excerpt
        header_altImg
        header_title
        header_image
        header_slogan
        button
        link
        solution_image
        solution_image2
        header{
         title
         subtitle
         content
         btn1
         link1
         btn2
         link2
       }
        header2{
         title
         subtitle
         content
         btn1
         link1
         btn2
         link2
       }
        header3{
         title
         subtitle
         content
         btn1
         link1
         btn2
         link2
       }
       productsMain{
          id
          title
          subtitle
          content
          button
          link
       #  image
        }
       productData{
         id
         title
         content
         image
         button
         link
       }
       productsMain2{
          id
          title
          subtitle
          content
          button
          link
       #  image
        }
       productData2{
         id
         title
         content
         image
         button
         link
       }
      appsMain{
          id
          title
       # slogan
          content
       #  image
        }
       appData{
         id
         title
         content
         image
         link
       }
        comparisonMain{
          id
          title
          description
          button
          link
          button2
          link2
        }
        comparisonSecs{
          id
          svg
          title
          content
        }
        logosMain {
          id
          title
        }
        logos{
          id
          image
          url
        }
        cta{
          title
          slogan
          content
          button
          link
        }
        cta2{
          title
          slogan
          content
          button
          link
        }
        cta3{
          title
          slogan
          content
          button
          link
        }
        brandPanel{
         id
         title
         subtitle
         content
         sourceUrl
         btnTxt
         image
       }
       partenershipsMain{
         id
         title
         slogan
         content
         link
         link2
         button
         button2
       }
       partnerships {
         id
         title
         img
         content
       }
      faqMain{
          id
          title
      }
      faqContent{
          id
          question
          content
      }
      jobsMain{
          id
        #  title
        #  button1
        #  button2
          excerpt
      }
      jobs{
          id
          title
          excerpt
          price
          duration
          button
          link
          includeTitle
          options
      }
      contactData{
         id
         title
         mail
         phone
      }
      signup{
          id
          title
          button1
          link1
          button2
          link2
      }
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
import NewCard from "~/components/marketing/sections/cta-sections/NewCard.vue";
import Header from "~/components/marketing/sections/cta-sections/Header.vue";
import VerticalNav from "~/components/custom/Navbar/VerticalNav.vue";
import GetInTouch from "~/components/custom/Navbar/Getintouch.vue";
import ShowcaseProducts from "~/components/marketing/sections/cta-sections/ShowcaseProducts.vue";
import SolutionsHeader from "~/components/custom/sections/header/HeaderSection.vue";
import HowItWorks from "~/components/custom/sections/HowItWorks.vue";
import Features from "~/components/custom/sections/Features.vue";
import logoShowcase from "~/components/marketing/sections/cta-sections/logoShowcase.vue";
import CallToAction from "~/components/custom/sections/CallToAction.vue";
import SignUp from "~/components/custom/sections/SignUp.vue";
import Comparison from "~/components/custom/sections/Comparison.vue";
import TFTFuel from "~/components/marketing/sections/team-sections/with_large_images.vue";
import Roadmap from "~/components/custom/sections/Roadmap.vue";
import FourTiersWithToggle from "~/components/marketing/sections/pricing/four_tiers_with_toggle.vue";
import WithComparisonTable from "~/components/marketing/sections/pricing/with_comparison_table.vue";
import BrandPanel from "~/components/marketing/sections/cta-sections/BrandPanel.vue";
import AppListItem from "~/components/AppListItem.vue";
import Partenerships from "~/components/marketing/sections/team-sections/grid_with_large_round_images.vue";
import CenteredAccordion from "~/components/marketing/sections/faq-sections/CenteredAccordion.vue";
import CustomCTA from "~/components/custom/sections/CustomCTA.vue";

export default {
  components: {
    NewCard,
    Header,
    VerticalNav,
    GetInTouch,
    SolutionsHeader,
    ShowcaseProducts,
    HowItWorks,
    Features,
    logoShowcase,
    CallToAction,
    SignUp,
    Comparison,
    TFTFuel,
    Roadmap,
    FourTiersWithToggle,
    WithComparisonTable,
    BrandPanel,
    AppListItem,
    Partenerships,
    CenteredAccordion,
    CustomCTA,
  },
  computed: {
    getImg() {
      let img = "";
      if (process.isClient) {
        img = `${window.location.origin}${this.$page.markdownPage.metaImg.src}`;
      }
      return img;
    },
    pageName() {
      let path = this.$route.path.substring(1);
      let name = path[0].toUpperCase() + path.slice(1);
      return name;
    },
  },
  metaInfo() {
    return {
      title: "",
      titleTemplate: this.$page.markdownPage.metaTitle,
      meta: [
        {
          key: "description",
          name: "description",
          content: this.$page.markdownPage.metaDesc,
        },
        {
          key: "og:title",
          property: "og:title",
          content: this.$page.markdownPage.metaTitle,
        },
        {
          key: "og:description",
          property: "og:description",
          content: this.$page.markdownPage.metaDesc,
        },
        {
          key: "og:image",
          property: "og:image",
          content: this.getImg,
        },
        {
          key: "twitter:description",
          name: "twitter:description",
          content: this.$page.markdownPage.metaDesc,
        },
        {
          key: "twitter:image",
          property: "twitter:image",
          content: this.getImg,
        },
        {
          key: "twitter:title",
          property: "twitter:title",
          content: this.$page.markdownPage.metaTitle,
        },
      ],
    };
  },
};
</script>
<style scoped>
/**
 * Add back the container background-color, border-radius, padding, margin
 * and overflow that we removed from <pre>.
 */

.gridsome-highlight {
  background-color: #fdf6e3;
  border-radius: 0.3em;
  margin: 0.5em 0;
  padding: 1em;
  overflow: auto;
}
.gridsome-highlight-code-line {
  background-color: #feb;
  display: block;
  margin-right: -1em;
  margin-left: -1em;
  padding-right: 1em;
  padding-left: 0.75em;
  border-left: 0.25em solid #f99;
}

/**
 * Remove the default PrismJS theme background-color, border-radius, margin,
 * padding and overflow.
 * 1. Make the element just wide enough to fit its content.
 * 2. Always fill the visible space in .gatsby-highlight.
 * 3. Adjust the position of the line numbers
 */
.gridsome-highlight pre[class*="language-"] {
  background-color: transparent;
  margin: 0;
  padding: 0;
  overflow: initial;
  float: left; /* 1 */
  min-width: 100%; /* 2 */
}

/* Adjust the position of the line numbers */
.gridsome-highlight pre[class*="language-"].line-numbers {
  padding-left: 2.8em;
}
</style> >
