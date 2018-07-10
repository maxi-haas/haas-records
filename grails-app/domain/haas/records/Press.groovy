package haas.records

class Press {
    String picture
    String title
    String subTitle
    String description

    static constraints = {
        picture(nullable: false, url: true)
        title(nullable: false)
        subTitle(nullable: false)
        description(nullable: false, maxSize: 2000)
    }
}
