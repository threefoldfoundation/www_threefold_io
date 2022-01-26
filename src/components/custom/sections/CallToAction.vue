<template>
  <section
    class="bg-cover text-center"
    :class="{
      pink: id == 'home' && !lastCta,
      green: id == 'mission' && lastCta,
      gray: id == 'developer',
      'to-black': id == 'cloud' && textOnly,
    }"
  >
    <!-- mission -->
    <div
      class="w-full mx-auto lg:py-20"
      v-if="id == 'mission' && !textOnly && !lastCta"
    >
      <h2
        v-if="cta.title"
        class="
          lg:text-6xl
          text-center
          uppercase
          mb-2
          leading-none
          font-bold font-heading
        "
      >
        {{ cta.title }}
      </h2>
      <div
        v-html="cta.content"
        class="mt-6 mb-8 lg:text-xl text-gray-800"
      ></div>
      <g-image :src="cta.image" class="my-10 mx-auto" />

      <!-- <div class="mt-8 tracking-wide leading-loose" v-if="cta.video_button">
        <a
          @click="toggleModal"
          class="
            inline-block
            bg-blue-900
            text-sm
            learn-button
            hover:bg-blue-800
            text-gray-100
            px-12
            py-2
            mr-5
            mb-4
            shadow
            rounded-full
          "
          >{{ cta.video_button }}</a
        >
      </div> -->
      <a
        class="
          inline-block
          bg-white
          text-lg
          learn-button
          hover:bg-gray-400
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        target="_blank"
        v-if="cta.button && cta.link.includes('http')"
        :href="cta.link"
        >{{ cta.button }}</a
      >

      <a
        class="
          inline-block
          bg-white
          text-lg
          learn-button
          hover:bg-gray-400
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        v-else
        :href="cta.link"
        >{{ cta.button }}</a
      >
    </div>

    <div
      class="w-full max-w-3xl mx-auto py-12"
      v-else-if="id == 'mission' && textOnly"
    >
      <h2
        v-if="cta.title"
        class="
          lg:text-5xl
          text-center
          uppercase
          mb-2
          leading-none
          font-bold font-heading
        "
      >
        {{ cta.title }}
      </h2>
      <div
        v-html="cta.content"
        class="mt-6 mb-8 lg:text-xl text-gray-800"
      ></div>
    </div>

    <div
      class="w-full max-w-3xl mx-auto py-20"
      v-else-if="id == 'mission' && lastCta"
    >
      <h2
        v-if="cta.title"
        class="
          lg:text-5xl
          text-center
          uppercase
          mb-2
          leading-none
          font-bold font-heading
        "
      >
        {{ cta.title }}
      </h2>
      <h2
        v-if="cta.subtitle"
        class="
          lg:text-5xl
          text-center
          uppercase
          mb-2
          leading-none
          font-bold font-heading
        "
      >
        {{ cta.subtitle }}
      </h2>
      <div
        v-html="cta.content"
        class="mt-6 mb-8 lg:text-xl text-gray-800"
      ></div>
      <a
        class="
          inline-block
          bg-white
          text-lg
          learn-button
          hover:bg-gray-400
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        target="_blank"
        v-if="cta.button && cta.link.includes('http')"
        :href="cta.link"
        >{{ cta.button }}</a
      >

      <a
        class="
          inline-block
          bg-white
          text-lg
          learn-button
          hover:bg-gray-400
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        v-else
        :href="cta.link"
        >{{ cta.button }}</a
      >
    </div>

    <!-- farm -->
    <div
      class="w-full mx-auto lg:mt-20 lg:py-20"
      v-else-if="id == 'farm' && !lastCta"
    >
      <h2
        v-if="cta.title"
        class="
          lg:text-6xl
          text-center
          uppercase
          mb-2
          leading-none
          font-normal font-heading
        "
      >
        {{ cta.title }}
        <span class="font-bold">{{ cta.title2 }}</span>
      </h2>
      <div v-html="cta.content" class="mt-6 mb-8 lg:text-2xl"></div>
      <g-image :src="cta.image" class="lg:my-20 mx-auto" />
      <a
        class="
          inline-block
          bg-white
          text-lg
          learn-button
          hover:bg-gray-400
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        target="_blank"
        v-if="cta.button && cta.link.includes('http')"
        :href="cta.link"
        >{{ cta.button }}</a
      >

      <a
        class="
          inline-block
          bg-white
          text-lg
          learn-button
          hover:bg-gray-400
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        v-else
        :href="cta.link"
        >{{ cta.button }}</a
      >
    </div>

    <div class="w-full mx-auto py-16" v-else-if="id == 'farm' && lastCta">
      <h2
        v-if="cta.title"
        class="
          lg:text-6xl
          text-center
          uppercase
          mb-2
          leading-none
          font-normal font-heading
        "
      >
        {{ cta.title }}
        <span class="font-bold">{{ cta.subtitle }}</span>
      </h2>
      <!-- <h2
        v-if="cta.subtitle"
        class="
          lg:text-5xl
          text-center
          uppercase
          mb-2
          leading-none
          font-bold font-heading
        "
      >
        {{ cta.subtitle }}
        
      </h2> -->
      <div
        v-html="cta.content"
        class="mt-6 mb-8 text-xl max-w-6xl mx-auto"
      ></div>
      <g-image :src="cta.image" class="lg:my-20 lg:w-3/4 mx-auto" />
      <!-- <a
        class="
          inline-block
          bg-white
          text-lg
          learn-button
          hover:bg-gray-400
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        target="_blank"
        v-if="cta.button && cta.link.includes('http')"
        :href="cta.link"
        >{{ cta.button }}</a
      >

      <a
        class="
          inline-block
          bg-white
          text-lg
          learn-button
          hover:bg-gray-400
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        v-else
        :href="cta.link"
        >{{ cta.button }}</a
      > -->
    </div>

    <!-- developer -->
    <div
      class="w-full mx-auto lg:mt-20 py-10 lg:p-20"
      v-else-if="id == 'developer' && lastCta"
    >
      <h2
        v-if="cta.title"
        class="
          lg:text-6xl
          text-center
          uppercase
          mb-2
          leading-none
          font-normal font-heading
        "
      >
        {{ cta.title }}
        <span class="font-bold">{{ cta.subtitle }}</span>
      </h2>
      <div
        v-html="cta.content"
        class="mt-6 mb-8 lg:text-2xl lg:max-w-4xl mx-auto px-4"
      ></div>
      <div class="inline-block" v-if="cta.button">
        <a
          class="
            inline-block
            bg-white
            text-lg
            learn-button
            hover:bg-gray-400
            px-12
            py-1
            mr-5
            my-4
            border-2
            shadow
            border-black
          "
          target="_blank"
          v-if="cta.button && cta.link.includes('http')"
          :href="cta.link"
          >{{ cta.button }}</a
        >

        <a
          class="
            inline-block
            bg-white
            text-lg
            learn-button
            hover:bg-gray-400
            px-12
            py-1
            mr-5
            my-4
            border-2
            shadow
            border-black
          "
          v-else
          :href="cta.link"
          >{{ cta.button }}</a
        >
      </div>
      <div class="inline-block" v-if="cta.button2">
        <a
          class="
            inline-block
            bg-white
            text-lg
            learn-button
            hover:bg-gray-400
            px-12
            py-1
            mr-5
            my-4
            border-2
            shadow
            border-black
          "
          target="_blank"
          v-if="cta.button2 && cta.link2.includes('http')"
          :href="cta.link2"
          >{{ cta.button2 }}</a
        >

        <a
          class="
            inline-block
            bg-white
            text-lg
            learn-button
            hover:bg-gray-400
            px-12
            py-1
            mr-5
            my-4
            border-2
            shadow
            border-black
          "
          v-else
          :href="cta.link2"
          >{{ cta.button2 }}</a
        >
      </div>
    </div>

    <!-- community -->
    <div
      class="w-full mx-auto py-6 lg:py-10"
      v-else-if="id == 'community' && !textOnly"
    >
      <h2
        v-if="cta.title"
        class="
          lg:text-6xl
          text-center
          uppercase
          mb-2
          leading-none
          font-normal font-heading
        "
      >
        {{ cta.title }}
        <br />
        <span class="font-bold">{{ cta.subtitle }}</span>
      </h2>
      <div
        v-html="cta.content"
        class="mt-6 mb-8 lg:text-2xl lg:max-w-4xl mx-auto px-4"
      ></div>

      <a
        class="
          inline-block
          bg-white
          text-lg
          learn-button
          hover:bg-gray-400
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        target="_blank"
        v-if="cta.button && cta.link.includes('http')"
        :href="cta.link"
        >{{ cta.button }}</a
      >

      <a
        class="
          inline-block
          bg-white
          text-lg
          learn-button
          hover:bg-gray-400
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        v-else
        :href="cta.link"
        >{{ cta.button }}</a
      >
    </div>

    <div
      class="w-full mx-auto lg:mt-20 py-10 lg:p-20"
      v-else-if="id == 'community' && textOnly"
    >
      <h2
        v-if="cta.title"
        class="
          lg:text-6xl
          text-center
          uppercase
          mb-2
          leading-none
          font-normal font-heading
        "
      >
        {{ cta.title }}
        <br />
        <span class="font-bold">{{ cta.subtitle }}</span>
      </h2>
      <div
        v-html="cta.content"
        class="mt-6 mb-8 lg:text-2xl lg:max-w-4xl mx-auto px-4"
      ></div>
      <div>
        <a
          class="
            inline-block
            bg-gray-200
            text-lg
            hover:bg-gray-400
            px-12
            py-1
            mx-3
            my-4
          "
          target="_blank"
          :href="cta.faqlink"
          >{{ cta.faqbutton }}</a
        >
        <a
          class="
            inline-block
            bg-gray-200
            text-lg
            hover:bg-gray-400
            px-12
            py-1
            mx-3
            my-4
          "
          target="_blank"
          :href="cta.faqlink2"
          >{{ cta.faqbutton2 }}</a
        >
        <a
          class="
            inline-block
            bg-gray-200
            text-lg
            hover:bg-gray-400
            px-12
            py-1
            mx-3
            my-4
          "
          target="_blank"
          :href="cta.faqlink3"
          >{{ cta.faqbutton3 }}</a
        >
      </div>
    </div>

    <!-- support -->
    <div
      class="w-full mx-auto lg:mt-20 py-10"
      v-else-if="id == 'support' && textOnly"
    >
      <div class="gray py-10 lg:py-20">
        <h2
          v-if="cta.title"
          class="
            lg:text-6xl
            text-center
            uppercase
            mb-2
            leading-none
            font-normal font-heading
          "
        >
          {{ cta.title }}
          <br />
          <span class="font-bold">{{ cta.subtitle }}</span>
        </h2>
        <div
          v-html="cta.content"
          class="mt-6 mb-8 text-xl lg:max-w-4xl mx-auto px-4"
        ></div>
        <div class="mb-32">
          <a
            class="
              inline-block
              bg-gray-300
              text-lg
              hover:bg-gray-400
              px-12
              py-1
              mx-3
              my-4
            "
            :href="cta.faqlink"
            >{{ cta.faqbutton }}</a
          >
          <a
            class="
              inline-block
              bg-gray-300
              text-lg
              hover:bg-gray-400
              px-12
              py-1
              mx-3
              my-4
            "
            :href="cta.faqlink2"
            >{{ cta.faqbutton2 }}</a
          >
          <a
            class="
              inline-block
              bg-gray-300
              text-lg
              hover:bg-gray-400
              px-12
              py-1
              mx-3
              my-4
            "
            target="_blank"
            :href="cta.faqlink3"
            >{{ cta.faqbutton3 }}</a
          >
        </div>

        <!-- <a
        class="
          inline-block
          bg-white
          text-lg
          learn-button
          hover:bg-gray-400
          px-12
          py-1
          my-4
          border-2
          shadow
          border-black
        "
        target="_blank"
        v-if="cta.button && cta.link.includes('http')"
        :href="cta.link"
        >{{ cta.button }}</a
      >

      <a
        class="
          inline-block
          bg-white
          text-lg
          learn-button
          hover:bg-gray-400
          px-12
          py-1
          my-4
          border-2
          shadow
          border-black
        "
        v-else
        :href="cta.link"
        >{{ cta.button }}</a
      > -->
      </div>
      <div class="relative lg:mt-48 mt-28">
        <g-image
          :src="cta.image"
          class="lg:my-16 mx-auto absolute inset-x-0 bottom-0 h-60 w-60"
        />
      </div>
      <div class="mt-40">
        <h2
          v-if="cta.smalltitle"
          class="
            lg:text-5xl
            text-center
            uppercase
            mb-8
            leading-none
            font-normal font-heading
          "
        >
          {{ cta.smalltitle }}
          <br />
          <span class="font-bold">{{ cta.smalltitle2 }}</span>
        </h2>

        <a
          class="
            inline-block
            bg-white
            text-lg
            learn-button
            hover:bg-gray-400
            px-12
            py-1
            my-4
            border-2
            shadow
            border-black
          "
          target="_blank"
          v-if="cta.button2 && cta.link2.includes('http')"
          :href="cta.link2"
          >{{ cta.button2 }}</a
        >

        <a
          class="
            inline-block
            bg-white
            text-lg
            learn-button
            hover:bg-gray-400
            px-12
            py-1
            my-4
            border-2
            shadow
            border-black
          "
          v-else
          :href="cta.link2"
          >{{ cta.button2 }}</a
        >
      </div>
    </div>

    <!-- home -->

    <div
      class="w-full mx-auto mt-10 py-16"
      v-else-if="id == 'home' && !lastCta"
    >
      <h2
        v-if="cta.title"
        class="
          lg:text-6xl
          uppercase
          mb-0
          leading-tight
          font-semibold font-heading
        "
      >
        {{ cta.title }}
      </h2>

      <h2
        v-if="cta.subtitle"
        class="
          lg:text-6xl
          uppercase
          mt-0
          leading-tight
          font-semibold font-heading
        "
      >
        {{ cta.subtitle }}
      </h2>

      <g-image :src="cta.image.src" />
      <!-- <div class="mt-8 tracking-wide leading-loose" v-if="cta.video_button">
        <a
          @click="toggleModal"
          class="
            inline-block
            cursor-pointer
            bg-blue-900
            text-sm
            learn-button
            hover:bg-blue-800
            text-gray-100
            px-12
            py-2
            mr-5
            mb-4
            shadow
            rounded-full
          "
          >{{ cta.video_button }}</a
        >
      </div> -->
      <div class="max-w-7xl mx-auto grid lg:grid-cols-3 gap-4">
        <div v-if="cta.button">
          <a
            class="
              block
              bg-white
              lg:text-lg
              learn-button
              hover:bg-gray-400
              bo
              px-12
              py-1
              lg:mr-5
              mx-2
              border-2
              shadow
              border-black
            "
            target="_blank"
            v-if="cta.button && cta.link.includes('http')"
            :href="cta.link"
            >{{ cta.button }}</a
          >
          <a
            class="
              block
              bg-white
              lg:text-lg
              learn-button
              hover:bg-gray-400
              bo
              px-12
              mx-2
              py-1
              lg:mr-5
              border-2
              shadow
              border-black
            "
            v-else
            :href="cta.link"
            >{{ cta.button }}</a
          >
        </div>
        <div v-if="cta.button2">
          <a
            class="
              block
              bg-white
              lg:text-lg
              learn-button
              hover:bg-gray-400
              bo
              px-12
              py-1
              mx-2
              lg:mr-5
              border-2
              shadow
              border-black
            "
            target="_blank"
            v-if="cta.button2 && cta.link2.includes('http')"
            :href="cta.link2"
            >{{ cta.button2 }}</a
          >
          <a
            class="
              block
              bg-white
              lg:text-lg
              learn-button
              hover:bg-gray-400
              bo
              px-12
              mx-2
              py-1
              lg:mr-5
              border-2
              shadow
              border-black
            "
            v-else
            :href="cta.link2"
            >{{ cta.button2 }}</a
          >
        </div>
        <div v-if="cta.button3">
          <a
            class="
              block
              bg-white
              lg:text-lg
              learn-button
              hover:bg-gray-400
              bo
              px-12
              mx-2
              py-1
              lg:mr-5
              border-2
              shadow
              border-black
            "
            target="_blank"
            v-if="cta.button3 && cta.link3.includes('http')"
            :href="cta.link3"
            >{{ cta.button3 }}</a
          >
          <a
            class="
              block
              bg-white
              lg:text-lg
              learn-button
              hover:bg-gray-400
              bo
              px-12
              mx-2
              py-1
              lg:mr-5
              border-2
              shadow
              border-black
            "
            v-else
            :href="cta.link3"
            >{{ cta.button3 }}</a
          >
        </div>
        <div v-if="cta.button4">
          <a
            class="
              block
              bg-white
              lg:text-lg
              learn-button
              hover:bg-gray-400
              bo
              px-12
              mx-2
              py-1
              lg:mr-5
              border-2
              shadow
              border-black
            "
            target="_blank"
            v-if="cta.button4 && cta.link4.includes('http')"
            :href="cta.link4"
            >{{ cta.button4 }}</a
          >
          <a
            class="
              block
              bg-white
              lg:text-lg
              learn-button
              hover:bg-gray-400
              bo
              px-12
              mx-2
              py-1
              lg:mr-5
              border-2
              shadow
              border-black
            "
            v-else
            :href="cta.link4"
            >{{ cta.button4 }}</a
          >
        </div>

        <div v-if="cta.button5">
          <a
            class="
              block
              bg-white
              lg:text-lg
              learn-button
              hover:bg-gray-400
              bo
              px-12
              mx-2
              py-1
              lg:mr-5
              border-2
              shadow
              border-black
            "
            target="_blank"
            v-if="cta.button5 && cta.link5.includes('http')"
            :href="cta.link5"
            >{{ cta.button5 }}</a
          >
          <a
            class="
              block
              bg-white
              lg:text-lg
              learn-button
              hover:bg-gray-400
              bo
              px-12
              mx-2
              py-1
              lg:mr-5
              border-2
              shadow
              border-black
            "
            v-else
            :href="cta.link5"
            >{{ cta.button5 }}</a
          >
        </div>

        <div v-if="cta.button6">
          <a
            class="
              block
              bg-white
              lg:text-lg
              learn-button
              hover:bg-gray-400
              bo
              px-12
              mx-2
              py-1
              lg:mr-5
              border-2
              shadow
              border-black
            "
            target="_blank"
            v-if="cta.button6 && cta.link6.includes('http')"
            :href="cta.link6"
            >{{ cta.button6 }}</a
          >
          <a
            class="
              block
              bg-white
              lg:text-lg
              learn-button
              hover:bg-gray-400
              bo
              px-12
              mx-2
              py-1
              lg:mr-5
              border-2
              shadow
              border-black
            "
            v-else
            :href="cta.link6"
            >{{ cta.button6 }}</a
          >
        </div>
      </div>
    </div>

    <div
      class="w-full max-w-7xl mx-auto mt-10 px-2 lg:py-16"
      v-else-if="id == 'home' && lastCta"
    >
      <g-image class="mx-auto" :src="cta.image" />
      <h2
        v-if="cta.title"
        class="
          lg:text-6xl
          mb-2
          uppercase
          leading-tight
          font-semibold font-heading
        "
      >
        {{ cta.title }}
      </h2>
      <div
        v-html="cta.content"
        class="mt-6 mb-8 mx-auto text-xl text-gray-800"
      ></div>
      <div class="mt-8 tracking-wide leading-loose" v-if="cta.video_button">
        <a
          @click="toggleModal"
          class="
            inline-block
            cursor-pointer
            bg-blue-900
            lg:text-lg
            learn-button
            hover:bg-blue-800
            text-gray-100
            px-12
            py-2
            lg:mr-5
            my-2
            shadow
            rounded-full
          "
          >{{ cta.video_button }}</a
        >
      </div>
      <div v-if="cta.button" class="inline-block">
        <a
          class="
            inline-block
            bg-white
            lg:text-lg
            learn-button
            hover:bg-gray-400
            bo
            px-12
            py-1
            lg:mr-5
            my-2
            border-2
            shadow
            border-black
          "
          target="_blank"
          v-if="cta.button && cta.link.includes('http')"
          :href="cta.link"
          >{{ cta.button }}</a
        >
        <a
          class="
            inline-block
            bg-white
            lg:text-lg
            learn-button
            hover:bg-gray-400
            bo
            px-12
            py-1
            lg:mr-5
            my-2
            border-2
            shadow
            border-black
          "
          v-else
          :href="cta.link"
          >{{ cta.button }}</a
        >
      </div>
      <div v-if="cta.button2" class="inline-block">
        <a
          class="
            inline-block
            bg-white
            lg:text-lg
            learn-button
            hover:bg-gray-400
            bo
            px-12
            py-1
            lg:mr-5
            my-2
            border-2
            shadow
            border-black
          "
          target="_blank"
          v-if="cta.button2 && cta.link2.includes('http')"
          :href="cta.link2"
          >{{ cta.button2 }}</a
        >
        <a
          class="
            inline-block
            bg-white
            lg:text-lg
            learn-button
            hover:bg-gray-400
            bo
            px-12
            py-1
            lg:mr-5
            my-2
            border-2
            shadow
            border-black
          "
          v-else
          :href="cta.link2"
          >{{ cta.button2 }}</a
        >
      </div>
      <div v-if="cta.button3" class="inline-block">
        <a
          class="
            inline-block
            bg-white
            lg:text-lg
            learn-button
            hover:bg-gray-400
            bo
            px-12
            py-1
            lg:mr-5
            my-2
            border-2
            shadow
            border-black
          "
          target="_blank"
          v-if="cta.button3 && cta.link3.includes('http')"
          :href="cta.link3"
          >{{ cta.button3 }}</a
        >
        <a
          class="
            inline-block
            bg-white
            lg:text-lg
            learn-button
            hover:bg-gray-400
            bo
            px-12
            py-1
            lg:mr-5
            my-2
            border-2
            shadow
            border-black
          "
          v-else
          :href="cta.link3"
          >{{ cta.button3 }}</a
        >
      </div>
      <div v-if="cta.button4" class="inline-block">
        <a
          class="
            inline-block
            bg-white
            lg:text-lg
            learn-button
            hover:bg-gray-400
            bo
            px-12
            py-1
            lg:mr-5
            my-2
            border-2
            shadow
            border-black
          "
          target="_blank"
          v-if="cta.button4 && cta.link4.includes('http')"
          :href="cta.link4"
          >{{ cta.button4 }}</a
        >
        <a
          class="
            inline-block
            bg-white
            lg:text-lg
            learn-button
            hover:bg-gray-400
            bo
            px-12
            py-1
            lg:mr-5
            my-2
            border-2
            shadow
            border-black
          "
          v-else
          :href="cta.link4"
          >{{ cta.button4 }}</a
        >
      </div>
    </div>

    <!-- grid -->
    <div
      id="zero_os"
      class="w-full max-w-3xl mx-auto lg:py-20"
      v-else-if="id == 'grid' || (id == 'cloud' && !textOnly)"
    >
      <g-image :src="cta.image" class="mx-auto lg:w-1/3 my-10" />
      <h2
        v-if="cta.title"
        class="
          lg:text-6xl
          text-center
          uppercase
          my-2
          leading-none
          font-bold font-heading
        "
      >
        {{ cta.title }}
      </h2>
      <div
        v-html="cta.content"
        class="mt-6 mb-8 lg:text-xl text-gray-800"
      ></div>
      <a
        class="
          inline-block
          bg-white
          text-lg
          learn-button
          hover:bg-gray-400
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        target="_blank"
        v-if="cta.button && cta.link.includes('http')"
        :href="cta.link"
        >{{ cta.button }}</a
      >
      <a
        class="
          inline-block
          bg-white
          text-lg
          learn-button
          hover:bg-gray-400
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        v-else
        :href="cta.link"
        >{{ cta.button }}</a
      >

      <a
        class="
          inline-block
          bg-white
          text-lg
          learn-button
          hover:bg-gray-400
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        target="_blank"
        v-if="cta.button2 && cta.link2.includes('http')"
        :href="cta.link2"
        >{{ cta.button2 }}</a
      >
      <a
        class="
          inline-block
          bg-white
          text-lg
          learn-button
          hover:bg-gray-400
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        v-else
        :href="cta.link2"
        >{{ cta.button2 }}</a
      >
    </div>

    <!-- tft -->
    <div
      class="w-full max-w-6xl mx-auto lg:my-20"
      v-else-if="id == 'tft' && !lastCta"
    >
      <h2
        v-if="cta.title"
        class="
          text-base
          lg:text-5xl
          max-w-3xl
          mx-auto
          text-center
          uppercase
          my-2
          leading-none
          font-bold font-heading
        "
      >
        {{ cta.title }}
      </h2>
      <div
        v-html="cta.content"
        class="mt-6 mb-8 max-w-4xl mx-auto lg:text-xl text-gray-800"
      ></div>
      <g-image :src="cta.image" class="mx-auto w-full my-10" />
      <a
        class="
          inline-block
          bg-white
          lg:text-lg
          learn-button
          hover:bg-gray-400
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        target="_blank"
        v-if="cta.button && cta.link.includes('http')"
        :href="cta.link"
        >{{ cta.button }}</a
      >
      <a
        class="
          inline-block
          bg-white
          lg:text-lg
          learn-button
          hover:bg-gray-400
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        v-else
        :href="cta.link"
        >{{ cta.button }}</a
      >
    </div>

    <div
      id="gettft"
      class="w-full mx-auto lg:py-20"
      v-else-if="id == 'tft' && lastCta"
    >
      <h2
        v-if="cta.title"
        class="
          lg:max-w-5xl
          mx-auto
          lg:text-6xl
          text-center
          uppercase
          mb-2
          leading-none
          font-bold font-heading
        "
      >
        {{ cta.title }}
      </h2>
      <div
        v-html="cta.content"
        class="mt-6 mb-8 mx-2 lg:text-xl text-gray-800"
      ></div>

      <div class="quicklinks">
        <a :href="cta.link" target="_blank"
          ><g-image
            class="py-2 my-2 px-5 border-2 border-black"
            :src="cta.image2" /></a
        ><a :href="cta.link2" target="_blank"
          ><g-image
            class="py-2 my-2 px-5 border-2 border-black"
            :src="cta.image3"
        /></a>
      </div>

      <!-- <a
        class="
          inline-block
          bg-white
          text-lg
          learn-button
          hover:bg-gray-400
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        target="_blank"
        v-if="cta.button && cta.link.includes('http')"
        :href="cta.link"
        >{{ cta.button }}</a
      >

      <a
        class="
          inline-block
          bg-white
          text-lg
          learn-button
          hover:bg-gray-400
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        v-else
        :href="cta.link"
        >{{ cta.button }}</a
      >

      <a
        class="
          inline-block
          bg-white
          text-lg
          learn-button
          hover:bg-gray-400
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        target="_blank"
        v-if="cta.button2 && cta.link2.includes('http')"
        :href="cta.link2"
        >{{ cta.button2 }}</a
      >

      <a
        class="
          inline-block
          bg-white
          text-lg
          learn-button
          hover:bg-gray-400
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        v-else
        :href="cta.link2"
        >{{ cta.button2 }}</a
      > -->
      <g-image :src="cta.image" class="w-full my-10" />
    </div>

    <!-- tft -->
    <div
      class="w-full lg:max-w-4xl mx-auto lg:mt-20 lg:px-16 lg:py-10 tft_section"
      v-else-if="id == 'tft'"
    >
      <h2
        v-if="cta.title"
        class="
          lg:max-w-lg
          text-8xl
          mb-6
          mt-20
          leading-none
          font-heading
          mx-auto
        "
      >
        {{ cta.title }}
      </h2>
      <div
        v-html="cta.content"
        class="
          mt-6
          mb-8
          text-2xl
          leading-tight
          tracking-wide
          tft_subtitle
          text-gray-800
        "
      ></div>
      <div class="mt-8 tracking-wide leading-loose" v-if="cta.video_button">
        <a
          @click="toggleModal"
          class="
            inline-block
            bg-gray-900
            text-2xl
            learn-button
            hover:bg-gray-800
            text-gray-100
            px-16
            py-1
            mb-4
            shadow
            rounded-full
            tft_subtitle
            tracking-wide
          "
          >{{ cta.video_button }}</a
        >
      </div>
      <a
        class="
          inline-block
          bg-gray-900
          text-2xl
          learn-button
          hover:bg-gray-800
          text-gray-100
          px-16
          py-1
          mb-4
          shadow
          rounded-full
          tft_subtitle
          tracking-wide
        "
        target="_blank"
        v-if="cta.button"
        :href="cta.link"
        >{{ cta.button }}</a
      >
      <g-link
        class="
          inline-block
          bg-blue-900
          text-sm
          learn-button
          hover:bg-blue-800
          text-gray-100
          px-12
          py-2
          mr-5
          mb-4
          shadow
          rounded-full
        "
        v-if="cta.button2"
        :to="cta.link2"
        >{{ cta.button2 }}</g-link
      >
      <g-link
        class="
          inline-block
          bg-blue-900
          text-sm
          learn-button
          hover:bg-blue-800
          text-gray-100
          px-12
          py-2
          mr-5
          mb-4
          shadow
          rounded-full
        "
        v-if="cta.button3"
        :to="cta.link3"
        >{{ cta.button3 }}</g-link
      >

      <g-link
        class="
          inline-block
          bg-blue-900
          text-sm
          learn-button
          hover:bg-blue-800
          text-gray-100
          px-12
          py-2
          mr-5
          mb-4
          shadow
          rounded-full
        "
        v-if="cta.button4"
        :to="cta.link4"
        >{{ cta.button4 }}</g-link
      >
    </div>

    <!-- conversations -->
    <div class="w-full mx-auto lg:py-20" v-else-if="id == 'conversations'">
      <h2
        v-if="cta.title"
        class="
          lg:text-6xl
          text-center
          uppercase
          mb-2
          leading-none
          font-bold font-heading
        "
      >
        {{ cta.title }}
      </h2>
      <div
        v-html="cta.content"
        class="mt-6 mb-8 lg:text-xl text-gray-800 max-w-2xl mx-auto"
      ></div>
      <a
        class="
          inline-block
          bg-white
          text-lg
          learn-button
          hover:bg-gray-400
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        target="_blank"
        v-if="cta.button && cta.link.includes('http')"
        :href="cta.link"
        >{{ cta.button }}</a
      >

      <a
        class="
          inline-block
          bg-white
          text-lg
          learn-button
          hover:bg-gray-400
          px-12
          py-1
          mr-5
          my-4
          border-2
          shadow
          border-black
        "
        v-else
        :href="cta.link"
        >{{ cta.button }}</a
      >
    </div>

    <div
      v-else-if="id == 'cloud' && textOnly"
      class="w-full py-20 max-w-3xl mx-auto lg:my-20"
    >
      <h2 class="text-6xl text-white leading-tight font-semibold font-heading">
        {{ cta.title }}
        <span class="text-pink">{{ cta.subtitle }}</span>
      </h2>
      <div
        v-html="cta.content"
        class="text-xl text-white leading-normal py-10"
      ></div>
      <a
        v-if="cta.link.includes('http')"
        target="_blank"
        :href="cta.link"
        class="
          
        inline-block
        bg-white
        text-lg
        learn-button
        hover:bg-gray-400
        px-12
        py-1
        mr-5
        my-4
        border-2
        shadow
        border-black
      
        "
        >{{ cta.button }}</a
      >
      <a
        v-else
        :href="cta.link"
        class="
          
        inline-block
        bg-white
        text-lg
        learn-button
        hover:bg-gray-400
        px-12
        py-1
        mr-5
        my-4
        border-2
        shadow
        border-black
      
        "
        >{{ cta.button }}</a
      >
    </div>

    <div class="w-full max-w-7xl mx-auto" v-else>
      <h2
        v-if="cta.title"
        class="text-4xl mb-2 uppercase leading-tight font-semibold font-heading"
      >
        {{ cta.title }}
      </h2>
      <div v-html="cta.content" class="mt-6 mb-8 text-gray-600"></div>
      <div class="mt-8 tracking-wide leading-loose" v-if="cta.video_button">
        <a
          @click="toggleModal"
          class="
            inline-block
            cursor-pointer
            bg-blue-900
            text-sm
            learn-button
            hover:bg-blue-800
            text-gray-100
            px-12
            py-2
            mr-5
            mb-4
            shadow
            rounded-full
          "
          >{{ cta.video_button }}</a
        >
      </div>
      <a
        class="
          inline-block
          bg-blue-900
          text-sm
          learn-button
          hover:bg-blue-800
          text-gray-100
          px-12
          py-2
          mr-5
          mb-4
          rounded
          shadow
          rounded-full
        "
        target="_blank"
        v-if="cta.button"
        :href="cta.link"
        >{{ cta.button }}</a
      >
      <g-link
        class="
          inline-block
          bg-blue-900
          text-sm
          learn-button
          hover:bg-blue-800
          text-gray-100
          px-12
          py-2
          mr-5
          mb-4
          rounded
          shadow
          rounded-full
        "
        v-if="cta.button2"
        :to="cta.link2"
        >{{ cta.button2 }}</g-link
      >
      <g-link
        class="
          inline-block
          bg-blue-900
          text-sm
          learn-button
          hover:bg-blue-800
          text-gray-100
          px-12
          py-2
          mr-5
          mb-4
          shadow
          rounded-full
        "
        v-if="cta.button3"
        :to="cta.link3"
        >{{ cta.button3 }}</g-link
      >
    </div>
    <Modal
      :link="cta.video_link"
      :showModal="showModal"
      @onClose="handleClose"
    />
  </section>
