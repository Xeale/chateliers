<template>
  <div
    class="p-10 grid grid-cols-1 sm:grid-cols-1 md:grid-cols-3 lg:grid-cols-3 xl:grid-cols-3 gap-1"
  >
    <VideoCard
      v-for="course in courseList"
      v-bind:key="course.id"
      v-bind:title="course.title.rendered"
      v-bind:content="course.excerpt.rendered"
      v-bind:picture="course.featured_media_url"
      v-bind:video="course.meta.URL_video[0]"
      v-bind:courseID="course.id"
    />
  </div>
</template>
<script>
import CourseService from "../services/CourseService";
import VideoCard from "../components/VideoCard";
export default {
  components: {
    VideoCard,
  },
  data: () => {
    return { courseList: [] };
  },

  name: "Course",

  created: function () {
    CourseService.getCoursesList()
      // .then((data) => console.log(data.data[0].meta.URL_video))
      .then((data) => (this.courseList = data.data))
      .catch((error) => alert(error));
  },
};
</script>
<style>
@import "../assets/css/tailwind.css";
</style>