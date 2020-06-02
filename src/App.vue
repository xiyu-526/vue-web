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
  components: { },
  data() {
    return {
      user: [
        {
          id: 1,
          name: '阿斗'
        }, {
          id: 2,
          name: '玄策'
        }, {
          id: 3,
          name: '大乔'
        }
      ]
    }
  },
  mounted() {
    axios.get('/api').then((resp) => {
      console.log(resp);
      this.user = resp.data;
    }, (err) => {
      alert(err);
    })
  }
}
</script>
