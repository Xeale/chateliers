import Vuex from 'vuex'
import Vue from 'vue'
import createPersistedState from 'vuex-persistedstate'

Vue.use(Vuex)

// on crée le Store de l'application
const store = new Vuex.Store({

    plugins: [createPersistedState({
        storage: window.sessionStorage,
    })],
    // on crée un objet qui est l'état de notre application
    state: {
        // on stocke un booléen qui représente l'état de la connexion de l'utilisateur (true => connecté)
        isUserConnected: false,
        username: localStorage.getItem('username')
    },
    // on crée des mutations : des setters pour notre state
    mutations: {
        // par ex. une mutation pour mettre à jour notre message de bienvenue
        // cette mutation ne sera pas appellée directement, on utilisera un "commit"
        // de cette façon, on demande à VueX de déclencher la mise à jour des composants qui utilisent le store
        // cette méthode, comme toutes les mutations, reçoit en premier paramètre le state
        isUserConnectedMutation(state, data) {
            state.isUserConnected = data;
        },
        updateUsername(state, newUsername) {
            state.username = newUsername;
        }
    }
});
export default store;