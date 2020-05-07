<template>
  <div class="app">
    <ul>
      <li v-for="item in user" :key="item.id">
        {{ item.id }}： {{ item.name }}
      </li>
    </ul>
  </div>
</template>
<script>
import axios from 'axios';

export default {
  components: {

  },
  data() {
    return {
      user: []
    }
  },
  computed: {

  },
  mounted() {
    axios.get('http://192.168.140.178:3000/api').then((resp) => {
      this.user = resp.data;
    }, (err) => {
      alert(err);
    })
  },
  methods: {

  }
}
</script>
