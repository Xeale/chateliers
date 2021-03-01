<template>
  <div class="about">
    <AboutComponents v-bind:content="about.content.rendered" />
  </div>
</template>

<script>
import AboutService from "../services/AboutService";
import AboutComponents from "../components/AboutComponents";
export default {
  name: "About",
  components: { AboutComponents },
  data() {
    return {
      about: [],
    };
  },
  created: function () {
    AboutService.getAbout()
    .then((data) => (this.about = data.data))
    .catch((error) => alert(error));
  },
};
</script>

<style lang="scss">
.about{
  font-display: rosario;
  color: rgb(71, 69, 69);
  max-width: 60%;
  margin: 0 auto;
  img{
    border: 2px solid grey;
    border-radius: 5px;
    padding:1.5px;
    overflow: auto;
  }
  #modiste, #duo{
    display: flex;
    gap: 1rem;
  }
}

</style>