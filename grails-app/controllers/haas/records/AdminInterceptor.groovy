package haas.records


class AdminInterceptor {
    AdminInterceptor() {
        match(controller: "artist", action: "create|createForm|update|updateForm|delete")
        match(controller: "event", action: "create|createForm|update|updateForm|delete")
        match(controller: "podcast", action: "create|createForm|update|updateForm|delete")
        match(controller: "press", action: "create|createForm|update|updateForm|delete")
        match(controller: "release", action: "create|createForm|update|updateForm|delete")
    }

    boolean before() {
        if (!(session.user)) {
            redirect(url: "/login")
            return false
        }

        return true
    }

    boolean after() { true }

    void afterView() {}
}
