package haas.records

class ReleaseService {
    SongService songService
    ArtistService artistService

    def create(params) {
        Album album = new Album()
        Artist artist = artistService.getOrCreateByName(params.artist as String)

        album.name = params.name
        album.picture = params.picture as String
        album.artist = artist
        album.description = params.description

        songService.parseAndCreate(params, album)
        album.save(flush: true, failOnError: true)
    }

    def getAll() {
        Album.findAll()
    }

    def update(params){
        Album album = Album.get(params.id as Long)
        deleteAlbumSongs(album)

        album.name = params.name ? params.name : album.name
        album.picture = params.picture ? params.picture : album.picture
        album.artist = params.artist ? Artist.findByName(params.artist as String) : album.artist
        album.description = params.description ? params.description : album.description

        songService.parseAndCreate(params, album)
        album.save(flush: true, failOnError: true)
    }

    def delete(Long id){
        Album album = get(id)
        deleteAlbumSongs(album)
        album.delete(flush: true, failOnError: true)
    }

    def deleteArtistAlbums(Artist artist){
        Album.findByArtist(artist).each {
            deleteAlbumSongs(it)
            it.delete(flush: true, failOnError: true)
        }
    }

    def deleteAlbumSongs(Album album){
        album.songs.toArray().each { Song song ->
            album.removeFromSongs(song)
            songService.delete(song)
        }
    }

    def get(Long id){
        Album.findById(id)
    }

    def getLast(){
        List<Album> release = Album.findAll().sort { it.id }
        release ? release.last() : []
    }
}
