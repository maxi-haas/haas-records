package haas.records

class Event {
    String title
    String subtitle
    String description
    Date date
    String link
    String facebook
    String twitter
    String picture

    static constraints = {
        title(nullable: false, blank: false)
        subtitle(nullable: false, blank: false)
        description(nullable: false, blank: false, maxSize: 2000)
        date(nullable: false)
        link(nullable: true, blank: false, url: true)
        facebook(nullable: true, blank: false, url: true)
        twitter(nullable: true, blank: false, url: true)
        picture(nullable: true, blank: false, url: true)
    }
}
