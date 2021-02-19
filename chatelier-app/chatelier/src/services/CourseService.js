import {
    apiClient,
    baseUrlSuffix
} from "./ApiClient"


export default {

    // récupération de l'ensemble des articles
    getCoursesList: function () {
        return apiClient.get(baseUrlSuffix + '/course')
    },

    // récupération d'un article
    getCourse: function (id) {
        return apiClient.get(baseUrlSuffix + '/course/' + id)
    },
}