package haas.records

class Song {
    String name
    String soundCloud
    String spotify
    String buy
    Album album

    static belongsTo = Album

    static constraints = {
        name(nullable: false)
        soundCloud(nullable: true, url: true)
        spotify(nullable: true, url: true)
        buy(nullable: true, url: true)
        album(nullable: false)
    }
}
