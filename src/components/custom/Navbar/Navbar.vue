<template>
  <div class="fixed inset-0 h-20 bg-white">
    <header
      class="
        inline-flex
        items-center
        justify-between
        flex-wrap
        container-fluid
        mx-auto
        py-2
        sm:px-0
        transition-all transition-500
      "
      :class="{
        'opacity-100': !disableScroll && scrollPosition > headerHeight,
        'opacity-0': !disableScroll && scrollPosition < headerHeight,
      }"
    >
      <div class="flex items-center justify-between px-4 sm:p-0">
        <div class="inline-flex items-center flex-shrink-0">
          <a href="/">
            <g-image
              :src="require(`!!assets-loader!@images/tft_color_logo.svg`)"
              class="mr-3 fill-current logo"
              alt=""
            />
          </a>
        </div>

        <div class="lg:hidden ml-auto">
          <button
            @click="isOpen = !isOpen"
            type="button"
            class="block ml-auto text-gray-900 focus:outline-none"
          >
            <svg class="h-6 w-6 fill-current" viewBox="0 0 24 24">
              <path
                v-if="isOpen"
                fill-rule="evenodd"
                d="M18.278 16.864a1 1 0 0 1-1.414 1.414l-4.829-4.828-4.828 4.828a1 1 0 0 1-1.414-1.414l4.828-4.829-4.828-4.828a1 1 0 0 1 1.414-1.414l4.829 4.828 4.828-4.828a1 1 0 1 1 1.414 1.414l-4.828 4.829 4.828 4.828z"
              />
              <path
                v-if="!isOpen"
                fill-rule="evenodd"
                d="M4 5h16a1 1 0 0 1 0 2H4a1 1 0 1 1 0-2zm0 6h16a1 1 0 0 1 0 2H4a1 1 0 0 1 0-2zm0 6h16a1 1 0 0 1 0 2H4a1 1 0 0 1 0-2z"
              />
            </svg>
          </button>
        </div>
        <div class="text-gray-900 sm:block md:hidden">
          <ul class="list-none flex justify-center md:justify-end">
            <!-- <li class="mr-0 sm:mr-6">
              <theme-switcher v-on="$listeners" :theme="theme" />
            </li> -->
            <li
              :key="element.name"
              v-for="(element, index) in navigation.social"
              class="hover:text-white sm:block"
              :class="{
                'px-1 mr-4': index != Object.keys(navigation.navLinks).length,
              }"
            >
              <span class="telegram_icon">
                <a
                  :href="element.link"
                  target="_blank"
                  rel="noopener noreferrer"
                >
                  <font-awesome :icon="['fab', element.icon]" />
                </a>
              </span>
            </li>
            <li class="mr-4">
              <a
                href="javascript:;"
                onclick="ml_account('webforms', '3562741', 'n7q9l7', 'show')"
              >
                <svg
                  aria-hidden="true"
                  focusable="false"
                  data-prefix="far"
                  data-icon="envelope"
                  class="h-5 w-5 mt-1"
                  role="img"
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 512 512"
                >
                  <path
                    fill="currentColor"
                    d="M464 64H48C21.49 64 0 85.49 0 112v288c0 26.51 21.49 48 48 48h416c26.51 0 48-21.49 48-48V112c0-26.51-21.49-48-48-48zm0 48v40.805c-22.422 18.259-58.168 46.651-134.587 106.49-16.841 13.247-50.201 45.072-73.413 44.701-23.208.375-56.579-31.459-73.413-44.701C106.18 199.465 70.425 171.067 48 152.805V112h416zM48 400V214.398c22.914 18.251 55.409 43.862 104.938 82.646 21.857 17.205 60.134 55.186 103.062 54.955 42.717.231 80.509-37.199 103.053-54.947 49.528-38.783 82.032-64.401 104.947-82.653V400H48z"
                  ></path>
                </svg>
              </a>
            </li>
            <li>
              <a href="https://gettft.com/gettft/" target="_blank">
                <g-image
                  :src="require(`!!assets-loader!@images/gettft_white.png`)"
                  class="mr-5 logo2"
                  alt=""
                />
              </a>
            </li>
          </ul>
        </div>
      </div>

      <nav
        :class="isOpen ? 'block' : 'hidden'"
        class="
          bg-white
          navbar
          ml-auto
          xl:order-2
          px-2
          pt-2
          pb-4
          lg:flex lg:p-0 lg:w-100
          xs:bg-transparent
        "
      >
        <div
          :key="index"
          v-for="(element, index) in navigation.navLinks"
          class="w-auto"
        >
          <div
            v-if="element.expandable"
            class="relative mt-2"
            x-data="{ open: false }"
          >
            <button
              @click="setActive(index)"
              class="
                flex flex-row
                items-center
                w-full
                mr-1
                md:w-auto md:inline md:mt-0 md:ml-2
                animated-link
              "
            >
              <span class="uppercase py-1 px-2">{{ element.name }}</span>
              <svg
                fill="currentColor"
                viewBox="0 0 20 20"
                :class="{
                  'rotate-180': active == index,
                  'rotate-0': active == !index,
                }"
                class="
                  inline
                  w-4
                  h-4
                  mt-1
                  ml-1
                  transition-transform
                  duration-200
                  transform
                  md:-mt-1
                "
              >
                <path
                  fill-rule="evenodd"
                  d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                  clip-rule="evenodd"
                ></path>
              </svg>
            </button>
            <div
              v-if="active == index"
              x-show="open"
              x-transition:enter="transition ease-out duration-100"
              x-transition:enter-start="transform opacity-0 scale-95"
              x-transition:enter-end="transform opacity-100 scale-100"
              x-transition:leave="transition ease-in duration-75"
              x-transition:leave-start="transform opacity-100 scale-100"
              x-transition:leave-end="transform opacity-0 scale-95"
              class="
                absolute
                w-auto
                mt-2
                origin-top-right
                rounded-md
                shadow-lg
                md:w-48
                z-30
              "
            >
              <div
                v-if="open"
                class="px-2 py-2 bg-white rounded-md shadow dark:bg-gray-700"
              >
                <div v-for="(link, i) in element.submenu" :key="i">
                  <a
                    v-if="link.external"
                    class="
                      block
                      px-4
                      py-1
                      text-sm
                      bg-transparent
                      rounded-lg
                      dark:bg-transparent dark:hover:bg-gray-600
                      dark-:focus:bg-gray-600
                      dark:focus:text-white
                      dark:hover:text-white
                      dark:text-gray-200
                      md:mt-0
                      hover:text-gray-900
                      focus:text-gray-900
                      hover:bg-gray-200
                      focus:bg-gray-200 focus:outline-none focus:shadow-outline
                    "
                    @click="open = false"
                    :href="link.path"
                    target="_blank"
                    >{{ link.title }}</a
                  >
                  <a
                    v-else
                    class="
                      block
                      px-4
                      py-1
                      text-sm
                      bg-transparent
                      rounded-lg
                      dark:bg-transparent dark:hover:bg-gray-600
                      dark-:focus:bg-gray-600
                      dark:focus:text-white
                      dark:hover:text-white
                      dark:text-gray-200
                      md:mt-0
                      hover:text-gray-900
                      focus:text-gray-900
                      hover:bg-gray-200
                      focus:bg-gray-200 focus:outline-none focus:shadow-outline
                    "
                    @click="open = false"
                    :href="link.path"
                    >{{ link.title }}</a
                  >
                </div>
              </div>
            </div>
          </div>

          <a
            v-else-if="element.external"
            :href="element.link"
            @click="clicked"
            target="_blank"
            class="inline-flex sm:flex uppercase p-2 mr-2 animated-link"
            >{{ element.name }}</a
          >
          <a
            v-else
            :href="element.link"
            @click="clicked"
            class="inline-flex sm:flex uppercase p-2 mr-2 animated-link"
            >{{ element.name }}</a
          >
        </div>
        <!-- <div
          class="md:hidden inline-flex rounded-full border-2 border-gray-200 w-1/2"
        >
          <span class="w-auto flex justify-end items-center p-2">
            <font-awesome :icon="['fas', 'search']" />
          </span>
          <input
            class="w-full rounded mr-4 bg-white"
            type="text"
            placeholder="Search..."
            v-model="search"
            @keyup.enter="result"
          />
        </div> -->
      </nav>
      <div class="hidden md:inline-block md:order-last">
        <div class="inline-flex">
          <ul class="list-none inline-flex mt-4 mr-4 mx-auto">
            <!-- <li class="mr-0 sm:mr-2">
            <ThemeSwitcher v-on="$listeners" :theme="theme" />
          </li> -->

            <!-- <li
            :key="element.name"
            v-for="(element, index) in navigation.social"
            class="mr-8 mb-2 sm:block"
            v-bind:class="{
              'mr-2': index != Object.keys(navigation.social).length - 1,
            }"
          >
            <span class="telegram_icon">
              <a :href="element.link" target="_blank" rel="noopener noreferrer">
                <font-awesome :icon="['fab', element.icon]" />
              </a>
            </span>
          </li> -->
            <li class="ml-4">
              <a href="https://t.me/threefoldnews" target="_blank">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="18"
                  height="18"
                  fill="currentColor"
                  class="bi bi-telegram"
                  viewBox="0 0 16 16"
                >
                  <path
                    d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.287 5.906c-.778.324-2.334.994-4.666 2.01-.378.15-.577.298-.595.442-.03.243.275.339.69.47l.175.055c.408.133.958.288 1.243.294.26.006.549-.1.868-.32 2.179-1.471 3.304-2.214 3.374-2.23.05-.012.12-.026.166.016.047.041.042.12.037.141-.03.129-1.227 1.241-1.846 1.817-.193.18-.33.307-.358.336a8.154 8.154 0 0 1-.188.186c-.38.366-.664.64.015 1.088.327.216.589.393.85.571.284.194.568.387.936.629.093.06.183.125.27.187.331.236.63.448.997.414.214-.02.435-.22.547-.82.265-1.417.786-4.486.906-5.751a1.426 1.426 0 0 0-.013-.315.337.337 0 0 0-.114-.217.526.526 0 0 0-.31-.093c-.3.005-.763.166-2.984 1.09z"
                  />
                </svg>
              </a>
            </li>

            <li class="ml-4">
              <a
                href="javascript:;"
                onclick="ml_account('webforms', '3562741', 'n7q9l7', 'show')"
              >
                <svg
                  aria-hidden="true"
                  focusable="false"
                  data-prefix="far"
                  data-icon="envelope"
                  class="h-5 w-5"
                  role="img"
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 512 512"
                >
                  <path
                    fill="currentColor"
                    d="M464 64H48C21.49 64 0 85.49 0 112v288c0 26.51 21.49 48 48 48h416c26.51 0 48-21.49 48-48V112c0-26.51-21.49-48-48-48zm0 48v40.805c-22.422 18.259-58.168 46.651-134.587 106.49-16.841 13.247-50.201 45.072-73.413 44.701-23.208.375-56.579-31.459-73.413-44.701C106.18 199.465 70.425 171.067 48 152.805V112h416zM48 400V214.398c22.914 18.251 55.409 43.862 104.938 82.646 21.857 17.205 60.134 55.186 103.062 54.955 42.717.231 80.509-37.199 103.053-54.947 49.528-38.783 82.032-64.401 104.947-82.653V400H48z"
                  ></path>
                </svg>
              </a>
            </li>
          </ul>
          <div class="rounded-full border-2 border-gray-400">
            <a href="https://gettft.com/gettft/" target="_blank">
              <g-image
                :src="require(`!!assets-loader!@images/gettft_white.png`)"
                class="mr-5"
                alt=""
              />
            </a>
          </div>
        </div>
      </div>
    </header>
  </div>
