<template>
<div class="flex flex-wrap">
  <article class="flex flex-center m-4">
    <a href="#">
      <img v-bind:src="picture" class="object-cover pt-14 w-46" />
    </a>
    <div class="flex flex-col justify-start p-6">
      <div class="tags">
     
      </div>
      <div class="text-3xl font-bold pb-4">{{ title }}</div>
      <p class="text-sm pb-3">Publié le {{ date | formatDate }}</p>
      <div class=" w-2/4" v-html="content"></div>
       <div
        v-for="currentTag in tag"
        v-bind:key="currentTag.id"
        href="#"
        class=" inline text-blue-700 text-sm font-bold uppercase pb-4"
      >
        <a href="#">{{ currentTag.name }}</a>
      </div>
      <router-link
        :to="{ name: 'newsFull', params: { id: postID } }"
        class="uppercase text-gray-800 hover:text-green-400"
      >
        Continuer la lecture </router-link>
    </div>
  </article>
</div>
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

