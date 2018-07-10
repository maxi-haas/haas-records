package haas.records

import grails.converters.JSON

class EventController {
    EventService eventService

    def events() {
        List<Event> events = eventService.getAll()
        render(view: "events", model: [selected: "events", events: events])
    }

    def createForm() {
        render(view: "create", model: [event: [:], selected: "releases"])
    }

    def updateForm() {
        Event event = eventService.get(params.id as Long)
        render(view: "create", model: [event: event, selected: "releases"])
    }

    def create() {
        eventService.create(params)
        redirect(uri: "/events")
    }

    def delete(){
        eventService.delete(params.id as Long)
        render(status: 200, ([:] as JSON))
    }

    def update(){
        eventService.update(params)
        redirect(uri: "/events")
    }
}
