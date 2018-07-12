package haas.records

class IndexController {
    ArtistService artistService
    ReleaseService releaseService
    PressService pressService
    PodcastService podcastService

    def home() {
        def artist = artistService.getLast()
        def press = pressService.getLast().reverse()
        def release = releaseService.getLast()
        def podcasts = podcastService.getLast().reverse()

        render(view: "index", model: [artist: artist, press: press, release: release, podcasts: podcasts, selected: "home"])
    }

    def about() {
        render(view: "about", model: [selected: "about"])
    }

    def contact() {
        render(view: "contact", model: [selected: "contact"])
    }

    def login() {
        render(view: "login")
    }

    def admin() {
        render(view: "admin")
    }

    def doLogin() {
        User user = User.findByNameAndPassword(params.name as String, params.password as String)
        if (user) {
            session.user = user
            redirect(uri: "/")
        } else {
            redirect(uri: "/login")
        }
    }

    def logout() {
        session.user = null
        redirect(uri: "/")
    }

    def github() {
        Log log = Log.findOrCreateById(1)
        log.github += 1
        log.save(flush: true, failOnError: true)
        redirect(url: "https://github.com/jnvillar?count=${log.github}")
    }

    def mail(){
        sendMail {
            to "juaninolivillar@gmail.com"
            subject "Haas-Records Contact"
            text    "Consulta de ${params.name} \n" +
                    "Categoria de ${params.category} \n" +
                    "País: ${params.country} \n" +
                    "Telefono: ${params.phone} \n" +
                    "Email: ${params.email} \n \n" +
                    "Mensaje: ${params.mensaje} \n"

        }

        redirect(uri: "/")
    }
}
