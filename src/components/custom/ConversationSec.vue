<template>
  <section class="px-4">
    <h2
      v-if="main.title"
      class="
        lg:text-6xl
        text-center
        uppercase
        mb-2
        leading-none
        font-bold font-heading
      "
    >
      {{ main.title }}
    </h2>
    
    <article
      class="flex my-20 text-center px-10 md:text-left flex-col md:flex-row"
      v-for="conversation in conversations"
      :key="conversation.id"
    >
      <div class="lg:w-1/3 mb-12">
        <span class="block text-sm mb-1">{{ conversation.day }}</span>
        <span
          class="
            block
            text-xl
            font-medium
            uppercase
            leading-6
            text-gray-900
            mb-1.5
          "
          >{{ conversation.month }}</span
        ><span class="block text-sm mb-1">{{ conversation.time }}</span>
      </div>
      <div class="lg:w-2/3">
        <h3 class="mb-3 text-4xl font-medium uppercase leading-9">
          {{ conversation.title }}
        </h3>
        <p class="mb-4"><b>Hosts:</b> {{ conversation.hosts }}</p>
        <div
          class="font-lg post-content leading-6"
          v-html="conversation.content"
        ></div>
        <a
          v-if="conversation.link.includes('http')"
          target="_blank"
          class="
            inline-block
            bg-white
            text-lg
            learn-button
            hover:bg-gray-400
            px-12
            py-1
            mr-5
            my-5
            border-2
            shadow
            border-black
          "
          :href="conversation.link"
          >{{ conversation.button }}</a
        >
        <a
          v-else
          class="
            inline-block
            bg-white
            text-lg
            learn-button
            hover:bg-gray-400
            px-12
            py-1
            mr-5
            my-5
            border-2
            shadow
            border-black
          "
          :href="conversation.link"
          >{{ conversation.button }}</a
        >
      </div>
    </article>
  </section>
</template>

<script>
export default {
  props: ["id", "main", "conversations"],
};
</script>