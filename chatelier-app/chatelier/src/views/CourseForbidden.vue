<template>
<div class="flex  flex-wrap justify-center ">
  <h1>Veillez vous inscrire pour accéder aux cours</h1>
  <div class="">
    <router-link class="  justify-center text-2xl p-2 text-green-300 border shadow-lg border-green-200 hover:border-gray-400 hover:text-gray-400 rounded pt-9." :to="{ name: 'login' }">Connexion</router-link>
  </div>
</div>
</template>

<script>
export default {
  name: "CourseForbidden",
};
</script>

<style scoped>

h1 {
  font-size: 1.5rem;
}
</style>