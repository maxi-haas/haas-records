package haas.records

class CarouselService {

    def create(params) {
        Carousel carousel = Carousel.findOrCreateById(1)
        carousel.img_one = params.picture1
        carousel.img_two = params.picture2
        carousel.link_one = params.link1
        carousel.link_two = params.link2
        carousel.text_one = params.text1
        carousel.text_two = params.text2
        carousel.subtitle_one = params.subtitle1
        carousel.subtitle_two = params.subtitle2
        carousel.save(flush:true, failOnError:true)
    }

    def get(Long id){
        Carousel.findById(id)
    }
}
