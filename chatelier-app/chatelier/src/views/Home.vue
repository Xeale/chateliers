<template>
  <div class>
    <div class>
      <div class="slide-left absolute mt-4 ml-4 object-cover object-left">
        <img class="bg-center w-full object-cover photo" src="../assets/images/moules.jpg" alt />
      </div>
      <div class="slide-right backg w-2/4 z-10 m-4 py-44 bg-white opacity-75 object-cover background">
        <div class="flex justify-center">
          <div class="">
            <h1 class="text-5xl font-medium">L'art de la chapellerie</h1>
            <h2 class="mt-2">Créez vos chapeaux</h2>
          </div>
          <div class="absolute mr-4">
            <button
              class="z-50 mt-44 ml-4 border-2 border-green-400 text-green-400 p-2 px-2 h-12 uppercase hover:shadow hover:bg-green-400 hover:border-green-300 hover:text-white"
            >Voir Trailer</button>
          </div>
        </div>
      </div>
    </div>
    <Slider/>
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
  object-position: center;
}
.photo {
  height: 590px;
}
.background {
  height: 608px;
}
h1 {
  font-family: "Calligraffitti", cursive;
}
h2 {
  font-family: "rosario";
  text-align: center;
}
.slide-left {
 overflow: hidden; 
}
.slide-left img {
  animation: 3s slide-right;
  animation-delay: 0s;
}
.slide-right {
   overflow: hidden;
}
.slide-right h1 {
   animation: 3s slide-right;
   animation-delay: 0s;
}
.slide-right h2 {
   animation: 2.5s slide-right;
   animation-delay: 0s;
}
.slide-right .backg {
   animation: 2s slide-right;
   animation-delay: 0s;
}
@keyframes slide-right {
    from {
       margin-left: -1000px;
    }
    to {
       margin-left: 0%;
    }
 }
 @keyframes slide-left {
    from {
       margin-left: -1000px;
    }
    to {
       margin-left: 0%;
    }
 }
</style>