<template>
  <div class="lg:my-20 flex flex-col mt-5 p-auto">
    <h2 class="flex py-2 mx-auto uppercase font-bold text-5xl">
      {{ team.title }}
    </h2>
    <div
      class="max-w-x2 text-xl text-center mb-8 mx-auto leading-relaxed"
      v-html="team.content"
    ></div>
    <div class="flex overflow-x-scroll pb-10 scrollable">
      <div class="flex flex-nowrap ml-10 mt-10">
        <div
          class="inline-block px-3"
          v-for="person in people"
          :key="person.node.id"
        >
          <div
            class="
              box
              max-w-xs
              overflow-hidden
              rounded-full
              shadow-md
              hover:shadow-xl
              transition-shadow
              duration-300
              ease-in-out
            "
          >
            <a :href="person.node.path" :title="person.node.name">
              <g-image
                :src="person.node.image.src"
                class="rounded-full mx-auto mt-3"
                :alt="person.node.name"
              />
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["id", "team", "people"],
};
</script>
<style>
.scrollable::-webkit-scrollbar {
  width: 8px;
}
.scrollable::-webkit-scrollbar-track {
  background: #f1f1f1;
  border-radius: 20px;
}
.scrollable::-webkit-scrollbar-thumb {
  background: linear-gradient(45deg, #70dfc9, #ee7bf7);
  border-radius: 20px;
}

/* #70dfc9, #ee7bf7 */
.box {
  position: relative;
  height: 150px;
  width: 150px;
}
.box::before {
  content: "";
  position: absolute;
  top: 5px;
  left: 0;
  right: 0;
  bottom: 0;
  border-radius: 50%;
  padding: 10px;
  background: linear-gradient(45deg, #70dfc9, #ee7bf7);
  -webkit-mask: linear-gradient(#fff 0 0) content-box, linear-gradient(#fff 0 0);
  -webkit-mask-composite: destination-out;
  mask-composite: exclude;
}
.box img {
  filter: grayscale(100%);
  height: 130px;
  width: 130px;
}
.box img:hover {
  filter: grayscale(0);
}
</style>