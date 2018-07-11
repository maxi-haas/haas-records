<!DOCTYPE html>

<g:render template="../head"></g:render>

<body>
<div class="container">
    <div class="row press"><!-- row About -->
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="text-align: center;">
            <br/>

            <h2>CONTACT</h2>
        </div>
    </div>

    <form action="./mail" method="post" name="myForm" id="myForm">
        <div class="row">
            <div class="col-md-12 col-lg-12">

                <div class="form-group">
                    <label for="category" style="padding-left:15px;">CATEGORY</label>
                    <select name="category" class="form-control" id="category" required>
                        <option value="">Select option</option>
                        <option value="general">General</option>
                        <option value="Press and News">Press and News</option>
                        <option value="Booking">Booking request</option>
                        <option value="Be Part">Be part</option>
                        <option value="Demos">Demos</option>
                    </select>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 col-lg-6">
                <div class="form-group">
                    <label for="name" style="padding-left:15px;">NAME</label>
                    <input name="name" type="text" class="form-control" id="name" placeholder="Required" required>
                </div>
            </div>

            <div class="col-md-6 col-lg-6">
                <div class="form-group">
                    <label for="country" style="padding-left:15px;">COUNTRY</label>
                    <input name="country" type="text" class="form-control" id="country" placeholder="Optional">
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 col-lg-6">
                <div class="form-group">
                    <label for="phone" style="padding-left:15px;">PHONE</label>
                    <input name="phone" type="text" class="form-control" id="phone" placeholder="Optional">
                </div>
            </div>

            <div class="col-md-6 col-lg-6">
                <div class="form-group">
                    <label for="email" style="padding-left:15px;">EMAIL</label>
                    <input name="email" type="email" class="form-control" id="email" placeholder="Required" required>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="form-group">
                <label for="mensaje" style="padding-left:15px;">MESSAGE</label>
                <textarea name="mensaje" type="textarea" class="form-control" rows="5" id="mensaje"
                          placeholder="Required" required></textarea>
            </div>
            <button type="submit" class="boton_negro" style="float:right; padding: 5px 50px;">SEND</button>
        </div>

    </form>

    <br/>
    <br/>

</div> <!-- FIN CONTAINER -->

</body>

<g:render template="../foot"></g:render>