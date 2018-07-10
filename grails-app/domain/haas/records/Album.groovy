package haas.records

class Album {
    String name
    String picture
    Artist artist
    String description

    static hasMany = [songs: Song]

    static belongsTo = Artist

    static constraints = {
        name(nullable: false)
        picture(nullable: true, url: true)
        artist(nullable: false)
        description(nullable: false, maxSize: 2000)
    }
}
