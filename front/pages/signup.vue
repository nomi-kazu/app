<template>
  <bef-login-form-card>
    <template #form-card-content>
      <v-form
        ref="form"
        v-model="isValid"
      >
        <user-form-name
          :name.sync="params.user.name"
        />
        <user-form-email
          :email.sync="params.user.email"
        />
        <user-form-password
          :password.sync="params.user.password"
        />
        <v-btn
          :disabled="!isValid || loading"
          :loading="loading"
          block
          color="black"
          class="white--text"
          @click="signup"
        >
          登録する
        </v-btn>
      </v-form>
    </template>
  </bef-login-form-card>
</template>

<script>
import befLoginFormCard from '~/components/beforeLogin/befLoginFormCard'
import userFormEmail from '~/components/user/userFormEmail'
import userFormName from '~/components/user/userFormName'
import userFormPassword from '~/components/user/userFormPassword'

export default {
  components: {
    befLoginFormCard,
    userFormEmail,
    userFormName,
    userFormPassword
  },
  layout: 'beforeLogin',
  data () {
    return {
      loading: false,
      isValid: false,
      params: { user: { name: '', email: '', password: '' } }
    }
  },
  methods: {
    signup () {
      this.loading = true
      setTimeout(() => {
        this.formReset()
        this.loading = false
      }, 1500)
    },
    formReset () {
      this.$refs.form.reset()
      this.params = { user: { name: '', email: '', password: '' } }
    }
  }
}
</script>
