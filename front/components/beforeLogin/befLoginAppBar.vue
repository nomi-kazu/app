<template>
  <v-app-bar
    app
    :height="appBarHeight"
    color="white"
  >
    <nuxt-link
      to="/"
      class="text-decoration-none"
    >
      <app-logo />
    </nuxt-link>

    <app-title
      class="hidden-mobile-and-down"
    />

    <breadcrumbs
      v-if="notTopPage"
    />

    <v-spacer />

    <signup-link />
    <login-link />
  </v-app-bar>
</template>

<script>
import appLogo from '~/components/ui/appLogo'
import appTitle from '~/components/ui/appTitle'
import signupLink from '~/components/beforeLogin/signupLink'
import loginLink from '~/components/beforeLogin/loginLink'

export default {
  components: {
    appLogo,
    appTitle,
    signupLink,
    loginLink
  },
  data ({ $store }) {
    return {
      appBarHeight: $store.state.styles.beforeLogin.appBarHeight
    }
  },
  computed: {
    notTopPage () {
      return this.$route.name !== 'index'
    }
  }
}
</script>
