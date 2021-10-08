<template>
  <v-app-bar
    app
    dark
  >
    <v-spacer />

    <v-toolbar-items class="ml-2">
      <v-btn
        v-for="(menu, i) in menus"
        :key="`menu-btn-${i}`"
        text
      >
        {{ $t(`menus.${menu.title}`) }}
      </v-btn>
    </v-toolbar-items>
    <app-logo />
    <v-toolbar-title>
      {{ appName }}
    </v-toolbar-title>
  </v-app-bar>
</template>

<script>
import appLogo from '~/components/ui/appLogo'

export default {
  components: {
    appLogo
  },
  props: {
    menus: {
      type: Array,
      default: () => []
    }
  },
  data ({ $config: { appName } }) {
    return {
      appName
    }
  }
}
</script>
