<template>
  <div>
    <p>{{ title }}</p>
    <textarea cols='35' class="border rounded-md"></textarea>
  </div>
</template>

<script>
export default {
  name: "CardProfil",
  props: {
    title: String,
  },
};
</script>

<style>
</style>