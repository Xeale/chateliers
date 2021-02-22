<template>
  <div>
    <h1>Mon espace</h1>
    <button class="btn-grad" v-on:click="deconnexion">Deconnexion</button>
    <CardProfil />
  </div>
</template>

<script>
import CardProfil from '../components/CardProfil';
import Authentication from "../services/Authentication";
export default {
  components: {CardProfil},
  name: "Profil",
  methods: {
    deconnexion() {
      Authentication.disconnectUser();
    },
  },
};
</script>
<style>
.btn-grad {
  background-image: linear-gradient(
    to right,
    #200122 0%,
    #6f0000 51%,
    #200122 100%
  );
}
.btn-grad {
  margin: 10px;
  padding: 15px 45px;
  text-align: center;
  text-transform: uppercase;
  transition: 0.5s;
  background-size: 200% auto;
  color: white;
  box-shadow: 0 0 20px #eee;
  border-radius: 10px;
  display: block;
}

.btn-grad:hover {
  background-position: right center; /* change the direction of the change here */
  color: #fff;
  text-decoration: none;
}
</style>
         