<template #my-content>
  <logged-in-container>
    {{ $store.state.current.project }}
  </logged-in-container>
</template>

<script>
export default {
}
</script>
