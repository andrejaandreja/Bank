<%-- 
    Document   : izmenaKlijenata
    Created on : Mar 7, 2016, 8:44:00 PM
    Author     : Andreja
--%>

<div class="list-group">
    <div class="list-group-item">
        <b><a href="${pageContext.request.contextPath}/klijent/prikazKlijenata">Klijent</a> / Izmena</b>
    </div>
</div>

<form action="${pageContext.request.contextPath}/klijent/izmenaKlijenata/${klijent.klijent_id}" method ="post" class='form-horizontal'>

    <div class='form-group'>
        <label class='control-label col-xs-4'>Jmbg:</label>
        <div class='col-xs-8'>
            <input name='jmbg' class='form-control' value='${klijent.jmbg}'/>
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
        <label class='control-label col-xs-4'>Email:</label>
        <div class='col-xs-8'>
            <input name='email' class='form-control' value='${klijent.email}'/>
        </div>
    </div>
        
    <div class='form-group'>
        <label class='control-label col-xs-4'>Datum rodjenja</label>
        <div class='col-xs-8'>
            <fmt:formatDate value="${klijent.datumRodjenja}" var="formattedDate" type="date" pattern="dd.MM.yyyy." />                       
            <input name='datumRodjenja' class='form-control' value='${formattedDate}'/>
        </div>
    </div>

    <div class='text-right'>
        <button type="submit" class="btn btn-primary"><span class="fa fa-fw fa-check"></span></button>
        <a href="${pageContext.request.contextPath}/klijent/prikazKlijenata" class="btn btn-default"><span class="fa fa-fw fa-remove"></span></a>
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
                jmbg: {
                    validators: {
                        notEmpty: {
                            message: 'JMBG nije unet'
                        }
                    }
                },
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
                },
                adresa: {
                    validators: {
                        notEmpty: {
                            message: 'Adresa nije uneta'
                        }
                    }
                },
                email: {
                    validators: {
                        notEmpty: {
                            message: 'Email nije unet'
                        }
                    }
                }
            }
        })
    });


</script>