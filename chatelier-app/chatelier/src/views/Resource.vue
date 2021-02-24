<template>
  <div
    class=" grid grid-cols-1 sm:grid-cols-1 md:grid-cols-3 lg:grid-cols-3 xl:grid-cols-3 gap-1"
  >
 
    <card
      v-for="post in postList"
      v-bind:key="post.id"
      v-bind:title="post.title.rendered"
      v-bind:content="post.excerpt.rendered"
      v-bind:picture="post.featured_media_url"
      v-bind:postID="post.id"
    />
       
  </div>
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
      .then((data) => (this.postList = data.data))
      .catch((error) => alert(error));
  },
};
</script>
