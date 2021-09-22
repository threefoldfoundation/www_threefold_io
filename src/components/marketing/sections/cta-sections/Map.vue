<template>
  <section
    class="px-2 h-auto bg-center bg-contain"
    :style="{ 'background-image': 'url(' + img(section.image) + ')' }"
  >
    <div class="flex flex-wrap p-12 text-center -mx-auto t">
      <div class="text-center rounded lg:px-6 mt-10 lg:mt-0 mx-auto">
        <h2
          class="
            text-2xl text-black
            leading-tight
            font-light font-heading
            uppercase
          "
        >
          {{ section.title }}
        </h2>
        <h2
          class="
            text-5xl text-black
            leading-tight
            font-bold font-heading
            uppercase
          "
        >
          {{ section.subtitle }}
        </h2>

        <div class="my-10 grid grid-cols-3 gap-4">
          <div class="..."></div>
          <div class="...">
            <!-- capacity -->
            <div class="leading-none font-extrabold text-6xl">
              {{
                stats[0].capacity
                  .slice(0, 4)
                  .toString()
                  .replace(/\B(?=(\d{2})+(?!\d))/g, ",")
              }}
              PB
              <span class="block text-3xl uppercase">capacity</span>
            </div>
          </div>

          <div class="..."></div>
          <div class="...">
            <!-- Nodes -->
            <div
              class="
                rounded-full
                h-60
                w-60
                inline-flex
                items-center
                justify-center
                bg-green
              "
            >
              <div class="leading-none font-extrabold text-6xl">
                {{ stats[1].nodes }}
                <span class="block text-2xl uppercase">nodes</span>
              </div>
            </div>
          </div>
          <div class="..."></div>
          <div class="...">
            <div
              class="
                rounded-full
                h-60
                w-60
                inline-flex
                items-center
                justify-center
                bg-pink
              "
            >
              <div class="leading-none font-extrabold text-6xl">
                {{ stats[3].countries }}
                <span class="block text-2xl uppercase">countries</span>
              </div>
            </div>
          </div>
          <div class="..."></div>
          <div class="...">
            <!-- capacity -->
            <div class="leading-none font-extrabold text-6xl">
              {{
                stats[2].cores.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
              }}
              <span class="block text-5xl uppercase">cores</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
import axios from "axios";

export default {
  props: ["section"],
  data() {
    return {
      stats: [],
    };
  },
  methods: {
    img(image) {
      if (!image) return "";
      if (image.src) return image.src;
      return image;
    },
  },
  async mounted() {
    try {
      // const getFarms = await axios.get(
      //   "https://explorer.threefold.io/api/farms?network=all"
      // );
      const results = await axios.get(
        "https://explorer.threefold.io/api/stats"
      );
      // let farms = getFarms.data.length;
      let nodes = results.data.onlinenodes;
      let hru = parseInt(results.data.hru);
      let sru = parseInt(results.data.sru) / 1000; // To TB
      let capacity = (hru + sru).toFixed();
      let cru = results.data.cru.toFixed();
      let countries = results.data.countries;
      this.stats.push(
        // { farms: farms },
        { capacity: capacity },
        { nodes: nodes },
        { cores: cru },
        { countries: countries }
      );
    } catch (error) {
      console.log(error);
    }
  },
};
</script>

<style scoped>
dd {
  display: inline-block;
  margin: auto;
  border-radius: 50%;
  line-height: 100px;
}

.bg-green {
  background-color: #70dfc9;
}

.bg-pink {
  background-color: #ea1ff7;
}
</style>