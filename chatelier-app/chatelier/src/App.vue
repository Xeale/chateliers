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
import Header from "./components/Header";
import Footer from "./components/Footer.vue";

export default {
  name: "App",
  components: {
    Header,
    Footer,
  },
};
</script>

<style>
.border-none {
  border: none;
}
#app {
  min-height: 100vh;
  position: relative;
  padding-bottom: 4rem;

}
Footer {
  color: grey;
  box-shadow: 2px 2px 4px 4px rgba(29, 28, 26, 0.13);
  height: 4rem;
  display: flex;
  width: 100%;
  justify-content: center;
  align-items: center;
  background-color: #fcfbfa;
  font-size: 1.2rem;
  position: absolute;
  bottom: 0;

}
Footer a {
  margin-right: 50px;
}
</style>


