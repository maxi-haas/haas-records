<!DOCTYPE html>

<g:render template="../head"></g:render>

<body>

<g:if test="${event}">
    <form action="../update/${event.id}" method="post" name="myForm" id="myForm">
</g:if>
<g:else>
    <form action="./create" method="post" name="myForm" id="myForm">
</g:else>

<div class="row" style="margin-top: 5%">
    <div class="col-md-6 col-md-offset-3">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1">

                        <g:if test="${event}">
                            <h1 class="card-title">Modificación de Evento</h1>
                        </g:if>
                        <g:else>
                            <h1 class="card-title">Alta Evento</h1>
                        </g:else>

                        <div class="form-group">
                            <label class="form-control-label" for="title">Título</label>
                            <input class="form-control" id="title" name="title" type="text" required
                                   value="${event.title}">
                        </div>

                        <div class="form-group">
                            <label class="form-control-label" for="subtitle">Subtítulo</label>
                            <input class="form-control" id="subtitle" name="subtitle" type="text" required
                                   value="${event.subtitle}">
                        </div>

                        <div class="form-group">
                            <label class="form-control-label" for="description">Descripción</label>
                            <textarea class="form-control" rows="5" id="description" name="description"
                                      required>${event.description}</textarea>
                        </div>

                        <div class="form-group">
                            <label class="form-control-label" for="description">Fecha</label>
                            <input class="form-control" id="date" name="date" type="date" required value="${event ? event.date.format("yyyy-MM-dd"): ""}">
                        </div>

                        <div class="form-group">
                            <label class="form-control-label" for="picture">Foto (url)</label>
                            <input class="form-control" id="picture" type="url" name="picture" required
                                   value="${event.picture}">
                        </div>

                        <div class="form-group">
                            <label class="form-control-label" for="Facebook">Facebook</label>
                            <input class="form-control" id="Facebook" type="url" name="facebook"
                                   value="${event.facebook}">
                        </div>

                        <div class="form-group">
                            <label class="form-control-label" for="twitter">Twitter</label>
                            <input class="form-control" id="twitter" type="url" name="twitter" value="${event.twitter}">
                        </div>

                        <div class="form-group">
                            <label class="form-control-label" for="link">Comprar</label>
                            <input class="form-control" id="link" type="url" name="link" value="${event.link}">
                        </div>

                        <div class="form-group" style="text-align: center">
                            <g:if test="${event}">
                                <button class="btn btn-primary" id="submit">Modificar</button>
                            </g:if>
                            <g:else>
                                <button class="btn btn-primary" id="submit">Crear</button>
                            </g:else>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</form>

</body>

<g:render template="../foot"></g:render>