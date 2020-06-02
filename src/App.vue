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
  computed: {

  },
  mounted() {
    axios.get('http://47.114.159.9:3000/api').then((resp) => {
      this.user = resp.data;
    }, (err) => {
      alert(err);
    })
  }
}
</script>
