<template>
  <section
    class="px-2 h-auto object-fi"
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

        <div class="rounded-lg py-10 mt-10 lg:mt-0">
          <div class="max-w-screen-xl mx-auto px-4 sm:px-6 lg:px-8">
            <dl class="">
              <div
                v-for="(item, index) in stats"
                :key="index"
                class="flex flex-col p-6 text-center"
              >
                <div v-for="(value, key) in item" :key="key">
                  <dd
                    class="leading-none font-bold green-color"
                    :class="{ green: index % 2 !== 0 }"
                    aria-describedby="item-1"
                  >
                    {{ value }}
                  </dd>
                  <dt class="mt-2 leading-6 text-black uppercase" id="item-1">
                    {{ key }}
                  </dt>
                </div>
              </div>
            </dl>
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
      const getFarms = await axios.get(
        "https://explorer.threefold.io/api/farms?network=all"
      );
      const results = await axios.get(
        "https://explorer.threefold.io/api/stats"
      );
      console.log(results.data);
      let farms = getFarms.data.length;
      let nodes = results.data.onlinenodes;
      let hru = (results.data.hru / 1000).toFixed(); // To TB
      let sru = results.data.sru.toFixed();
      let capacity = hru + sru;
      let cru = results.data.cru.toFixed();
      let countries = results.data.countries;
      this.stats.push(
        { farms: farms },
        { Nodes: nodes },
        { "Storage TB": capacity },
        { "Compute Cores": cru },
        { Countries: countries }
      );
    } catch (error) {
      console.log(error);
    }
  },
};
</script>

<style scoped>
.blue {
  background-color: #313f92;
}

.light-blue {
  background-color: #48489f;
}

dd {
  height: 100px;
  width: 100px;
  margin: auto;
  border-radius: 50%;
  line-height: 100px;
  border: 3px solid #847fc2;
  background-color: #313f92;
  color: #dacef5;
  font-size: 1.5rem;
}

.green {
  background-color: #92f5d9;
  color: #313f92;
}
</style>