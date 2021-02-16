<template>
  <div class="container">
    <form class="signUp">
      <h3>Créez votre compte</h3>
      <p>Veuillez entrer votre adresse email</p>
      <p>et votre mot de passe pour vous inscrire.</p>
      <input
        class="w100"
        type="email"
        placeholder="Entrez votre email"
        reqired
        autocomplete="off"
      />
      <input type="password" placeholder="Tapez le mot de passe" reqired />
      <input type="password" placeholder="Confirmez mot de passe" reqired />
      <button class="form-btn sx log-in" type="button">connexion</button>
      <button class="form-btn dx" type="submit">S'inscrire</button>
    </form>
    <form class="signIn">
      <h3>Bienvenue !</h3>
      <!--connexion avec google à voir par la suite-->
      <!--<button class="ggle" type="button">Connexion avec Google</button> -->
      <!--<p>- ou -</p> -->
      <input type="email" placeholder="Email" autocomplete="off" reqired />
      <input type="Mot de passe" placeholder="Mot de passe" reqired />
      <button class="form-btn sx back" type="button">Retour</button>
      <button class="form-btn dx" type="submit">Connexion</button>
    </form>
  </div>
</template>

<script>
import $ from "jquery";
export default {
  name: "Login",
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
};
</script>

<style>
@import "../assets/css/login.css";
</style>