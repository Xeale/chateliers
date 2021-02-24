<template>
  <div>
    <h1>Bienvenue {{ $store.state.username }}</h1>
  </div>
</template>

<script>

export default {
  name: "CardProfil",
  props: {
    username: {
      type: String,
    },
  },
};
</script>

<style>
</style>