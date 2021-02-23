<template>
  <footer>
    <nav>
      <router-link :to="{ name: 'privacy' }"
        >Politique de confidentialité</router-link
      >
      <router-link :to="{ name: 'cgv' }"
        >Conditions générales de vente</router-link
      >
      <router-link :to="{ name: 'cookie' }">Cookies</router-link>
      <router-link :to="{ name: 'newsletter' }">News letter</router-link>
    </nav>
  </footer>
</template>

<script>
export default {
  name: "Footer",
};
</script>

<style>
footer nav {

  box-shadow: 2px 2px 4px 4px rgba(29, 28, 26, 0.13);
  background-color: rgb(221, 219, 218);
  height: 5%;
  display: flex;
  width: 100%;
  justify-content: center;
  background-color: #fcfbfa;
  font-size: large;
}


</style>