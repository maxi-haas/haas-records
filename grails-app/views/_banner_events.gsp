<div class="row events wow bounce" data-wow-delay="0.5s"><!-- row events -->
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12"><br/>

        <g:if test="${haas.records.Banner.findById(1)}">
            <h3 style="text-align: right; padding-right: 15px;"><a
                    href="${haas.records.Banner.findById(1).link}">${haas.records.Banner.findById(1).title}</a></h3>
            <a href="${haas.records.Banner.findById(1).link}" target="_blank">
                <img class="img-responsive" style="max-height: 177px" src="${haas.records.Banner.findById(1).picture}">
            </a>

        </g:if>
        <g:else>
            <h3 style="text-align: right; padding-right: 15px;"><a href="../events">EVENTS</a></h3>
            <a href="https://www.facebook.com/events/1148754388600921/" target="_blank">
                <g:img class="img-responsive" dir="images" file="events.jpg"/>
            </a>
        </g:else>

    </div>
</div>
