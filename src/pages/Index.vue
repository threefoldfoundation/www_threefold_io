<template>
  <Layout :hideHeader="true" :disableScroll="true">
    <div class="container mx-auto sm:pxi-0 overflow-x-hidden">
      <Header
        :id="$page.markdownPage.id"
        :title="$page.markdownPage.header_title"
        :slogan="$page.markdownPage.header_slogan"
        :image="$page.markdownPage.header_image"
        :altImg="$page.markdownPage.header_altImg"
        :excerpt="$page.markdownPage.header_excerpt"
        :button="$page.markdownPage.button"
        :link="$page.markdownPage.link"
      />

      <VideoPanel :card="$page.markdownPage.videoPanel" />

      <Map
        v-if="$page.markdownPage.stats"
        :section="$page.markdownPage.stats"
      />
      <Features
        :id="$page.markdownPage.id"
        :main="$page.markdownPage.featuresMain2"
        :features="$page.markdownPage.features2"
      />

      <Partenerships
        class="lg:mt-20"
        v-if="
          $page.markdownPage.partnerships &&
          $page.markdownPage.partnerships.length > 0
        "
        :main="$page.markdownPage.partenershipsMain"
        :partnerships="$page.markdownPage.partnerships"
        :id="$page.markdownPage.id"
      />

      <logoShowcase
        v-if="$page.markdownPage.logos.length > 0"
        :logos="$page.markdownPage.logos"
      />

      <BrandPanel
        :brand="$page.markdownPage.brandPanel"
        :id="$page.markdownPage.id"
        v-if="$page.markdownPage.brandPanel"
      />

      <!-- <CallToAction
        v-if="$page.markdownPage.cta2"
        :cta="$page.markdownPage.cta2"
        :id="$page.markdownPage.id"
      /> -->

      <ShowcaseProducts
        v-if="
          $page.markdownPage.productData &&
          $page.markdownPage.productData.length > 0
        "
        :id="$page.markdownPage.id"
        :main="$page.markdownPage.productsMain"
        :products="$page.markdownPage.productData"
      />
    <!-- <g-image
      class="mx-auto"
      v-if="$page.markdownPage.solution_image2"
      :src="$page.markdownPage.solution_image2.src"
    /> -->
      <!-- <CallToAction
        v-if="$page.markdownPage.cta3"
        :cta="$page.markdownPage.cta3"
        :id="$page.markdownPage.id"
      /> -->

      <Blogs
        v-if="$page.markdownPage.blogs || $page.markdownPage.BlogsMain"
        :main="$page.markdownPage.BlogsMain"
        :blogs="$page.markdownPage.blogs"
      />

      <InTheNews
        v-if="$page.markdownPage.inTheNews"
        :news="$page.markdownPage.inTheNews"
      />

      <!-- <SignUp
      v-if="$page.markdownPage.signup"
      :signup="$page.markdownPage.signup"
      /> -->

      <g-image
        class="m-auto w-3/4 mt-8"
        v-if="$page.markdownPage.solution_image"
        :src="$page.markdownPage.solution_image.src"
      />

      <CallToAction
        v-if="$page.markdownPage.cta"
        :id="$page.markdownPage.id"
        :cta="$page.markdownPage.cta"
      />
    </div>
  </Layout>
</template>

