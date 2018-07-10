package haas.records

class Banner {

    String title
    String picture
    String link

    static constraints = {
        title(nullable: false)
        picture(nullable: false, url: true)
        link(nullable: false, url: true)
    }
}
