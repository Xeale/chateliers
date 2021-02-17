import {
    apiClient,
    baseUrlSuffix
} from "./ApiClient"


export default {

    // récupération de l'ensemble des articles
    getPostsList: function () {
        return apiClient.get(baseUrlSuffix + '/posts')
    },

    // récupération d'un article
    getPost: function (id) {
        return apiClient.get(baseUrlSuffix + '/posts/' + id)
    },
}