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


<form action="brisanjeKlijenata/${klijent.klijent_id}" method ="post" class='form-horizontal'>

    <div class='form-group'>
        <label class='control-label col-xs-4'>Jmbg:</label>
        <div class='col-xs-8'>
            <p class="form-control-static">
                ${klijent.jmbg}
            </p>
        </div>
    </div>

    <div class='form-group'>
        <label class='control-label col-xs-4'>Ime:</label>
        <div class='col-xs-8'>
            <p class="form-control-static">
                ${klijent.ime}
            </p>
        </div>
    </div>

    <div class='form-group'>
        <label class='control-label col-xs-4'>Prezime:</label>
        <div class='col-xs-8'>
            <p class="form-control-static">
                ${klijent.prezime}
            </p>
        </div>
    </div>

    <div class='form-group'>
        <label class='control-label col-xs-4'>Adresa:</label>
        <div class='col-xs-8'>
            <p class="form-control-static">
                ${klijent.adresa}
            </p>
        </div>
    </div>

    <div class='form-group'>
        <label class='control-label col-xs-4'>Datum rodjenja:</label>
        <div class='col-xs-8'>
            <p class="form-control-static">
            <fmt:formatDate value="${klijent.datumRodjenja}" var="formattedDate" type="date" pattern="dd.MM.yyyy." />                       
            ${formattedDate}
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
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <div class='text-right'>
        <button type="submit" class="btn btn-danger"><span class="fa fa-fw fa-trash"></span></button>
        <a href="prikazKlijenata" class="btn btn-default"><span class="fa fa-fw fa-remove"></span></a>
    </div>

</form>