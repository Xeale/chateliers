<template>
  <div class="m-4">
    <div class="font-bold text-xl mb-2">{{ title }}</div>
    <video-embed :src="video"></video-embed>
  </div>
</template>
<script>
export default {
  name: "Course",
  props: {
    title: String,
    content: String,
    picture: String,
    postID: Number,
    video: String,
  },
};
</script>

<style scoped>
img {
  width: 150px;
}
</style>

