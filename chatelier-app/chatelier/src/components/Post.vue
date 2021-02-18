<template>
  <div class="m-4">
    <img v-bind:src="picture" class="object-fill w-full" alt="Mountain" />
    <div class="font-bold text-xl mb-2">{{ title }}</div>
    <p class="text-gray-700 text-base" v-html="content"></p>
  </div>
</template>

<script>
export default {
  name: "Post",
  props: {
    title: String,
    content: String,
    picture: String,
    postID: Number,
  },
};
</script>

<style scoped>
img{
    width: 150px;
}
</style>

