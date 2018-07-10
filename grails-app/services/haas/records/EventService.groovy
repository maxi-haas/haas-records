package haas.records

class EventService {

    def getAll() {
        Event.findAll()
    }

    def create(params) {
        Date date = new Date().parse("yyyy-MM-dd", params.date as String)
        Event event = new Event([
                title      : params.title,
                subtitle   : params.subtitle,
                description: params.description,
                date       : date,
                link       : params.link,
                facebook   : params.facebook,
                twitter    : params.twitter,
                picture    : params.picture
        ])

        event.save(flush: true, failOnError: true)
    }

    def update(params){
        Date date = new Date().parse("yyyy-MM-dd", params.date as String)

        Event event = get(params.id as Long)
        event.title = params.title ? params.title : event.title
        event.subtitle = params.subtitle ? params.subtitle : event.subtitle
        event.description = params.description ? params.description : event.description
        event.date = date
        event.link = params.link ? params.link : event.link
        event.facebook = params.facebook ? params.facebook : event.facebook
        event.twitter = params.twitter ? params.twitter : event.twitter
        event.picture = params.picture ? params.picture : event.picture
        event.save(flush: true, failOnError: true)
    }

    def delete(Long id){
        get(id).delete(flush: true, failOnError: true)
    }

    def get(Long id){
        Event.findById(id)
    }
}
