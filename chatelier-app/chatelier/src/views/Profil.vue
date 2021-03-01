<template>
  <div id="profil" class="mx-96">
    <p class="text-2xl">Bienvenue {{ $store.state.username }}</p>
    <CardProfil
      v-for="course in courseList"
      v-bind:key="course.id"
      v-bind:title="course.title.rendered"
    />
    <button class="btn-grad" v-on:click="save">Enregistrer</button>

    <button class="btn-grad" v-on:click="deconnexion">Deconnexion</button>
  </div>
</template>
<script>
import CardProfil from "../components/CardProfil";
import Authentication from "../services/Authentication";
import CourseService from "../services/CourseService";
export default {
  components: { CardProfil },
  name: "Profil",
  props: {
    username: {
      type: String,
    },
  },
  methods: {
    deconnexion() {
      Authentication.disconnectUser();
    },
    save() {},
  },
  data: () => {
    return { courseList: [] };
  },
  created: function () {
    CourseService.getCoursesList()
      //.then((data) => console.log(data.data[0].level_array[0].name))
      .then((data) => (this.courseList = data.data))
      .catch((error) => alert(error));
  },
};
</script>
<style>
#profil {
  font-family: rosario;
  color: grey;
}

.btn-grad {
  background-image: linear-gradient(
    to right,
    #1a6b5a 0%,
    #73c4b6 51%,
    #1a6b5a 100%
  );
}
.btn-grad {
  padding: 15px 45px;
  text-align: center;
  text-transform: uppercase;
  transition: 0.5s;
  background-size: 200% auto;
  color: white;
  box-shadow: 0 0 20px #eee;
  border-radius: 10px;
  display: block;
  margin: 2rem 0;
}

.btn-grad:hover {
  background-position: right center; /* change the direction of the change here */
  color: #fff;
  text-decoration: none;
}
</style>
         
