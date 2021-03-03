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
  max-width: 55%;
  margin: 0 auto;
  h2{
    font-size: 2rem;
    margin: 2rem 0 1rem 0;
    text-align: center;
    text-decoration: underline;
  }
  img{
    border: 2px solid grey;
    border-radius: 5px;
    padding:1.5px;
    float: left;
    margin: 0 1rem 0.5rem 0;
  }
  #duo{
    img{
    width:500px;
    }
  }
}
</style>