</template>

<script>
/*
 * I'm a lazy guy, so i used this script
 * https://codepen.io/ninaregli/pen/OjeMLP
 * to calculate the current scroll position
 *
 * Will be used to add/remove the additional
 * css classes to show the sticky navbar
 */
import ThemeSwitcher from "~/components/custom/ThemeSwitcher.vue";
export default {
  components: {
    ThemeSwitcher,
  },
  props: {
    disableScroll: {
      type: Boolean,
      default: true,
    },
    theme: {
      type: String,
    },
    navigation: {
      type: Object,
    },
  },
  data: function () {
    return {
      scrollPosition: null,
      headerHeight: 0,
      isOpen: false,
      search: "",
      open: false,
      active: null,
      currentLink: -1,
    };
  },
  methods: {
    updateScroll() {
      this.scrollPosition = window.scrollY;
    },
    setHeaderHeight(height) {
      this.headerHeight = height;
    },
    result() {
      window.location.href = `/search?query=${this.search}`;
    },
    setActive(index) {
      this.active = index;
      this.open = !this.open;
    },
    close(e) {
      if (!this.$el.contains(e.target)) {
        this.open = false;
        this.active = !this.active;
        // this.isOpen = !this.isOpen;
      }
    },
    clicked() {
      this.isOpen = false;
    },
  },
  mounted() {
    if (!this.disableScroll) {
      var height = document.getElementById("header").clientHeight;
      this.setHeaderHeight(height);
      window.addEventListener("scroll", this.updateScroll);
    }
    document.addEventListener("click", this.close);
  },
  beforeDestroy() {
    document.removeEventListener("click", this.close);
  },
};
</script>
<style scoped>
.container-fluid {
  width: 100%;
  padding-right: 160px;
  padding-left: 160px;
  margin-right: auto;
  margin-left: auto;
}
input:focus,
button:focus {
  outline: 0;
}
.inset-0 {
  z-index: 999;
}
nav li a {
  padding-right: 10px;
}
a.active--exact.active {
  background-color: rgba(237, 242, 247, 1);
  border-radius: 0.5rem;
}

.navbar {
  width: auto;
}
.logo {
  max-width: 80px;
}

.logo2 {
  max-width: 90px;
}
@media (max-width: 768px) {
  .navbar {
    width: 100%;
  }

  .container-fluid {
    padding-right: 15px;
    padding-left: 15px;
  }
}

@media (min-width: 1024px) {
  .navbar {
    width: auto;
  }
  .container-fluid {
    padding-right: 15px;
    padding-left: 15px;
  }
}

@media (max-width: 1024px) {
  .navbar {
    width: 100%;
  }
  .container-fluid {
    padding-right: 15px;
    padding-left: 15px;
  }
}
</style>