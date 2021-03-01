<template>

    <div>
    <Course :title="title" :video="video" :content="content"/>
  </div>
        
 
  
  
</template>
<script>
import Course from "../components/Course";
import CourseService from "../services/CourseService";
export default {
  components: {
    Course,
  },
  name: "CourseFull",
  data: () => {
    return { title: "", video: "", picture: "" };
  },
  beforeMount: function () {
    CourseService.getCourse(this.$route.params.id).then((response) => {
      // console.log(response.data);
      this.title = response.data.title.rendered;
      this.video = response.data.meta.URL_video[0];
      this.content = response.data.content.rendered;


    }); 
  },
};
</script>
<style scoped>
</style>
