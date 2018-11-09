import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import About from './views/About.vue'
import HomeContainer from "./components/tabbar/HomeContainer.vue"
import MeituContainer from './components/tabbar/Meitu.vue'
import MeituinfoContainer from './components/news/Meituinfo.vue'
import ProfileContainer from './components/tabbar/Profile.vue'
import RegisterContainer from './components/tabbar/Register.vue'
import DecorationContainer from './components/tabbar/Decoration.vue'
import SelectContainer from './components/news/Select.vue'
import ShowContainer from './components/news/Show.vue'
import DesignContainer from './components/tabbar/Design.vue'
import DesignerContainer from './components/news/Designer.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {path:"/",component:HomeContainer}, 
    {path:'/home',component:HomeContainer},
    {path:'/meitu',component:MeituContainer}, 
    {path:'/info/:id',component:MeituinfoContainer},  
    {path:'/profile',component:ProfileContainer},
    {path:'/register',component:RegisterContainer},
    {path:'/decoration',component:DecorationContainer},
    {path:'/decoration/select',component:SelectContainer},
    {path:'/decoration/show',component:ShowContainer},
    {path:'/design',component:DesignContainer},
    {path:'/designer/:id',component: DesignerContainer}
  ],linkActiveClass:"mui-active" 
})
