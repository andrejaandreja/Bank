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
        <label class='control-label col-xs-4'>Jmbg: </label>
        <div class='col-xs-8'>
            <p class="form-control-static">
                ${klijent.jmbg}
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

    <table class='table table-condensed table-align'>
        <thead>
            <tr>
                <th>Broj racuna</th>
                <th>Datum kreiranja</th>
                <th>Vrsta racuna</th>
                <th class='text-right'><a href="racun/unos" class="btn btn-primary"><span class='fa fa-fw fa-plus'></span></a></th>
            </tr>
        </thead>
        <tbody>

        <c:forEach items="${klijent.pregledRacunaList}" var="pregledRacuna" >

            <tr>
                <td>
                    <p class='form-control-static'>
                        ${pregledRacuna.brojRacuna}
                    </p>
                </td>   
                <td>
                    <p class='form-control-static'>
            <fmt:formatDate value="${pregledRacuna.datumKreiranja}" var="formattedDate" type="date" pattern="dd.MM.yyyy." />
            ${formattedDate}
            </p>
            </td>
            <td>
                <p class='form-control-static'>
                    ${pregledRacuna.vrstaRacuna}
                </p>
            </td>     
            <td>
                <div class='text-right'>
                    <div class='btn-group'>
                        <a href="racun/detaljiRacuna/${pregledRacuna.brojRacuna}" class="btn btn-default"><span class='fa fa-fw fa-info'></span></a>
                        <a href="racun/brisanjeRacuna/${pregledRacuna.brojRacuna}" class="btn btn-danger"><span class='fa fa-fw fa-trash'></span></a>
                    </div>
                </div>
            </td>               
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <div class='text-right'>
        <a href="izmenaKlijenata/${klijent.klijent_id}" class="btn btn-warning"><span class="fa fa-fw fa-file"></span></a>
        <a href="brisanjeKlijenata/${klijent.klijent_id}" class="btn btn-default"><span class="fa fa-fw fa-remove"></span></a>
    </div>

</div>
