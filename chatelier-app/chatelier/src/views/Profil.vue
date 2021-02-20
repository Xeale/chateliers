<template>
<div>
  <h1>Mon espace</h1>
  <div class="button" v-on:submit.prevent="deconnexion">Deconnexion</div>

</div>
</template>

<script>
export default {
    name:"Profil",
}
</script>

<style>
.button{
    border: 2px solid black;
    display: inline;
    padding: 5px;
    cursor: pointer;
}

</style>