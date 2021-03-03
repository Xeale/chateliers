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


header nav {
  display: flex;
  width: 100%;
  height: 15%;
  align-items: center;
  justify-content: center;
  background-color: #fcfbfa;
  font-size: large;
  box-shadow: inset 0px 0px 5px 5px rgb(29 28 26 / 5%);
}

/*a {
  text-decoration: none;
  color: #AAA;
  margin: 0 60px;
}*/
.logo {
  width: 135px;
  margin-top: 0.5rem;
  margin-bottom: 0.5rem;
}
#logo {
  width: 200px;
  height: 100%;
  color: #AAA;
}

/*a:hover {
  color: rgb(112, 230, 184);
}*/





/*search bar*/


.searchBox {
  /*position: center;*/
  /*top: 50%;
    left: 50%;*/
  /* transform:  translate(0%,0%); */
  background: #f1f1f177;
  height: 30px;
  border-radius: 30px;
  padding: 10px;
  align-self: center;

}

.searchBox:hover>.searchInput {
  width: 240px;
  padding: 0 6px;
}

.searchBox:hover>.searchButton {
  background: rgba(255, 255, 255, 0);
  color: #d5d8dd;
}

.searchButton {
  color: rgba(8, 8, 8, 0.678);
  /*float: right;*/
  width: 30px;
  height: 30px;
  border-radius: 50%;
  background: #00030700;
  display: flex;
  justify-content: center;
  align-items: center;
  transition: 0.4s;
  top: 50%;
}

.searchInput {
  border: none;
  background: none;
  outline: none;
  float: left;
  padding: 0;
  color: #75B1A9;
  font-size: 16px;
  transition: 0.4s;
  line-height: 40px;
  width: 0px;

}

@media screen and (max-width: 620px) {
  .searchBox:hover>.searchInput {
    width: 150px;
    padding: 0 6px;
  }
}

nav a {
  color: gray;
}
.router-link-exact-active {
  border-bottom: 2px solid rgb(149, 224, 199);
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
  background: rgb(149, 224, 199);
  bottom: -2px;
  transition: width 0.3s ease 0s, left 0.3s ease 0s;
  width: 0;
}
a:hover:after {
  width: 100%;
  left: 0;
  color: antiquewhite;
}

h1 {
  font-family: 'Calligraffitti', cursive;
  font-weight: 260;
  font-size: 350%;
  margin-top: 4rem;
  margin-left: 6rem;
  position: relative;
}

h2 {
  font-family: 'rosario';
  font-weight: 400;
  font-size: 150%;
  margin-left: 6rem;
  color: #AAA;
  margin-top: 40px;
}
</style>
