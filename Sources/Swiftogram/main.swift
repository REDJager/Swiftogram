import PerfectHTTP
import PerfectHTTPServer

var routes = Routes()

do {
    try HTTPServer.launch(
        name: "localhost",
        port: 8080,
        routes: routes,
        responseFilters: [(HTTPFilter.contentCompression(data: [:]), HTTPFilterPriority.high)]
    )
} catch {
    print(error.localizedDescription)
}
