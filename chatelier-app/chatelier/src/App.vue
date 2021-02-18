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

.border-none{
  border: none;
}
</style>
