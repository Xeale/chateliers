<template>
  <router-link :to="{ name: 'newsFull', params: { id: postID } }">
      <article class="flex flex-col shadow my-4">
        <!-- Article Image -->
        <a href="#" class="hover:opacity-75">
          <img v-bind:src="picture" class="object-fill"
          />
        </a>
        <div class="bg-white flex flex-col justify-start p-6">
          <a href="#" class="text-blue-700 text-sm font-bold uppercase pb-4"
            >{{ tag }}</a
          >
          <a href="#" class="text-3xl font-bold hover:text-gray-700 pb-4"
            >{{ title }}</a
          >
          <p href="#" class="text-sm pb-3">
            Publié le {{date | formatDate}}
          </p>
          <a href="#" class="pb-6" v-html="content"
            ></a
          >
          <a href="#" class="uppercase text-gray-800 hover:text-black"
            >Continue Reading <i class="fas fa-arrow-right"></i
          ></a>
        </div>
      </article>
  </router-link>
</template>

<script>
export default {
  name: "Card",
  props: {
    title: String,
    content: String,
    picture: String,
    postID: Number,
    date: String,
    tags: String,
  },
};
</script>

<style scoped>
img{
  width:400px;
}
template{
  width: 800px;
}
</style>

