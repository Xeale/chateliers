<template>
  <div>
    <h1 class="title-content">Matèriel</h1>
    <div class="content">
      <p v-html="materiel"></p>
    </div>
    <div>
      <h1 class="title-content">Fournisseur</h1>
    </div>
    <div class="content">
      <p v-html="fournisseur"></p>
    </div>
    <div>
      <h1 class="title-content">Histoire de la mode</h1>
    </div>
    <div class="content">
      <p v-html="histoireMode"></p>
    </div>
    <div>
      <h1 class="title-content">Usage</h1>
    </div>
    <div class="content">
      <p v-html="usage"></p>
    </div>
    <div>
      <h1 class="title-content">Vocabulaire de la chapellerie</h1>
    </div>
    <div class="content">
      <p v-html="vocabulaire"></p>
    </div>
  </div>
</template>

<script>
export default {
  name: "Ressource",
  props: {
    materiel: [String],
    fournisseur: String,
    histoireMode: String,
    usage: String,
    vocabulaire: String,
  },
};
</script>
<style>

h1 {
  font-size: 25px;
}
p {
  padding: 5px;
}
.title-content {
  width: 80%;
  border-bottom: 1px solid #c0c0c0;
  margin-left: 10%;
  margin-top: 5%;
}
.content {
  width: 80%;
  border: 1px solid #c0c0c0;
  margin-left: 10%;
  margin-top: 2%;
}
</style>