
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="list-group">
    <div class="list-group-item">
        <b>Racuni:</b>
    </div>
</div>

<table class='table table-condensed table-align'>
    <thead>
        <tr>
            <th>Broj racuna:</th>
            <th>Datum kreiranja:</th>
            <th>Vrsta racuna:</th>
            
            <th class='text-right'><a href="unosRacuna" class="btn btn-primary"><span class='fa fa-fw fa-plus'></span></a></th>
        </tr>
    </thead>
    <tbody>
    <c:forEach items="${listaRacuna}" var="klijent" >

        <tr>
            <td>
                <p class='form-control-static'>
                    ${racun.brojRacuna}
                </p>
            </td>   
            <td>
                <p class='form-control-static'>
                    ${racun.datumKreiranja}
                </p>
            </td>
            <td>
                <p class='form-control-static'>
                    ${racun.vrstaRacuna}
                </p>
            </td>        
            <td>
                <div class='text-right'>
                    <div class='btn-group'>
                        <a href="detaljiRacuna/${racun.brojRacuna}" class="btn btn-default"><span class='fa fa-fw fa-info'></span></a>
                        <a href="izmenaRacuna/${racun.brojRacuna}" class="btn btn-warning"><span class='fa fa-fw fa-file'></span></a>
                        <a href="brisanjeRacuna/${racun.brojRacuna}" class="btn btn-danger"><span class='fa fa-fw fa-trash'></span></a>
                    </div>
                </div>
            </td>               
        </tr>
    </c:forEach>
</tbody>
</table>
