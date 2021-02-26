import {
    apiClient,
    baseUrlSuffix
} from "./ApiClient"


export default {

     // récupération d'un article
    getMeta: function () {
        return apiClient.get(baseUrlSuffix + '/pages/2')
    },
}