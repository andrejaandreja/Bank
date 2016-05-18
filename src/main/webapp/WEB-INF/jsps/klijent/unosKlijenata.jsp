
<div class="list-group">
    <div class="list-group-item">
        <b><a href="./">Klijent</a> / Unos</b>
    </div>
</div>

<form action="unosKlijenata" method ="post" class='form-horizontal'>

    <div class='form-group'>
        <label class='control-label col-xs-4'>JMBG:</label>
        <div class='col-xs-8'>
            <input name='JMBG' class='form-control' value='${klijent.JMBG}'/>
        </div>
    </div>

    <div class='form-group'>
        <label class='control-label col-xs-4'>Ime:</label>
        <div class='col-xs-8'>
            <input name='ime' class='form-control' value='${klijent.ime}'/>
        </div>
    </div>

    <div class='form-group'>
        <label class='control-label col-xs-4'>Prezime:</label>
        <div class='col-xs-8'>
            <input name='prezime' class='form-control' value='${klijent.prezime}'/>
        </div>
    </div>

    <div class='form-group'>
        <label class='control-label col-xs-4'>Adresa:</label>
        <div class='col-xs-8'>
            <input name='adresa' class='form-control' value='${klijent.adresa}'/>
        </div>
    </div>

    <div class='form-group'>
        <label class='control-label col-xs-4'>E-mail:</label>
        <div class='col-xs-8'>
            <input name='email' class='form-control' value='${klijent.email}'/>
        </div>
    </div>   

    <div class="form-group">
        <label class='control-label col-xs-4'>Datum rodjenja: </label>
        <div class='input-group date' id='datetimepicker1'>
            <input type='text' class="form-control" value='${klijent.datumRodjenja}'/>
            <span class="input-group-addon">
                <span class="glyphicon glyphicon-calendar"></span>
            </span>
        </div>
    </div>

    <!--<div class='form-group'>
        <label class='control-label col-xs-4'>Datum rodjenja: </label>
        <div class='col-xs-8'>
            <input name='datumRodjenja' class='form-control' value='${klijent.datumRodjenja}'/>
        </div>
    </div>-->

    <div class='text-right'>
        <button type="submit" class="btn btn-primary"><span class="fa fa-fw fa-check"></span></button>
        <a href="./" class="btn btn-default"><span class="fa fa-fw fa-remove"></span></a>
    </div>

</form>

<script>

    $(document).ready(function () {
        $.get("racun/json", {}, function (data) {
            $("#brojRacuna").append("<option value=''>--</option>");
            data = JSON.parse(data);
            for (i = 0; i < data.length; i++) {
                $("#brojRacuna").append("<option value='" + data[i].brojRacuna + "'>" + data[i].brojRacuna + "</option>");
            }
        });
    });

    $(document).ready(function () {
        $('#datetimepicker1').datetimepicker();
    });
    
    $(document).ready(function () {
        $('form').bootstrapValidator({
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                JMBG: {
                    validators: {
                        notEmpty: {
                            message: 'JMBG nije unet'
                        }
                    }
                },
                email: {
                    validators: {
                        notEmpty: {
                            message: 'Email nije unet'
                        }
                    }
                },
                ime: {
                    validators: {
                        notEmpty: {
                            message: 'Ime nije unet'
                        }
                    }
                },
                prezime: {
                    validators: {
                        notEmpty: {
                            message: 'Prezime nije unet'
                        }
                    }
                }
            }
        })
    });
    $('.datepicker').datepicker();


</script>