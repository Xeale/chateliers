<template>
<div>
  
  <div
    class="bg-gray-100 p-10 grid grid-cols-1 sm:grid-cols-1 md:grid-cols-3 lg:grid-cols-3 xl:grid-cols-3 gap-1"
  >
    <VideoCard
      v-for="course in courseList"
      v-bind:key="course.id"
      v-bind:title="course.title.rendered"
      v-bind:content="course.content.rendered"
      v-bind:picture="course.featured_media_url"
      v-bind:video="course.meta.URL_video[0]"
      v-bind:levelList="course.level_array"
      v-bind:materialList="course.material_array"
      v-bind:styleList="course.style_array"
      v-bind:toolList="course.tool_array"
      v-bind:courseID="course.id"
      v-bind:classSpan="'inline-block bg-gray-300 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2'"
    />
    
  </div>
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
      //.then((data) => console.log(data.data[0].level_array[0].name))
      .then((data) => (this.courseList = data.data))
      .catch((error) => alert(error));
  },
};
</script>
<style scoped>

</style>
