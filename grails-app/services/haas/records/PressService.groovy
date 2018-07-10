package haas.records

class PressService {

    def getAll() {
        Press.findAll()
    }

    def create(params) {
        Press press = new Press([
                title      : params.title,
                subTitle   : params.subtitle,
                description: params.description,
                picture    : params.picture,
        ])

        press.save(flush: true, failOnError: true)
    }

    def get(Long id) {
        Press.findById(id)
    }

    def delete(Long id) {
        get(id).delete(flush: true, failOnError: true)
    }

    def update(params) {
        Press press = get(params.id as Long)
        press.title = params.title ? params.title : press.title
        press.subTitle = params.subtitle ? params.subtitle : press.subTitle
        press.description = params.description ? params.description : press.description
        press.picture = params.picture ? params.picture : press.picture
        press.save(flush: true, failOnError: true)
    }

    def getLast() {
        List<Press> press = Press.findAll().sort { it.id }
        press.size() > 2 ? press[-3..-1] : []
    }
}
