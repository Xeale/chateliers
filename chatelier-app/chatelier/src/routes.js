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
import PrivacyPolicy from './views/PrivacyPolicy'
import Cgv from './views/Cgv'
import Cookie from './views/Cookie'
import Newsletter from './views/Newsletter'



// on met en correspondance des composants avec des routes
const routes = [{
        name: 'home',
        path: '/',
        component: Home
    },
    {
        name: 'course',
        path: '/Cours',
        component: Course
    },
    {
        name: 'resource',
        path: '/Ressources',
        component: Resource
    },
    {
        name: 'about',
        path: '/A propos',
        component: About
    },
    {
        name: 'news',
        path: '/News',
        component: News
    },
    {
        name: 'login',
        path: '/Connexion',
        component: Login
    },
    {
        name: 'privacy',
        path: '/Politique de confidentialité',
        component: PrivacyPolicy
    },
    {
        name: 'cgv',
        path: '/Conditions générales de vente',
        component: Cgv
    },
    {
        name: 'cookie',
        path: '/Cookies',
        component: Cookie
    },
    {
        name: 'newsletter',
        path: '/Newsletter',
        component: Newsletter
    },

]

export default new VueRouter({
    mode: "history",
    routes // raccourci pour `routes: routes`
})