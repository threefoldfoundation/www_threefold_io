<template>
  <Layout :hideHeader="true" :disableScroll="true">
    <div class="container sm:pxi-0 mx-auto overflow-x-hidden py-5">
      <!-- <SolutionsHeader
        v-if="$page.markdownPage.header"
        :header="$page.markdownPage.header"
      /> -->

      <Header
        :title="$page.markdownPage.header_title"
        :slogan="$page.markdownPage.header_slogan"
        :image="$page.markdownPage.header_image"
        :altImg="$page.markdownPage.header_altImg"
        :excerpt="$page.markdownPage.header_excerpt"
        :button="$page.markdownPage.button"
        :link="$page.markdownPage.link"
      />

      <g-image class="m-auto w-2/4"
        v-if="$page.markdownPage.solution_image2"
        :src="$page.markdownPage.solution_image2.src"
      />

       <CallToAction
        v-if="$page.markdownPage.cta2"
        :cta="$page.markdownPage.cta2"
      />

      <ShowcaseProducts
        :main="$page.markdownPage.productsMain"
        :products="$page.markdownPage.productData"
        v-if="
          $page.markdownPage.productData &&
          $page.markdownPage.productData.length > 0
        "
      />

      <!-- <CallToActionbg1
        v-if="$page.markdownPage.cta3"
        :cta="$page.markdownPage.cta3"
      /> -->

      <!-- <CallToActionbg2
        v-if="$page.markdownPage.cta4"
        :cta="$page.markdownPage.cta4"
      /> -->

      <!-- <g-image
        v-if="$page.markdownPage.solution_image3"
        :src="$page.markdownPage.solution_image3.src"
      /> -->

      <!-- <CallToAction
        v-if="$page.markdownPage.cta5"
        :cta="$page.markdownPage.cta5"
      /> -->

      <BrandPanel
        :brand="$page.markdownPage.brandPanel"
        v-if="$page.markdownPage.brandPanel"
      />

      <BrandPanel2
        :brand="$page.markdownPage.brandPanel2"
        v-if="$page.markdownPage.brandPanel2"
      />

      <Comparison
        v-if="
          $page.markdownPage.comparisonSecs &&
          $page.markdownPage.comparisonSecs.length > 0
        "
        :main="$page.markdownPage.comparisonMain"
        :sections="$page.markdownPage.comparisonSecs"
      />

      <!-- <NewCard
      v-for="card in $page.markdownPage.cards"
      :key="card.id"
      :card="card"
      /> -->

      <!-- <SolutionsHeader
        v-if="$page.markdownPage.headerSolution"
        :header="$page.markdownPage.headerSolution"
    /> -->

      <logoShowcase
        v-if="$page.markdownPage.logos.length > 0"
        :logos="$page.markdownPage.logos"
      />

      <InTheNews
        v-if="$page.markdownPage.inTheNews"
        :news="$page.markdownPage.inTheNews"
      />

      <!-- <SignUp
      v-if="$page.markdownPage.signup"
      :signup="$page.markdownPage.signup"
      /> -->

      <g-image class="m-auto w-3/4"
        v-if="$page.markdownPage.solution_image"
        :src="$page.markdownPage.solution_image.src"
      />

      <CallToAction
        v-if="$page.markdownPage.cta"
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
        header_slogan
        header_title
        header_image
        header_excerpt
        header_altImg
        button
        link
        solution_image
        solution_image2
        solution_image3
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
          link
          link2
          link3
        }

        cta2{
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
    }  
  }

</page-query>

<script>
import Header from "~/components/marketing/sections/cta-sections/Header.vue";
import SolutionsHeader from "~/components/custom/sections/header/HeaderSection.vue";
import ShowcaseProducts from "~/components/marketing/sections/cta-sections/ShowcaseProductsHome.vue";
import Comparison from "~/components/custom/sections/Comparison.vue";
import NewCard from "~/components/marketing/sections/cta-sections/NewCard.vue";
import BrandPanel from "~/components/marketing/sections/cta-sections/BrandPanel.vue";
import BrandPanel2 from "~/components/marketing/sections/cta-sections/BrandPanel2.vue";
import CallToAction from "~/components/custom/sections/CallToAction.vue";
import CallToActionbg1 from "~/components/custom/sections/CallToActionbg1.vue";
import CallToActionbg2 from "~/components/custom/sections/CallToActionbg2.vue";
import logoShowcase from "~/components/marketing/sections/cta-sections/logoShowcase.vue";
import InTheNews from "~/components/marketing/sections/logo-clouds/off_white_grid.vue";
import SignUp from "~/components/custom/sections/SignUp.vue";

export default {
  components: {
    Header,
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
  },
  metaInfo: {
    title: "",
    titleTemplate: "ThreeFold | Welcome",
  },
};
</script>
<style scoped>
.container-fluid {
  max-width: 100% !important;
}
</style>


<!--    <div class="container-fluid sm:pxi-0 mx-auto overflow-x-hidden">
      <g-image
        v-if="$page.markdownPage.solution_image"
        :src="$page.markdownPage.solution_image.src"
      />
    </div> -->