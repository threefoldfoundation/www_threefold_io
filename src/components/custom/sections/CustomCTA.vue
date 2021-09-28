<template>
  <div>
    <div class="header section banner" v-if="header">
      <div class="center">
        <h1 class="text-8xl uppercase">
          <strong>{{ title }}</strong>
        </h1>
      </div>
      <div
        class="back"
        :style="{ 'background-image': 'url(' + image.src + ')' }"
      ></div>
    </div>

    <g-link :to="link" class="section banner" v-else>
      <div class="center">
        <h2 class="h1">
          <strong>{{ title }}</strong>
          <font-awesome :icon="['fas', 'long-arrow-alt-right']" />
        </h2>
      </div>
      <div
        class="back"
        :style="{ 'background-image': 'url(' + image.src + ')' }"
      ></div>
    </g-link>
  </div>
</template>
<script>
export default {
  props: ["link", "title", "image", "header"],
};
</script>

<style scoped>
.banner {
  width: 100%;
  margin: 0;
  padding: 120px 0;
  text-align: center;
  position: relative;
  display: block;
  color: #fff !important;
  letter-spacing: 0.5px;
  overflow: hidden;
  background: #00838d;
  transition: 1.5s;
}

.header {
  height: auto;
  background: none;
  padding: 200px 0;
}

.banner h2,
.header h1 {
  margin: auto;
  color: #fff;
  position: relative;
  transition: 0.3s;
  z-index: 1;
  white-space: nowrap;
}

.header h1 {
  color: #000;
  transition: none;
}

.banner h2 svg {
  font-size: 40px;
  margin-left: 15px;
  position: absolute;
  top: 55%;
  transform: translateY(-50%) scale(0.5);
  opacity: 0;
  transition: 0.3s;
}

.banner .back {
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0;
  left: 0;
  background-position: center;
  background-size: cover;
  filter: grayscale(1) contrast(1.4);
  opacity: 0.25;
  transition: 1.5s;
}

.header .back {
  filter: none;
  opacity: 1;
  background-position: center;

  background-size: cover;
  background-repeat: no-repeat;
}

.banner:hover {
  background: #4b3a92;
}

.header:hover {
  background: none;
}

.banner:hover h2 svg {
  transform: translateY(-50%) scale(1);
  opacity: 1;
}

.banner:hover h2 {
  padding-right: 40px;
}

.header:hover h1 {
  padding-right: 0;
}

.banner:hover .back {
  transform: scale(1.03);
}

.header:hover .back {
  transform: none;
}
@media (max-width: 640px) {
  .banner h2 {
    font: 600 7vw/10vw;
  }

  .header h1 {
    font-size: 35px;
  }

  .banner h2 svg {
    font-size: 30px;
  }
}

@media (max-width: 480px) {
  .banner,
  .header {
    padding: 80px 0;
  }
}
</style>