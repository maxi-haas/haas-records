package haas.records

class SongService {

    def create(params) {
        Song song = new Song([
                name      : params.name,
                soundCloud: params.soundCloud,
                spotify   : params.spotify,
                buy       : params.buy,
                album     : params.album
        ])

        song
    }

    def parseAndCreate(params, Album album) {
        int songsQuantity = params.song_quantity as Integer
        songsQuantity.times {
            Song song = create([
                    name      : params["song-name-${it + 1}"],
                    soundCloud: params["song-soundCloud-${it + 1}"],
                    spotify   : params["song-spotify-${it + 1}"],
                    buy       : params["song-buy-${it + 1}"],
                    album     : album
            ])

            album.addToSongs(song)
        }
    }

    def delete(Song song) {
        song.delete(flush: true, failOnError: true)
    }
}
