<template>
  <div>
    <div class="">
      <div class="absolute mt-4 ml-4 object-cover object-left">
        <img
          class="bg-center w-full h-96 object-cover "
          src="../assets/images/moules.jpg"
          alt
        />
      </div>
      <div
        class="w-2/4 z-10 h-full m-4 py-44 bg-white opacity-75 object-cover flex content-center justify-center"
      >
        <h1>
          L'art de la chapellerie L'art de la chapellerie
          <br />zezdzdzdzdzd
          <br />zezdzdzdzdzd
        </h1>
        <div class="">
          <button
            class="border-2 border-green-400 text-green-400 p-2 px-2 h-12 uppercase hover:shadow hover:bg-green-400 hover:border-green-300 hover:text-white"
          >Voir Trailer</button>
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
  components: { Slider }
};
</script>
<style>
button {
  font-family: "rosario";
}
</style>



