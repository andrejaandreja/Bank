<%-- 
    Document   : pretragaValute
    Created on : May 21, 2016, 5:54:55 PM
    Author     : Andreja
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="list-group">
    <div class="list-group-item">
        <b>Valuta</b>
    </div>
</div>

<table class='table table-condensed table-align'>
    <thead>
        <tr>
            <th>Naziv</th>
            <th>Simbol</th>
            <th class='text-right'><a href="valuta/unosValute" class="btn btn-primary"><span class='fa fa-fw fa-plus'></span></a></th>
        </tr>
    </thead>
    <tbody>
    <c:forEach items="${valutaList}" var="valuta" >

        <tr>
            <td>
                <p class='form-control-static'>
                    ${valuta.naziv}
                </p>
            </td>   
            <td>
                <p class='form-control-static'>
                    ${valuta.simbol}
                </p>
            </td>       
            <td>
                <div class='text-right'>
                    <div class='btn-group'>
                        <a href="valuta/detaljiValute/${valuta.naziv}" class="btn btn-default"><span class='fa fa-fw fa-info'></span></a>
                        <a href="valuta/izmenaValute/${valuta.naziv}" class="btn btn-warning"><span class='fa fa-fw fa-file'></span></a>
                        <a href="valuta/brisanjeValute/${valuta.naziv}" class="btn btn-danger"><span class='fa fa-fw fa-trash'></span></a>
                    </div>
                </div>
            </td>               
        </tr>
    </c:forEach>
</tbody>
</table>
