$(document).ready(function () {
        $.get("index", function (response) {
            if(response)
            {
                $.each(response, function (key,value) {
                    console.log(value.name);
                });
            }
        });
});