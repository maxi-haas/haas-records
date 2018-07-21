package haas.records

import grails.converters.JSON

class ArtistController {
    ArtistService artistService

    def artists() {
        List<Artist> artists = artistService.getAll()
        render(view: "artists", model: [selected: "artists", artists:artists])
    }

    def createForm(){
        render(view: "create", model: [artist: [:], selected: "artists"])
    }

    def updateForm(){
        Artist artist = artistService.get(params.id as Long)
        render(view: "create", model: [artist: artist, selected: "artists"])
    }

    def create(){
        artistService.create(params)
        redirect(uri:"/artists")
    }

    def update(){
        artistService.update(params)
        redirect(uri:"/artists")
    }

    def show(){
        Artist artist = artistService.get(params.id as Long)
        def lastArtist = artistService.getLast()
        render(view: "artist", model: [selected: "artists", artist:artist, lastArtist:lastArtist])
    }

    def delete(){
        artistService.delete(params.id as Long)
        render(status: 200, ([:] as JSON))
    }

    def maximilianohaas(){
        render(view: "artists/maximilianohaas", model: [selected: "artists"])
    }

    def artist_int(){
        render(view: "artists/artist_int", model: [selected: "artists"])
    }

}
