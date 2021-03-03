<template>
<div class="card pl-4">
  <article class="flex flex-center pt-8 bg-white">
    
    <div class=" ">
      <div class="tags">
     
      </div>
      <div class="text-2xl text-gray-700 font-bold ">{{ title }}</div>
      <a href="#">
      <img v-bind:src="picture" class="object-cover pt-4 w-46" />
    </a>
       <div
        v-for="currentTag in tag"
        v-bind:key="currentTag.id"
        href="#"
        class=" inline text-green-500 text-sm font-bold uppercase pb-4"
      >
        <a href="#">{{ currentTag.name }}</a>
      </div>
      <p class="text-sm">Publié le {{ date | formatDate }}</p>
      <div class="w-4/5" v-html="content"></div>
      
      <router-link 
        :to="{ name: 'newsFull', params: { id: postID } }"
        class="mb-2 uppercase text-gray-500 hover:text-green-400"
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
  width: 200px;
}
.card {
 border-bottom: medium green;
  
}
.tags{
  display: flex;
}
a{
   margin-right: 1rem;
}
</style>

