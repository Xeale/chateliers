import VueRouter from 'vue-router'
import Vue from 'vue'

Vue.use(VueRouter)

// on importe les composants nécessaires pour Vue Router
import Home from './views/Home'
import Course from './views/Course'
import Ressources from './views/Ressources'
import About from './views/About'
import News from './views/News'
import Login from './views/Login'
import PrivacyPolicy from './views/PrivacyPolicy'
import Cgv from './views/Cgv'
import Cookie from './views/Cookie'
import Newsletter from './views/Newsletter'
import NewsFull from './views/NewsFull'
import CourseFull from './views/CourseFull'
import Profil from './views/Profil'
import CourseForbidden from './views/CourseForbidden'



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
        name: 'ressources',
        path: '/Ressources',
        component: Ressources
    },
    {
        name: 'about',
        path: '/A_propos',
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
        path: '/Politique_de_confidentialité',
        component: PrivacyPolicy
    },
    {
        name: 'cgv',
        path: '/Conditions_générales_de_vente',
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
    {
        name: 'newsFull',
        path: '/Article/:id',
        component: NewsFull
    },
    {
        name: 'courseFull',
        path: '/Cours/:id',
        component: CourseFull
    },
    {
        name: 'profil',
        path: '/mon_espace',
        component: Profil
    },
    {
        name: 'courseForbidden',
        path: '/acces_interdit',
        component: CourseForbidden
    },

]
export default new VueRouter({
    mode: "history",
    routes: routes
})