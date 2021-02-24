<template>
  <router-link :to="{ name: 'courseFull', params: { id: courseID } }">
    <div class="m-4">
      <div
        class="rounded overflow-hidden shadow-lg transform hover:scale-110 motion-reduce:transform-none transition duration-300 ease-in-out ..."
      >
        <div class="px-6 py-4">
          <div class="font-bold text-xl mb-2">{{ title }}</div>
          <div class="wrapper-video">
            <video-embed :src="video"></video-embed>
            <div v-html="content"></div>
          </div>
        </div>
        <div class="px-6 pt-4 pb-2">
          <span
            class="inline-block bg-gray-300 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2" v-html="level"
            >{{ level }}</span
          >
          <span
            class="inline-block bg-gray-300 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2"
            >#travel</span
          >
        </div>
      </div>
    </div>
  </router-link>
</template>
<script>
export default {
  name: "VideoCard",
  props: {
    title: String,
    content: String,
    courseID: Number,
    video: String,
    level: String,
  },
};
</script>

<style>
.wrapper-video{
  display: flex;
  gap: 1rem;
}
</style>

