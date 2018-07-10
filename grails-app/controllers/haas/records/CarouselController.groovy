package haas.records

class CarouselController {

    CarouselService carouselService

    def create() {
        carouselService.create(params)
        redirect(uri: "/")
    }

    def createForm() {
        Carousel carousel = carouselService.get(1)
        render(view: "create", model: [carousel: (carousel ? carousel : [:]), selected: "home"])
    }
}
