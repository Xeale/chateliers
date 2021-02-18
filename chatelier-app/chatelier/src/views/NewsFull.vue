<template>
  <div class="p-10">
    <Post :title="title" :content="content" :picture="picture" />
  </div>
</template>
<script>
import Post from "../components/Post";
import PostService from "../services/PostService";

export default {
  components: {
    Post,
  },

  name: "NewsFull",

  data: function () {
    return { title: "", content: "", picture: "" };
  },

  beforeMount: function () {
    PostService.getPost(this.$route.params.id).then((response) => {
      console.log(response.data);
      this.title = response.data.title.rendered;
      this.content = response.data.content.rendered;
      this.picture = response.data.featured_media_url;
    });
  },
};
</script>
<style>
</style>