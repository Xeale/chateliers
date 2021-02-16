import VueRouter from 'vue-router'
import Vue from 'vue'

Vue.use(VueRouter)

// on importe les composants nécessaires pour Vue Router
import Home from './views/Home'
import Course from './views/Course'
import Resource from './views/Resource'
import About from './views/About'
import News from './views/News'
import Login from './views/Login'



// on met en correspondance des composants avec des routes
const routes = [
  { 
    name: 'home',
    path: '/',
    component: Home
  },
  { 
    name: 'course',
    path: '/',
    component: Course
  },
  { 
    name: 'resource',
    path: '/',
    component: Resource
  },
  { 
    name: 'about',
    path: '/',
    component: About
  },
  { 
    name: 'news',
    path: '/',
    component: News
  },
  { 
    name: 'login',
    path: '/',
    component: Login
  },
 
]

export default new VueRouter({
    mode: "history",
    routes // raccourci pour `routes: routes`
})