<page-query>
  query {
    markdownPage(id: "home") {
        id
        path
        metaTitle
        metaDesc
        metaImg
        header_slogan
        header_title
        header_image
        header_excerpt
        header_altImg
        button
        link
        solution_image
     #   solution_image2
     #  solution_image3
        header{
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
       #  image
        }
       productData{
         id
         title
         content
         image
         button
         url
       }
        cards{
          id
          title
          image
          button
          link
          order
          content
        }
        cta{
          id
          title
          content
          button
          button2
          button3
          button4
          link
          link2
          link3
          link4
        }
        BlogsMain{
          id
          title
          content
        }
        blogs{
          id
          image
          tags
          title
          path
          author
          autherUrl
          authorImg
          excerpt
          created
        }
        cta2{
          id
          title
          content
          video_button
          video_link
          button
          button2
          button3
          link
          link2
          link3
        }
        cta3{
          id
          title1
          title2
          content
          button
          button2
          button3
          link
          link2
          link3
        }
        cta4{
          id
          title1
          title2
          subtitle
          slogan
          content
          button
          button2
          button3
          link
          link2
          link3
        }

        cta5{
          id
          title
          content
          button
          button2
          button3
          link
          link2
          link3
        }
        featuresMain2{
          id
          title 
          subtitle
          btn 
          link
          btn2
          link2
          btn3
          link3
          content
        }
        features2{
          id
          title 
          svg
          content
        }
        comparisonMain{
          id
          title
          description
          button
          link
        }
        comparisonSecs{
          id
          svg
          title
          link
          content
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
        brandPanel2{
         id
         title
         subtitle
         content
         sourceUrl
         btnTxt
         sourceUrl2
         btnTxt2
         image
       }
        logos{
          id
          image
          url
        }
        headerSolution{
         subtitle
         content
       }
        inTheNews {
          id
          content
          partners {
            path
            logo
          }
        }
        signup{
          id
          title
          button1
          link1
          button2
          link2
        }
        videoPanel {
          id
          video
          title
          content
          btn
          link
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
       stats {
          id
          title
          content
          button
          link
          btn1
          btn2
          link1
          link2
          link3
          btn3
          image
        }
    }  
  }

</page-query>

<static-query>
  query {
    metadata {
      siteUrl
    }
  }
</static-query>
<script>
import Header from "~/components/marketing/sections/cta-sections/Header.vue";
import SolutionsHeader from "~/components/custom/sections/header/HeaderSection.vue";
import ShowcaseProducts from "~/components/marketing/sections/cta-sections/ShowcaseProductsHome.vue";
import Comparison from "~/components/custom/sections/Comparison.vue";
import Blogs from "~/components/marketing/sections/blog-sections/3_column_cards.vue";
import Features from "~/components/custom/sections/Features.vue";
import Map from "~/components/marketing/sections/cta-sections/StateMap.vue";
import NewCard from "~/components/marketing/sections/cta-sections/NewCard.vue";
import BrandPanel from "~/components/marketing/sections/cta-sections/BrandPanel.vue";
import BrandPanel2 from "~/components/marketing/sections/cta-sections/BrandPanel2.vue";
import CallToAction from "~/components/custom/sections/CallToAction.vue";
import CallToActionbg1 from "~/components/custom/sections/CallToActionbg1.vue";
import CallToActionbg2 from "~/components/custom/sections/CallToActionbg2.vue";
import logoShowcase from "~/components/marketing/sections/cta-sections/logoShowcase.vue";
import InTheNews from "~/components/marketing/sections/logo-clouds/off_white_grid.vue";
import SignUp from "~/components/custom/sections/SignUp.vue";
import VideoPanel from "~/components/custom/VideoPanel.vue";
import Partenerships from "~/components/marketing/sections/team-sections/grid_with_large_round_images.vue";

export default {
  components: {
    Header,
    Features,
    Map,
    SolutionsHeader,
    ShowcaseProducts,
    Comparison,
    NewCard,
    BrandPanel,
    BrandPanel2,
    logoShowcase,
    CallToAction,
    CallToActionbg1,
    CallToActionbg2,
    InTheNews,
    SignUp,
    Blogs,
    VideoPanel,
    Partenerships,
  },
  computed: {
    getImg() {
      let img = "";
      if (process.isClient) {
        img = `${window.location.origin}${this.$page.markdownPage.metaImg.src}`;
      }
      return img;
    },
  },
  metaInfo() {
    return {
      title: "",
      titleTemplate: "ThreeFold | Welcome",
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
.container-fluid {
  width: 100%;
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
}
</style>


<!--    <div class="container-fluid sm:pxi-0 mx-auto overflow-x-hidden">
      <g-image
        v-if="$page.markdownPage.solution_image"
        :src="$page.markdownPage.solution_image.src"
      />
    </div> --> 