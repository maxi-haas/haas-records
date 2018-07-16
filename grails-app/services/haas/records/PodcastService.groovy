package haas.records

class PodcastService {
    ArtistService artistService

    def getAll() {
        Podcast.findAll()
    }

    def create(params) {
        Artist artist = artistService.getOrCreateByName(params.artist as String)

        Podcast podcast = new Podcast([
                title     : params.name,
                artist    : artist,
                soundCloud: params.soundCloud
        ])

        podcast.save(flush: true, failOnError: true)
    }

    def update(params) {
        Podcast podcast = get(params.id as Long)
        podcast.title = params.name ? params.name : podcast.title
        podcast.artist = params.artist ? Artist.findById(params.artist as Long) : podcast.artist
        podcast.soundCloud = params.soundCloud ? params.soundCloud : podcast.soundCloud
        podcast.save(flush: true, failOnError: true)
    }

    def delete(Long id) {
        get(id).delete(flush: true, failOnError: true)
    }

    def deleteArtistPodcasts(Artist artist) {
        Podcast.findAllByArtist(artist).each {
            it.delete(flush: true, failOnError: true)
        }
    }

    def get(Long id) {
        Podcast podcast = Podcast.findById(id)
        podcast
    }

    def getLast() {
        List<Podcast> podcasts = Podcast.findAll().sort { it.id }
        podcasts.size() > 1 ? podcasts[-2..-1] : podcasts
    }
}
