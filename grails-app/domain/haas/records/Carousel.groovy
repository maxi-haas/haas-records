package haas.records

class Carousel {

    String img_one
    String link_one
    String text_one
    String img_two
    String text_two
    String subtitle_one
    String link_two
    String subtitle_two

    static constraints = {
        img_one(nullable: false, url: true)
        img_two(nullable: false, url: true)
        link_one(nullable: false, url: true)
        link_two(nullable: false, url: true)
        text_one(nullable: false)
        text_two(nullable: false)
        subtitle_one(nullable: false)
        subtitle_two(nullable: false)
    }
}
