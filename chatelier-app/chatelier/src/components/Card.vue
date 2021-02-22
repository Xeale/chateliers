<template>
  <article class="flex flex-col shadow my-4">
    <a href="#" class="hover:opacity-75">
      <img v-bind:src="picture" class="object-fill" />
    </a>
    <div class="bg-white flex flex-col justify-start p-6">
      <div class="tags">
      <div
        v-for="currentTag in tag"
        v-bind:key="currentTag.id"
        href="#"
        class="text-blue-700 text-sm font-bold uppercase pb-4"
      >
        <a href="#">{{ currentTag.name }}</a>
      </div>
      </div>
      <div class="text-3xl font-bold hover:text-gray-700 pb-4">{{ title }}</div>
      <p class="text-sm pb-3">Publié le {{ date | formatDate }}</p>
      <div class="pb-6" v-html="content"></div>
      <router-link
        :to="{ name: 'newsFull', params: { id: postID } }"
        class="uppercase text-gray-800 hover:text-black"
      >
        Continue Reading <i class="fas fa-arrow-right"></i
      ></router-link>
    </div>
  </article>
</template>

<script>
export default {
  name: "Card",
  props: {
    title: String,
    content: String,
    picture: [String, Boolean],
    postID: Number,
    date: String,
    tag: [Array, Boolean],
  },
};
</script>

<style scoped>
img {
  width: 400px;
}
template {
  width: 800px;
}
.tags{
  display: flex;
}
a{
   margin-right: 1rem;
}
</style>

