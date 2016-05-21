<%-- 
    Document   : unosValute
    Created on : May 21, 2016, 5:55:02 PM
    Author     : Andreja
--%>


<div class="list-group">
    <div class="list-group-item">
        <b><a href="valuta/prikazValute">Valuta</a> / Unos</b>
    </div>
</div>

<form action="mesto/unos" method ="post" class='form-horizontal'>

    <div class='form-group'>
        <label class='control-label col-xs-4'>Naziv:</label>
        <div class='col-xs-8'>
            <input name='naziv' class='form-control' value='${valuta.naziv}'/>
        </div>
    </div>
    
    <div class='form-group'>
        <label class='control-label col-xs-4'>Simbol:</label>
        <div class='col-xs-8'>
            <input name='simbol' class='form-control' value='${valuta.simbol}'/>
        </div>
    </div>

    <div class='text-right'>
        <button type="submit" class="btn btn-primary"><span class="fa fa-fw fa-check"></span></button>
        <a href="valuta/prikazValute" class="btn btn-default"><span class="fa fa-fw fa-remove"></span></a>
    </div>

</form>

<script>

     $(document).ready(function () {
        $('form').bootstrapValidator({
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                naziv; {
                    validators: {
                        notEmpty: {
                            message: 'Naziv nije unet'
                        }
                    }
                },
                simbol: {
                    validators: {
                        notEmpty: {
                            message: 'Simbol nije unet'
                        }
                    }
                }
            }
        })
    });

</script>