<template>
  <div>
    <p>{{ title }}</p>
    <textarea class="border rounded-md"></textarea>
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