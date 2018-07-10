package haas.records

class User {
    String name
    String password

    static constraints = {
        name(nullable: false)
        password(nullable: false)
    }
}
