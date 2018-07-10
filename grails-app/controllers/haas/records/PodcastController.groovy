package haas.records

import grails.converters.JSON

class PodcastController {
    PodcastService podcastService

    def podcasts() {
        List<Podcast> podcasts = podcastService.getAll()
        render(view: "podcasts", model: [selected: "podcasts", podcasts: podcasts])
    }

    def create(){
        podcastService.create(params)
        redirect(uri:"/podcasts")
    }

    def update(){
        podcastService.update(params)
        redirect(uri:"/podcasts")
    }

    def delete(){
        podcastService.delete(params.id as Long)
        render(status: 200, ([:] as JSON))
    }

    def createForm() {
        render(view: "create", model: [podcast:[:], selected: "podcasts"])
    }

    def updateForm(){
        Podcast podcast = podcastService.get(params.id as Long)
        render(view: "create", model: [podcast: podcast, selected: "podcasts"])
    }
}
