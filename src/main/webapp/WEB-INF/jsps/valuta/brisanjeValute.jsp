<%-- 
    Document   : brisanjeValute
    Created on : May 21, 2016, 5:54:31 PM
    Author     : Andreja
--%>

<div class="list-group">
    <div class="list-group-item">
        <b><a href="valuta/prikazValute">Valuta</a> / Brisanje</b>
    </div>
</div>


<form action="valuta/brisanjeValute/${valuta.naziv}" method ="post" class='form-horizontal'>
    
    <div class='form-group'>
        <label class='control-label col-xs-4'>Naziv:</label>
        <div class='col-xs-8'>
            <p class="form-control-static">
                ${valuta.naziv}
            </p>
        </div>
    </div>

    <div class='form-group'>
        <label class='control-label col-xs-4'>Simbol:</label>
        <div class='col-xs-8'>
            <p class="form-control-static">
                ${valuta.simbol}
            </p>
        </div>
    </div>

    <div class='text-right'>
        <button type="submit" class="btn btn-danger"><span class="fa fa-fw fa-trash"></span></button>
        <a href="valuta/prikazValute" class="btn btn-default"><span class="fa fa-fw fa-remove"></span></a>
    </div>

</form>
