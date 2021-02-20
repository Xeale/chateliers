<template>
  <div>
    <div class="relative">
      <div
        class="absolute m-4 object-cover object-left"
        src="../assets/images/moules.jpg"
      >
        <img
          class="bg-center w-4/5 h-96 object-cover object-left -right-0"
          src="../assets/images/moules.jpg"
          alt
        />
      </div>
      <div
        class="w-2/4 z-10 h-full m-4 py-44 pl-8 bg-gradient-to-r from-white to-white opacity-75 object-cover flex content-center justify-center"
      >
        <h1>
          L'art de la chapellerie L'art de la chapellerie<br />zezdzdzdzdzd<br />zezdzdzdzdzd
        </h1>
        <div class="absolute bottom-1/4">
          <button
            class="border-2 border-green-400 text-green-400 p-2 px-2 rounded-md h-12 uppercase hover:shadow hover:bg-green-400 hover:border-green-400 hover:text-white"
          >
            Voir Trailer
          </button>
        </div>
      </div>
    </div>
    <Slider />
  </div>
</template>
<script>
import Slider from "../components/Slider";
export default {
  name: "Home",
  components: { Slider },
};
</script>
<style>
button {
  font-family: "rosario";
}
</style>



