<template>
  <header class="header logo-only">
    <nav>
      <router-link :to="{ name: 'home' }">Accueil</router-link>
      <router-link :to="{ name: 'course' }">Cours</router-link>
      <router-link :to="{ name: 'resource' }">Ressources</router-link>
      <router-link :to="{ name: 'home' }" class='border-none'>
        <img
          class="logo"
          src="../assets/images/logoTransparent.png"
          alt="logo"
        />
      </router-link>
      <router-link :to="{ name: 'about' }">A propos</router-link>
      <router-link :to="{ name: 'news' }">News</router-link>
      <router-link :to="{ name: 'login' }">Connexion</router-link>
      <div class="searchBox">
        <!-- search bar -->
        <input
          class="searchInput"
          type="text"
          name=""
          placeholder="Recherche"
        />
        <button class="searchButton" href="#">
          <i class="fas fa-search"></i>
        </button>
      </div>
    </nav>
  </header>
</template>

<script>
export default {
  name: "Header",
};
</script>
<style>
@import "../assets/css/homepage.css";
</style>
