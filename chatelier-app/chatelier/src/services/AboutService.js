import {
    apiClient,
    baseUrlSuffix
} from "./ApiClient"


export default {

     // récupération de la page about
    getAbout: function () {
        return apiClient.get(baseUrlSuffix + '/pages/86')
    },
}