<template>
  <div class="ressources">
    <h1 id="materiel">Matériel</h1>
    <p v-html="materiel"></p>
    <h1 id="fournisseur">Fournisseur</h1>
    <p v-html="fournisseur"></p>
    <h1 id="histoireMode">Histoire de la mode</h1>
    <p v-html="histoireMode"></p>
    <h1 id="usage">Usage</h1>
    <p v-html="usage"></p>
    <h1 id="vocabulaire">Vocabulaire de la chapellerie</h1>
    <p v-html="vocabulaire"></p>
  </div>
</template>

<script>
export default {
  name: "Ressource",
  props: {
    materiel: String,
    fournisseur: String,
    histoireMode: String,
    usage: String,
    vocabulaire: String,
  },
  fields: []
};
</script>
<style lang="scss">
$Border: 1.5px solid #c0c0c0;
.ressources {
  width: 80%;
  margin: 0 auto;

  h1 {
    margin: 0;
    font-size: 25px;
    border-bottom: $Border;
    padding-top: 2rem;
  }
  p {
    padding: 10px;
    border: $Border;
    margin-top: 2%;
  }
}
</style>