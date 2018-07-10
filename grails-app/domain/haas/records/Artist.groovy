package haas.records

class Artist {
    String name
    String description
    String picture

    String soundCloud
    String facebook
    String instagram
    String youtube
    String beatPort

    Boolean hidden

    static constraints = {
        name(nullable: false, blank: false)
        description(nullable: true, blank: false, maxSize: 2000)
        picture(nullable: true, blank: false, url: true)
        soundCloud(nullable: true, blank: false)
        instagram(nullable: true, blank: false)
        youtube(nullable: true, blank: false)
        facebook(nullable: true, blank: false)
        beatPort(nullable: true, blank: false)
    }
}
