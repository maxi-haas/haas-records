package haas.records

class BannerService {

    def create(params) {
        Banner banner = Banner.findOrCreateById(1)
        banner.title = params.title
        banner.picture = params.picture
        banner.link = params.link
        banner.save(flush:true, failOnError:true)
    }

    def get(Long id){
        Banner.findById(id)
    }
}
