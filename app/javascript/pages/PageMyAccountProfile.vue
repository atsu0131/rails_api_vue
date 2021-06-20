<template>
  <v-row justify="center">
    <v-dialog v-model="dialog" persistent max-width="600px">
      <v-card>
        <v-card-title>
          <span class="headline">User Profile</span>
        </v-card-title>
        <v-card-text>
          <v-container>
            <v-row>
              <v-col cols="12">
                <v-text-field label="Name" required v-model="_user.name"></v-text-field>
              </v-col>
              <v-col cols="12">
                <v-text-field label="Introduction" v-model="_user.introduction"></v-text-field>
              </v-col>
            </v-row>
          </v-container>
        </v-card-text>
        <v-card-actions>
          <v-spacer></v-spacer>
          <v-btn color="blue darken-1" text @click="$router.back()">Close</v-btn>
          <v-btn color="blue darken-1" text @click="updateProfile">Save</v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>
  </v-row>
</template>

<script>
    import axios from 'axios'
    export default {
        data() {
            return {
                dialog: true,
                _user: null
            }
        },
        created() {
            this._user = { ...this.$store.getters['auth/currentUser']}
        },
        methods: {
            async updateProfile() {
                const userParams = {
                    user: {
                        name: this._user.name,
                        introduction: this._user.introduction
                    }
                }
                await this.$store.dispatch('auth/updateProfile', userParams)
                this.$router.push(`/users/1`)
            }
        }
    }
</script>