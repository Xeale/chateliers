<template>
  <div class="containerLogin">
    <!-- inscription -->
    <form class="signUp" v-on:submit.prevent="addUser">
      <h3>Créez votre compte</h3>
      <p>Veuillez entrer votre adresse email</p>
      <p>et votre mot de passe pour vous inscrire.</p>
      <input
        class="w100"
        type="text"
        placeholder="Entrez votre nom"
        reqired
        autocomplete="off"
        v-model="user.username"
      />
      <input
        type="email"
        placeholder="Entrez un email"
        reqired
        v-model="user.email"
      />
      <input
        type="password"
        placeholder="Entrez un mot de passe"
        reqired
        v-model="user.password"
      />

      <button class="form-btn sx log-in" type="button">connexion</button>
      <button class="form-btn dx" type="submit">S'inscrire</button>
    </form>

    <!-- connexion -->

    <form class="signIn" v-on:submit.prevent="connectedUSer">
      <h3>Bienvenue !</h3>
      <!--connexion avec google à voir par la suite-->
      <!--<button class="ggle" type="button">Connexion avec Google</button> -->
      <!--<p>- ou -</p> -->
      <input
        type="email"
        placeholder="Email"
        autocomplete="off"
        reqired
        v-model="emailValue"
      />
      <input
        type="password"
        placeholder="Mot de passe"
        reqired
        v-model="passwordValue"
      />
      <button class="form-btn sx back" type="button">Retour</button>
      <button class="form-btn dx" type="submit">Connexion</button>
    </form>
  </div>
</template>

<script>
import $ from "jquery";
import Authentication from "../services/Authentication";
export default {
  name: "LoginComponent",
  mounted() {
    $(".log-in").click(function () {
      $(".signIn").addClass("active-dx");
      $(".signUp").addClass("inactive-sx");
      $(".signUp").removeClass("active-sx");
      $(".signIn").removeClass("inactive-dx");
    });

    $(".back").click(function () {
      $(".signUp").addClass("active-sx");
      $(".signIn").addClass("inactive-dx");
      $(".signIn").removeClass("active-dx");
      $(".signUp").removeClass("inactive-sx");
    });
  },
  data: function () {
    return {
      user: {},
      emailValue: "",
      passwordValue: "",
    };
  },
  methods: {
    addUser: function () {
      console.log(this.user);
      Authentication.createUser(this.user);
    },
    connectedUSer: function () {
      console.log(this.emailValue, this.passwordValue)
      Authentication.loginUser(this.emailValue, this.passwordValue);
    },
  },
};
</script>

<style scoped>
@import "../assets/css/login.css";
</style>