package haas.records

import grails.converters.JSON

class PressController {
    PressService pressService

    def press() {
        List<Press> press = pressService.getAll()
        render(view: "press", model: [selected: "press", press: press])
    }

    def createForm() {
        render(view: "create", model: [press: [:], selected: "releases"])
    }

    def updateForm() {
        Press press = pressService.get(params.id as Long)
        render(view: "create", model: [press: press, selected: "releases"])
    }

    def create() {
        pressService.create(params)
        redirect(uri: "/press")
    }

    def update() {
        pressService.update(params)
        redirect(uri: "/press")
    }

    def delete(){
        pressService.delete(params.id as Long)
        render(status: 200, ([:] as JSON))
    }

}
