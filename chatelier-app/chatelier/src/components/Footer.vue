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
