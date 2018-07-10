package haas.records

class Podcast {
    String title
    Artist artist
    String soundCloud

    static belongsTo = Artist

    static constraints = {
        title(nullable: false, blank: false)
        artist(nullable: true)
        soundCloud(nullable: false, blank: false)
    }
}
