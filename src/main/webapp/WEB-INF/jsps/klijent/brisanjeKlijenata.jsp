<%-- 
    Document   : brisanjeKlijenata
    Created on : Mar 7, 2016, 8:41:03 PM
    Author     : Andreja
--%>

<div class="list-group">
    <div class="list-group-item">
        <b><a href="prikazKlijenata">Kiljent</a> / Brisanje</b>
    </div>
</div>


<form action="brisanjeKlijenata/${klijent.JMBG}" method ="post" class='form-horizontal'>
    
    <div class='form-group'>
        <label class='control-label col-xs-4'>JMBG</label>
        <div class='col-xs-8'>
            <p class="form-control-static">
                ${klijent.JMBG}
            </p>
        </div>
    </div>

    <div class='form-group'>
        <label class='control-label col-xs-4'>Ime</label>
        <div class='col-xs-8'>
            <p class="form-control-static">
                ${klijent.ime}
            </p>
        </div>
    </div>

    <div class='form-group'>
        <label class='control-label col-xs-4'>Prezime</label>
        <div class='col-xs-8'>
            <p class="form-control-static">
                ${klijent.prezime}
            </p>
        </div>
    </div>

    <div class='text-right'>
        <button type="submit" class="btn btn-danger"><span class="fa fa-fw fa-trash"></span></button>
        <a href="prikazKlijenata" class="btn btn-default"><span class="fa fa-fw fa-remove"></span></a>
    </div>

</form>