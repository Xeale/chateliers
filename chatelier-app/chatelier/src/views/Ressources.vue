<template>
  <div class='ressourcePage'>
    <nav class="nav-ressources">
      <a href="#materiel">Matériel</a>
      <a href="#fournisseur">Fournisseur</a>
      <a href="#histoireMode">Histoire de la mode</a>
      <a href="#usage">Usage</a>
      <a href="#vocabulaire">vocabulaire</a>
    </nav>

    <Ressource
      v-bind:materiel="ressources.meta.materiel[0]"
      v-bind:fournisseur="ressources.meta.fournisseur[0]"
      v-bind:histoireMode="ressources.meta.histoire_de_la_mode[0]"
      v-bind:usage="ressources.meta.usage[0]"
      v-bind:vocabulaire="ressources.meta.vocabulaire_de_la_chapellerie[0]"
      />
  </div>
</template>
<script>
import RessourceService from "../services/RessourceService";
import Ressource from "../components/Ressource";
export default {
  components: { Ressource },
  data() {
    return {
      ressources: [],
    };
  },
  created: function () {
    RessourceService.getMeta()
      .then((data) => (this.ressources = data.data))
      .catch((error) => alert(error));
  },
};
</script>
<style lang="scss">
.ressourcePage{
    background: #f3f4f6;

}
.nav-ressources {
  top: 0px;
  position: sticky;
  display: flex;
  width: 100%;
  height: 2rem;
  align-items: center;
  justify-content: center;
  background-color: #f3f4f6;
  font-size: x-large;
  box-shadow: inset 0px 0px 2px 2px rgb(29 28 26 / 5%);
  color: gray;
  z-index: 1;
  a {
    margin-right: 2rem;
  }
}
</style>



