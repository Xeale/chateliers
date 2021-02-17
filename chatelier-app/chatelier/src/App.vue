<template>
  <div id="app">
    <Header />
    <main>
      <router-view />
    </main>
    <Footer />
  </div>
</template>

<script>
import Footer from './components/Footer.vue';
import Header from "./components/Header";

export default {
  name: 'App',
  components: {
    Header,
    Footer
  }
}
</script>

<style>
.router-link-exact-active{
  border-bottom: 2px solid rgb(112, 230, 184);
  color: rgba(43, 43, 43, 0.849);
}
.border-none{
  border: none;
}
</style>
