$(document).ready(function () {
    $('#iderror').hide();
    $('#nameerror').hide();

    var iderror=false;
    var nameerror=false;

    $('#studentid').on('keyup',function () {
       checksid();
    });
    $('#name').on('keyup',function () {
       checksname();
    });

    function checksid() {
        var sid=$('#studentid').val().length;
        if(sid>=5)
        {
            $('#iderror').hide();
            $('#studentid').css("border","2px solid #2f1");
        }
        else
        {
            $('#iderror').html('*Student ID minimum 5 characters.');
            $('#iderror').show();
            $('#studentid').css("border","2px solid #f12");
            iderror=true;
        }

    }

    function checksname() {
        var name=$('#name').val().length;
        if(name>=5 && name<=20)
        {
            $('#nameerror').hide();
            $('#name').css("border","2px solid #2f1");
        }
        else
        {
            $('#nameerror').show();
            $('#nameerror').html('*Name must be between 5 to 20 characters');
            $('#name').css("border","2px solid #f12");
            nameerror=true;
        }
    }
    
    $('#registration').submit(function () {
        iderror=false;
        nameerror=false;

        checksid();
        checksname();

        if(!iderror && !nameerror)
        {
            alert("Registration Successfull");
            return true;
        }
        else
        {
            alert("Please Complete the form correctly");
            return false;
        }
    });

})