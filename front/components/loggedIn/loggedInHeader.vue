<template>
  <div>
    <logged-in-nav-drawer
      :drawer.sync="drawer"
    />
    <logged-in-app-bar #nav-icon>
      <v-app-bar-nav-icon
        @click="drawer = !drawer"
      />
    </logged-in-app-bar>
  </div>
</template>

<script>
import loggedInAppBar from '~/components/loggedIn/header/loggedInAppBar'
import loggedInNavDrawer from '~/components/loggedIn/header/loggedInNavDrawer'

export default {
  components: {
    loggedInAppBar,
    loggedInNavDrawer
  },
  data () {
    return {
      drawer: null
    }
  }
}
</script>
