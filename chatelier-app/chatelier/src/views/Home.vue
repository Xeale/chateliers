<template>
  <div class>
    <div class>
      <div class="slide-left absolute mt-4 ml-4 object-cover object-left">
        <img class="bg-center w-full object-cover photo" src="../assets/images/moules.jpg" alt />
      </div>
      <div class="slide-right backg w-2/4 z-10 m-4 py-44 bg-white opacity-75 object-cover background">
        <div class="flex justify-center">
          <div class="slide-right">
            <h1 class="ml-80 text-lg font-medium ">
Développez votre passion de la chapellerie en apprenant les techniques de fabrication de chapeaux avec des didacticiels et vidéos.</h1>
            <h2 class="mt-2 ml-80">Créez vos chapeaux</h2>
            <button
              class="z-50 font-semibold mt-44 border-2 border-green-300 text-green-300 p-2 px-2 h-12 uppercase hover:shadow hover:bg-green-300  hover:border-green-300 hover:text-white"
            >Voir Trailer</button>
          </div>
          
        </div>
      </div>
    </div>
    <Slider/>
  </div>
</template>
<script>
export default {
  name: "Home",
  components: {}
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
  font-family: "rosario", cursive;
  
}
h2 {
  font-family: "rosario";
  
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
.slide-right  {
   animation: 3s slide-right;
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