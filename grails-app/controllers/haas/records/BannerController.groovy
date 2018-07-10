package haas.records

class BannerController {
    BannerService bannerService

    def create() {
        bannerService.create(params)
        redirect(uri: "/")
    }

    def createForm() {
        Banner banner = bannerService.get(1)
        render(view: "create", model: [banner: (banner ? banner : [:]), selected: "home"])
    }
}
