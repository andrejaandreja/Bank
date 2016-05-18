<%-- 
    Document   : detaljiKlijenta
    Created on : Mar 7, 2016, 8:44:39 PM
    Author     : Andreja
--%>

<div class="list-group">
    <div class="list-group-item">
        <b><a href="prikazKlijenata">Klijent</a> / Detalji</b>
    </div>
</div>

<div class='form-horizontal'>

    <div class='form-group'>
        <label class='control-label col-xs-4'>JMBG: </label>
        <div class='col-xs-8'>
            <p class="form-control-static">
                ${klijent.JMBG}
            </p>
        </div>
    </div>

    <div class='form-group'>
        <label class='control-label col-xs-4'>Ime: </label>
        <div class='col-xs-8'>
            <p class="form-control-static">
                ${klijent.ime}
            </p>
        </div>
    </div>

    <div class='form-group'>
        <label class='control-label col-xs-4'>Prezime: </label>
        <div class='col-xs-8'>
            <p class="form-control-static">
                ${klijent.prezime}
            </p>
        </div>
    </div>

    <div class='form-group'>
        <label class='control-label col-xs-4'>Adresa: </label>
        <div class='col-xs-8'>
            <p class="form-control-static">
                ${klijent.adresa}
            </p>
        </div>
    </div>

    <div class='form-group'>
        <label class='control-label col-xs-4'>E-mail: </label>
        <div class='col-xs-8'>
            <p class="form-control-static">
                ${klijent.email}
            </p>
        </div>
    </div>

    <div class='form-group'>
        <label class='control-label col-xs-4'>Datum rodjenja: </label>
        <div class='col-xs-8'>
            <p class="form-control-static">
                ${klijent.datumRodjenja}
            </p>
        </div>
    </div>

    <div class='text-right'>
        <a href="izmenaKlijenata/${klijent.JMBG}" class="btn btn-warning"><span class="fa fa-fw fa-file"></span></a>
        <a href="brisanjeKlijenata/${klijent.JMBG}" class="btn btn-default"><span class="fa fa-fw fa-remove"></span></a>
    </div>

</div>
