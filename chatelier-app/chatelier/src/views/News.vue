<template>
  <section class="w-4/5	  flex-col items-center		 p-20">
    <card
      class="w-full"
      v-for="post in postList"
      v-bind:key="post.id"
      v-bind:title="post.title.rendered"
      v-bind:content="post.excerpt.rendered"
      v-bind:picture="post.featured_media_url"
      v-bind:date="post.date"
      v-bind:postID="post.id"
      v-bind:tag="post.tag"
    />
  </section>
</template>
<script>
import PostService from "../services/PostService";
import Card from "../components/Card";
export default {
  components: {
    Card,
  },
  data: () => {
    return { postList: [] };
  },

  name: "News",

  created: function () {
    PostService.getPostsList()
      .then((data) => (this.postList = data.data)).then(()=>console.log(this.postList))
      .catch((error) => alert(error));
  },
};
</script>


<style>
@import "../assets/css/tailwind.css";
</style>