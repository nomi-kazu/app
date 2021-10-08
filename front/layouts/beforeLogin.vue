<template>
  <v-app>
    <bef-login-app-bar />
    <v-main>
      <nuxt />
    </v-main>
    <bef-login-footer />
  </v-app>
</template>

<script>
import befLoginAppBar from '~/components/beforeLogin/befLoginAppBar'
import BefLoginFooter from '~/components/beforeLogin/befLoginFooter'

export default {
  components: {
    befLoginAppBar,
    BefLoginFooter
  }
}
</script>
