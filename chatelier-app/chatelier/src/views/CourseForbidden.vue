<template>
  <div class="courseForbidden">
    <h1>Veuillez vous inscrire pour accéder aux cours</h1>
    <router-link
      class="button text-2xl  text-green-300 border shadow-lg border-green-200 hover:border-gray-400 hover:text-gray-400 rounded"
      :to="{ name: 'login' }"
      >Connexion</router-link
    >
  </div>
</template>

<script>
export default {
  name: "CourseForbidden",
};
</script>

<style scoped lang='scss'>
.courseForbidden {
  display: flex;
  height: 50vh;
  flex-direction: column;
  justify-content: center;
  align-items: center;

  * {
    margin: 0;
    padding: 0;
    font-size: 1.5rem;
  }
  .button{
    padding: 0.4rem;
    margin: 1rem;
  }
}
</style>