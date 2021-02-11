<template>
  <Layout :hideHeader="true" :disableScroll="true">
      <g-image
      v-if="$page.markdownPage.solution_image"
      :src="$page.markdownPage.solution_image.src"
    />
    <div class="container sm:pxi-0 mx-auto overflow-x-hidden py-5">
   <!-- <Header
      :title="$page.markdownPage.header_title"
      :image="$page.markdownPage.header_image"
      :altImg="$page.markdownPage.header_altImg"
      :excerpt="$page.markdownPage.header_excerpt"
      :button="$page.markdownPage.button"
      :link="$page.markdownPage.link"
    />  -->

    <SolutionsHeader
      v-if="$page.markdownPage.header"
      :header="$page.markdownPage.header"
    />
    
    <ShowcaseProducts
        :main="$page.markdownPage.productsMain"
        :products="$page.markdownPage.productData"
        v-if="
          $page.markdownPage.productData &&
          $page.markdownPage.productData.length > 0
        "
    />
    
    <Comparison
        v-if="
          $page.markdownPage.comparisonSecs &&
          $page.markdownPage.comparisonSecs.length > 0
        "
        :main="$page.markdownPage.comparisonMain"
        :sections="$page.markdownPage.comparisonSecs"
    />
      
    <BrandPanel
        :brand="$page.markdownPage.brandPanel"
        v-if="$page.markdownPage.brandPanel"
    />

    <!-- <NewCard
      v-for="card in $page.markdownPage.cards"
      :key="card.id"
      :card="card"
    /> -->

    <logoShowcase
      v-if="$page.markdownPage.logos.length > 0"
      :logos="$page.markdownPage.logos"
    />

    <!-- <InTheNews
      v-if="$page.markdownPage.inTheNews"
      :news="$page.markdownPage.inTheNews"
    /> -->

    <!-- <SignUp
      v-if="$page.markdownPage.signup"
      :signup="$page.markdownPage.signup"
    /> -->

    </div>
      <g-image
      v-if="$page.markdownPage.solution_image2"
      :src="$page.markdownPage.solution_image2.src"
    />

    <CallToAction 
      v-if="$page.markdownPage.cta" 
      :cta="$page.markdownPage.cta" 
    />
  </Layout>
</template>

<page-query>
  query {
    markdownPage(id: "home") {
        id
        path
        header_title
        header_image
        header_excerpt
        header_altImg
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
          image
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
         excerpt(length: 2000)
         sourceUrl
         btnTxt
         image
       }
        logos{
          id
          image
          url
        }
        inTheNews {
          id
          excerpt
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
import ShowcaseProducts from "~/components/marketing/sections/cta-sections/ShowcaseProducts.vue";
import Comparison from "~/components/custom/sections/Comparison.vue";
import NewCard from "~/components/marketing/sections/cta-sections/NewCard.vue";
import BrandPanel from "~/components/marketing/sections/cta-sections/BrandPanel.vue";
import CallToAction from "~/components/custom/sections/CallToAction.vue";
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
    logoShowcase,
    CallToAction,
    InTheNews,
    SignUp,
  },
  metaInfo() {
    return {
      title: this.$page.markdownPage.title,
    };
  },
};
</script>