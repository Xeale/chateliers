import axios from "axios"

export const apiClient = axios.create({
   baseURL: "http://52.200.116.71/projet-tuto-chapellerie/wordpress/"
   // baseURL: "http://localhost/projet-tuto-chapellerie/wordpress/"
});

export const baseUrlSuffix = "wp-json/wp/v2"
export const authUrlSuffix = "wp-json/jwt-auth/v1"