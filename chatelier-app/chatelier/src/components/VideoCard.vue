<template>
  <router-link :to="{ name: 'courseFull', params: { id: courseID } }">
    <div class="m-4">
      <div
        class="bg-white overflow-hidden shadow-lg transform hover:scale-110 motion-reduce:transform-none transition duration-300 ease-in-out ..."
      >
        <div class="px-6 py-4">
          <div class="font-bold text-xl text-center 
          text-gray-800 self-center mb-0">{{ title }}</div>
          <div class="wrapper-video">
            
            <img v-bind:src="picture" class="object-cover pt-4 w-2/6" />
            <div class="pl-2 self-center" v-html="content"></div>

          </div>
        </div>
        <div class="px-6 pt-4 pb-2">
          <span v-for="level in levelList" :key="level.id" :class="classSpan">{{
            level.name
          }}</span>
          <span
            v-for="material in materialList"
            :key="material.id"
            :class="classSpan"
            >{{ material.name }}</span
          >
          <span v-for="style in styleList" :key="style.id" :class="classSpan">{{
            style.name
          }}</span>
          <span v-for="tool in toolList" :key="tool.id" :class="classSpan">{{
            tool.name
          }}</span>
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
    picture: [String, Boolean],
    video: String,
    levelList: Array,
    materialList: Array,
    styleList: Array,
    toolList: Array,
    classSpan: String,
  },
};
</script>
<style>
.wrapper-video {
  display: flex;
  gap: 1rem;
}
</style>

