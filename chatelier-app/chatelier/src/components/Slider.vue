<template>
  <carousel class="story-carousel story-carousel--multiple story-carousel--images">
    <slide class="story-carousel__slide">
      <img
        class="h-96 w-96"
        src="../assets/images/slider/photo-1557568850-6989e4c10b90.jpg"
        
        alt="chapeau"
      />
    </slide>
    <slide class="story-carousel__slide">
      <img
      class="h-96 w-96"
        src="../assets/images/slider/photo-1499111544217-9590382658d3.jpg"
        
        alt="chapeau"
      />
    </slide>

    <slide class="story-carousel__slide">
      <img
      class="h-96 w-96"
        src="../assets/images/slider/photo-1567541598101-8b08be146d4b.jpg"
        
        alt="chapeau"
      />
    </slide>
    <slide class="story-carousel__slide">
      <img
      class="h-96 w-96"
        src="../assets/images/slider/photo-1567929764666-a1c11a9d1458.jpg"
        
        alt="chapeau"
      />
    </slide>
    <slide class="story-carousel__slide">
      <img
      class="h-96 w-96"
        src="../assets/images/slider/photo-1577357136355-a5902e90d8a9.jpg"
        
        alt="chapeau"
      />
    </slide>
  </carousel>
</template>

<script>
import { Carousel, Slide } from "vue-snap";
import "vue-snap/dist/vue-snap.css";
export default {
  name: "Slider",
  components: { Carousel, Slide }
};
</script>
<style>
.story-carousel .story-carousel__slide {
  height: 250px;
}
.story-carousel__slide img {
  width: 100%;
}
</style>