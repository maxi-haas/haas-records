package haas.records

class ArtistService {
    ReleaseService releaseService
    PodcastService podcastService

    def create(params) {
        Artist artist = new Artist([
                name       : params.name,
                description: params.description,
                picture    : params.picture,
                hidden     : false,
                soundCloud : params.soundCloud,
                instagram  : params.instagram,
                youtube    : params.youtube,
                facebook   : params.facebook,
                beatPort   : params.beatPort
        ])

        artist.save(flush: true, failOnError: true)
    }

    def createHiddenArtist(name) {
        Artist artist = new Artist([
                hidden     : true,
                name       : name,
                description: "sin descripcion",
                picture    : "https://topmusicuniverse.com/wp-content/uploads/2017/11/Yours-Truly-by-Ariana-Grande-2013.jpg",

        ])

        artist.save(flush: true, failOnError: true)
    }

    def update(params) {
        Artist artist = get(params.id as Long)
        artist.name = params.name ? params.name : artist.name
        artist.description = params.description ? params.description : artist.description
        artist.picture = params.picture ? params.picture : artist.picture
        artist.soundCloud = params.soundCloud ? params.soundCloud : artist.soundCloud
        artist.instagram = params.instagram ? params.instagram : artist.instagram
        artist.youtube = params.youtube ? params.youtube : artist.youtube
        artist.facebook = params.facebook ? params.facebook : artist.facebook
        artist.beatPort = params.beatPort ? params.beatPort : artist.beatPort
        artist.save(flush: true, failOnError: true)
    }

    def delete(Long id) {
        Artist artist = get(id)
        releaseService.deleteArtistAlbums(artist)
        podcastService.deleteArtistPodcasts(artist)
        artist.delete(flush: true, failOnError: true)
    }

    def get(Long id) {
        Artist.findById(id)
    }

    def getAll() {
        List<Artist> artists = Artist.findAllByHidden(false)
        artists
    }

    def getLast() {
        List<Artist> artists = Artist.findAllByHidden(false).sort { it.id }
        artists ? artists.last() : []
    }

    def getOrCreateByName(name) {
        Artist artist = Artist.findByName(name)
        artist ? artist : createHiddenArtist(name)
    }
}
