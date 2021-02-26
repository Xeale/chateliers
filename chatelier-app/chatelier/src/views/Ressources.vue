<template>
  <div>
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
  data: function () {
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
<style>

</style>

