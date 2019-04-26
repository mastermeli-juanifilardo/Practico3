package practico3

import groovy.json.JsonSlurper

class IndexController {

    def index() {
        def url_string = "https://api.mercadolibre.com/sites/"
        def sites = parseJsonFromUrl(url_string)
        sites.sort { it.name } // Ordenamos alfabéticamente
        sites.removeAll { it.id == "MPT" } // Eliminamos MercadoLibre Portugal

        [ sites : sites, url : url_string ]
    }


    def parseJsonFromUrl(String url_string) {
        def url = new URL(url_string)
        def connection = (HttpURLConnection) url.openConnection()
        connection.setRequestMethod("GET")
        connection.setRequestProperty("Accept", "application/json")
        connection.setRequestProperty("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36")

        JsonSlurper json = new JsonSlurper()
        def result = json.parse(connection.getInputStream())

        return result
    }

}
