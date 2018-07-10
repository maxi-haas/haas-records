package haas.records

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: 'index') {
            action = [GET: "home"]
        }

        "/artists"(controller: 'artist') {
            action = [GET: "artists"]
        }

        "/artists/$id"(controller: 'artist') {
            action = [GET: "show"]
        }

        "/artists/create"(controller: 'artist') {
            action = [GET: "createForm", POST: "create"]
        }

        "/artists/update/$id"(controller: 'artist') {
            action = [GET: "updateForm", POST: "update"]
        }

        "/artists/delete/$id"(controller: 'artist') {
            action = [POST: "delete"]
        }

        "/artists/delete"(controller: 'artist') {
            action = [POST: "delete"]
        }

        "/podcasts"(controller: 'podcast') {
            action = [GET: "podcasts"]
        }

        "/podcasts/create"(controller: 'podcast') {
            action = [GET: "createForm", POST: "create"]
        }

        "/podcasts/update/$id"(controller: 'podcast') {
            action = [GET: "updateForm", POST: "update"]
        }

        "/podcasts/delete/$id"(controller: 'podcast') {
            action = [POST: "delete"]
        }

        "/releases"(controller: 'release') {
            action = [GET: "releases"]
        }

        "/releases/create"(controller: 'release') {
            action = [GET: "createForm", POST: "create"]
        }

        "/releases/update/$id"(controller: 'release') {
            action = [GET: "updateForm", POST: "update"]
        }

        "/releases/delete/$id"(controller: 'release') {
            action = [POST: "delete"]
        }

        "/events"(controller: 'event') {
            action = [GET: "events"]
        }

        "/events/create"(controller: 'event') {
            action = [GET: "createForm", POST: "create"]
        }

        "/events/update/$id"(controller: 'event') {
            action = [GET: "updateForm", POST: "update"]
        }

        "/events/delete/$id"(controller: 'event') {
            action = [POST: "delete"]
        }

        "/press"(controller: 'press') {
            action = [GET: "press"]
        }

        "/press/create"(controller: 'press') {
            action = [GET: "createForm", POST: "create"]
        }

        "/press/update/$id"(controller: 'press') {
            action = [GET: "updateForm", POST: "update"]
        }

        "/press/delete/$id"(controller: 'press') {
            action = [POST: "delete"]
        }

        "/carousel/create"(controller: 'carousel') {
            action = [POST: "create", GET: "createForm"]
        }

        "/banner/create"(controller: 'banner') {
            action = [POST: "create", GET: "createForm"]
        }

        "/about"(controller: 'index') {
            action = [GET: "about"]
        }

        "/contact"(controller: 'index') {
            action = [GET: "contact"]
        }

        "/maximilianohaas"(controller: 'artist') {
            action = [GET: "maximilianohaas"]
        }

        "/artist_int"(controller: 'artist') {
            action = [GET: "artist_int"]
        }

        "/login"(controller: 'index'){
            action = [GET: "login", POST:"doLogin"]
        }

        "/logout"(controller: 'index'){
            action = [GET: "logout"]
        }

        "/admin"(controller: 'index'){
            action = [GET: "admin"]
        }

        "/github"(controller:'index'){
            action = [GET: "github"]
        }


        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
