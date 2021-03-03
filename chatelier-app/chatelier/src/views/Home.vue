<template>
  <div class>
    <div class>
      <div class="slide-left absolute mt-4 ml-4 object-cover object-left">
        <img class="bg-center w-full object-cover photo" src="../assets/images/moules.jpg" alt />
      </div>
      <div class="slide-right  w-2/4 z-10 m-4 py-44 bg-white opacity-75 object-cover background">
        <div class="flex justify-center">
          <div class="slide-right">
            <h1 class="mt-2 font-extrabold text-4xl ml-80">Chatelier</h1>
            <h2 class="ml-80 text-2xl  pt-4 mr-10 font-medium ">
Créez vos chapeaux</h2>
            <h4 class="pt-3 mt-2 mr-10 ml-80">Développez votre passion de la chapellerie en apprenant les <br> techniques de fabrication de chapeaux avec des didacticiels et vidéos</h4>
            <button
              class="z-50 font-semibold ml-80 mt-4 border-2 border-green-300 text-green-300 p-2 px-2 h-12 uppercase hover:shadow hover:bg-green-300  hover:border-green-300 hover:text-white"
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
  font-family: "rosario";
}

h2 {
  font-family: "rosario";
  
}
h3 {
  font-family: "rosario";
  
}

.slide-right {
   overflow: hidden;
}
.slide-right  {
   animation: 2s slide-right;
   animation-delay: 0s;
}


@keyframes slide-right {
    from {
       margin-left: -1000px;
    }
    to {
       margin-left: 10px;
    }
 }

</style>