<template>
  <g-link :to="link" class="section banner">
    <div class="center">
      <h2 class="h1">
        <strong>{{ title }}</strong>
        <font-awesome :icon="['fas', 'long-arrow-alt-right']" />
      </h2>
    </div>
    <!-- <div
      class="back"
      :style="{
        backgroundImage: require(`!!assets-loader!@images/threefold_people.png`),
      }"
    ></div> -->
  </g-link>
</template>
<script>
export default {
  props: ["link", "title"],
};
</script>

<style scoped>
.banner {
  width: 100%;
  margin: 0;
  padding: 120px 0;
  text-align: center;
  display: block;
  color: #fff !important;
  letter-spacing: 0.5px;
  overflow: hidden;
  background: #00838d;
  transition: 1.5s;
}

.banner .h1 {
  margin: auto;
  color: #fff;
  position: relative;
  transition: 0.3s;
  z-index: 1;
  white-space: nowrap;
}

.banner .h1 svg {
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

/* .banner.banner-careers .back {
  background-image: url(images/holo-team-banner.jpg)
} */

.banner:hover {
  background: #4b3a92;
}

.banner:hover .h1 svg {
  transform: translateY(-50%) scale(1);
  opacity: 1;
}

.banner:hover .h1 {
  padding-right: 40px;
}

.banner:hover .back {
  /* transform: scale(1.03) */
}

@media (max-width: 640px) {
  .banner .h1 {
    font: 600 7vw/10vw;
  }

  .banner .h1 svg {
    font-size: 30px;
  }
}

@media (max-width: 480px) {
  .banner {
    padding: 80px 0;
  }
}
</style>