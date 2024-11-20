import { createApp } from 'vue'
import App from '@/App.vue'
import plugins from '@/plugins'
import '@/scss/index.scss'

createApp(App).use(plugins).mount('#app')
