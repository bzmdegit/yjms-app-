import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from "../components/home/Home.vue"
import Index from "../components/Index.vue"
import Login from "../components/Login.vue"
import Reg from "../components/Reg.vue"
import Calendar from "../components/home/Calendar.vue"
import User from "../components/user/User.vue"
import StoryDetails from "../components/story/StoryDetails"
import HomeDetails from "../components/find/homeDetails.vue"
import Order from "../components/order/order.vue"


Vue.use(VueRouter);

const routes = [
  { path: '/Order', component: Order },
  { path: '/Home', component: Home },
  { path: '/', component: Index },
  { path: '/Index', component: Index },
  { path: '/Login', component: Login },
  { path: '/Reg', component: Reg },
  { path: '/Calendar', component: Calendar },
  { path: '/User', component: User },
  { path: '/StoryDetails', component: StoryDetails },
  { path: '/homeDetails', component: HomeDetails }
]

const router = new VueRouter({
  routes
})

export default router
