function sure(msg, url) {
    confirm = confirm(msg);
    if (confirm) {

        $.ajax({
            url: url,
            type: 'post',
            dataType: 'json',
            contentType: 'application/json',
            success: function (data) {
                location.reload();
            }
        });

    }
}