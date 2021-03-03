<template>
  <div class="courseFull">
    <div class="title">{{ title }}</div>
    <video-embed :src="video"></video-embed>
    <p v-html="content"></p>
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

<style scoped lang="scss">
.courseFull {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: space-between;
  height: 35vh;
  color: grey;
  font-family: rosario;
  .title {
    font-size: 2rem;
  }
}
</style>

