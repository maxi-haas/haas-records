package haas.records

import grails.converters.JSON

class ReleaseController {
    ReleaseService releaseService

    def releases() {
        List<Album> releases = releaseService.getAll()
        render(view: "releases", model: [selected: "releases", releases: releases])
    }

    def updateForm() {
        Album album = releaseService.get(params.id as Long)
        render(view: "create", model: [release: album, selected: "releases"])
    }

    def createForm() {
        render(view: "create", model: [release: [:], selected: "releases"])
    }

    def create() {
        releaseService.create(params)
        redirect(uri: "/releases")
    }

    def update() {
        releaseService.update(params)
        redirect(uri: "/releases")
    }

    def delete(){
        releaseService.delete(params.id as Long)
        render(status: 200, ([:] as JSON))
    }
}