</template>

<script>
import Modal from "~/components/custom/Modal.vue";

export default {
  props: ["cta", "id", "textOnly", "lastCta"],
  data() {
    return {
      showModal: false,
    };
  },
  components: {
    Modal,
  },
  methods: {
    toggleModal() {
      this.showModal = !this.showModal;
    },
    handleClose() {
      this.showModal = false;
    },
  },
};
</script>
<style scoped>
.pink {
  background-color: #fff;
}

.green {
  background-color: #70dfc9;
}

.gray {
  background: #f2f2f2;
}

.quicklinks {
  box-sizing: border-box;
  -webkit-align-items: center;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  width: auto;
  display: inline-block;
  margin: 0 auto;
  border-radius: 10px;
  margin-top: 30px;
  -webkit-flex-wrap: wrap;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  margin-bottom: 60px;
}
.quicklinks img {
  height: auto;
  /* max-width: 150px; */
  display: inline-block;
  -webkit-filter: grayscale(100%);
  filter: grayscale(100%);
  position: relative;
  margin-right: 30px;
  -webkit-transition: all 0.2s ease;
  transition: all 0.2s ease;
  opacity: 0.5;
}

.quicklinks img:hover {
  opacity: 1;
  -webkit-transition: all 0.2s ease;
  transition: all 0.2s ease;
  -webkit-filter: grayscale(0%);
  filter: grayscale(0%);
}
.to-black {
  background: #000;
  background: -webkit-linear-gradient(to right, #000, #323232);
  background: linear-gradient(to right, #000, #323232);
}
.to-black-bottom {
  background: #000;
  background: -webkit-linear-gradient(to bottom, #000, #323232);
  background: linear-gradient(to bottom, #000, #323232);
}
.bg-gray {
  background-color: #e6e6e6;
}

.green {
  /* background-color: #70dfc9; */
  font-family: "Orbitron", sans-serif !important;
}
.text-pink {
  color: #ea1ff7;
}
</style>