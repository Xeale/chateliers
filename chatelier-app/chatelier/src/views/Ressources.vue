<template>
  <div class='ressourcePage'>
    <nav class="nav-ressources">
      <a href="#materiel">Matériel</a>
      <a href="#fournisseur">Fournisseur</a>
      <a href="#histoireMode">Histoire de la mode</a>
      <a href="#usage">Usage</a>
      <a href="#vocabulaire">vocabulaire</a>
      <a href="#top" class="back-to-top">Back to top</a>
    </nav>

    <a id="button">dgdsfgdsfgd</a>
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
  mounted: function() {
    
  }
  
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
#button {
  display: inline-block;
  color: red;
  background-color: #FF9800;
  width: 550px;
  height: 50px;
  text-align: center;
  border-radius: 4px;
  position: fixed;
  bottom: 30px;
  right: 30px;
  transition: background-color .3s, 
    opacity .5s, visibility .5s;
  opacity: 0;
  z-index: 1000;
}
#button::after {
  content: "\f077";
  font-family: FontAwesome;
  font-weight: normal;
  font-style: normal;
  font-size: 2em;
  line-height: 50px;
  color: #fff;
}
#button:hover {
  cursor: pointer;
  background-color: #333;
}
#button:active {
  background-color: #555;
}
#button.show {
  opacity: 1;
  visibility: visible;
}
    .back-to-top {
        background-color:#333;
        border:1px solid #222;
        border-bottom:0;
        bottom:10px;
        color:#bbb;
        // display:none;
        // float:left;
        font-size:11px;
        padding:10px 10px 5px;
        // position:fixed;
        // right:530px;
        text-decoration:none;
        z-index:99999;
        -webkit-border-radius:10px 10px 0 0;
        -moz-border-radius:10px 10px 0 0;
        border-radius:10px 10px 0 0;
    }



</style>



