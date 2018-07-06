$(document).ready(function () {
    $(document).find("[name='searchText']").on("keyup", function (e) {
        var data = {
            searchText: $(this).val()
        }
        $.get("search", data, function (response) {
            if(response){
                $(".default-table").hide();
                console.log(response);
                var trHTML = '<tr>\n' +
                    '<th>ID</th>\n' +
                    '<th>Student Id</th>\n' +
                    '<th>Name</th>\n' +
                    '<th>Details</th>\n' +
                    '</tr>';
                $.each(response, function (key,value) {
                    trHTML +=
                        '<tr><td>' + value.id +
                        '</td><td>' + value.studentId +
                        '</td><td>' + value.name +
                        '</td><td>' + '<a href="http://localhost:9001/student/show/'+value.id+'">Details</a>'+
                        '</td></tr>';
                });
                $('#records_table').html(trHTML);
            }
            else
            {
                $(document).find(".default-table").show();
            }
        });
    });
});