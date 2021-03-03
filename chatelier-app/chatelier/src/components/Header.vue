<template>
  <header class="header logo-only">
    <nav>
      <router-link :to="{ name: 'home' }">Accueil</router-link>
       <div v-if="isConnected">
        <router-link :to="{ name: 'course' }">Cours</router-link>
      </div>
      <div v-else>
        <router-link :to="{ name: 'courseForbidden' }">Cours</router-link>
      </div>
      <router-link :to="{ name: 'ressources' }">Ressources</router-link>
      <router-link :to="{ name: 'home' }" class="border-none">
        <img
          class="logo"
          src="../assets/images/logoTransparent.png"
          alt="logo"
        />
      </router-link>
      <router-link :to="{ name: 'about' }">A propos</router-link>
      <router-link :to="{ name: 'news' }">News</router-link>

      <div v-if="isConnected">
        <router-link :to="{ name: 'profil' }">Mon espace</router-link>
      </div>
      <div v-else>
        <router-link :to="{ name: 'login' }">Connexion</router-link>
      </div>

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
  computed: {
    isConnected() {
      // on récupère l'état de connexion
      return this.$store.state.isUserConnected;
    },
    username() {
      return this.$store.state.username;
    },
  },
};
</script>
<style scoped>
@import "../assets/css/tailwind.css";
@import "../assets/css/homepage.css";


nav a {
  color: gray;
}
.router-link-exact-active {
  border-bottom: 2px solid rgb(112, 230, 184);
  color: rgb(41, 41, 41);
}

a {
  color: rgb(48, 39, 167);
  text-decoration: none;
  letter-spacing: 0.15em;

  display: inline-block;
  padding: 5px 35px;
  position: relative;
}
a:after {
  background: none repeat scroll 0 0 transparent;
  bottom: 0;
  content: "";
  display: block;
  height: 2px;
  left: 50%;
  position: absolute;
  background: rgb(128, 216, 212);
  bottom: 20px;
  transition: width 0.3s ease 0s, left 0.3s ease 0s;
  width: 0;
}
a:hover:after {
  width: 100%;
  left: 0;
  color: antiquewhite;
}

</style>
