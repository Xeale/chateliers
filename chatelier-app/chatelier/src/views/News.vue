<template>
  <section class="article  grid-cols-2 ">
    <card
      class="w-full"
      v-for="post in postList"
      v-bind:key="post.id"
      v-bind:title="post.title.rendered"
      v-bind:content="post.excerpt.rendered"
      v-bind:picture="post.featured_media_url"
      v-bind:date="post.date"
      v-bind:postID="post.id"
      v-bind:tag="post.tag_array"
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
      .then((data) => (this.postList = data.data))
      .catch((error) => alert(error));
  },
};
</script>
<style scoped>

.article { 
   width: 100%;
   margin-left: auto;
   justify-content: center;
   display: grid;
   grid-template-columns: 30% 30% 30%;
   border: 5rem  solid;
   border-color: rgb(204, 199, 192);
}
</style>