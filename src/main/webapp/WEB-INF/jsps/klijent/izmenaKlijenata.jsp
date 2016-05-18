<%-- 
    Document   : izmenaKlijenata
    Created on : Mar 7, 2016, 8:44:00 PM
    Author     : Andreja
--%>

<div class="list-group">
    <div class="list-group-item">
        <b><a href="prikazKlijenata">Klijent</a> / Izmena</b>
    </div>
</div>

<form action="izmenaKlijenata/${klijent.JMBG}" method ="post" class='form-horizontal'>

    <div class='form-group'>
        <label class='control-label col-xs-4'>Ime</label>
        <div class='col-xs-8'>
            <input name='ime' class='form-control' value='${klijent.ime}'/>
        </div>
    </div>
    
    <div class='form-group'>
        <label class='control-label col-xs-4'>Prezime</label>
        <div class='col-xs-8'>
            <input name='prezime' class='form-control' value='${klijent.prezime}'/>
        </div>
    </div>
        
    <div class='text-right'>
        <button type="submit" class="btn btn-primary"><span class="fa fa-fw fa-check"></span></button>
        <a href="prikazKlijenata" class="btn btn-default"><span class="fa fa-fw fa-remove"></span></a>
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
                ime: {
                    validators: {
                        notEmpty: {
                            message: 'Ime nije uneto'
                        }
                    }
                },
                prezime: {
                    validators: {
                        notEmpty: {
                            message: 'Prezime nije uneto'
                        }
                    }
                }
            }
        })
    });

</script>