
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="list-group">
    <div class="list-group-item">
        <b>Klijenti</b>
    </div>
</div>

<form action="klijent/pretraga" method="get" class="form-inline">
    <div class="form-group">
        <input class="form-control" name="param">
        <button type="submit" class="btn btn-default"><span class="fa fa-fw fa-search"></span></button>
    </div>
</form>

<table class='table table-condensed table-align'>
    <thead>
        <tr>
            <th>Jmbg</th>
            <th>Ime</th>
            <th>Prezime</th>
            <th>Adresa</th>
            <th>E-mail</th>
            <th>Datum rodjenja</th>
            <th class='text-right'><a href="unosKlijenata" class="btn btn-primary"><span class='fa fa-fw fa-plus'></span></a></th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${listaKlijenata}" var="klijent" >

            <tr>
                <td>
                    <p class='form-control-static'>
                        ${klijent.jmbg}
                    </p>
                </td>   
                <td>
                    <p class='form-control-static'>
                        ${klijent.ime}
                    </p>
                </td>
                <td>
                    <p class='form-control-static'>
                        ${klijent.prezime}
                    </p>
                </td>  
                <td>
                    <p class='form-control-static'>
                        ${klijent.adresa}
                    </p>
                </td>  
                <td>
                    <p class='form-control-static'>
                        ${klijent.email}
                    </p>
                </td>  
                <td>
                    <p class='form-control-static'>
                         <fmt:formatDate value="${klijent.datumRodjenja}" var="formattedDate" type="date" pattern="dd.MM.yyyy." />
                        ${formattedDate}                        
                    </p>
                </td>        
                <td>
                    <div class='text-right'>
                        <div class='btn-group'>
                            <a href="${pageContext.request.contextPath}/klijent/detaljiKlijenta/${klijent.klijent_id}" class="btn btn-default"><span class='fa fa-fw fa-info'></span></a>
                            <a href="${pageContext.request.contextPath}/klijent/izmenaKlijenata/${klijent.klijent_id}" class="btn btn-warning"><span class='fa fa-fw fa-file'></span></a>
                            <a href="${pageContext.request.contextPath}/klijent/brisanjeKlijenata/${klijent.klijent_id}" class="btn btn-danger"><span class='fa fa-fw fa-trash'></span></a>
<!--                        <a href="#myModal_${klijent.jmbg}" role="button" class="btn btn-danger" data-toggle="modal"><span class='fa fa-fw fa-trash'></span></a>-->

                        </div>
                    </div>
                </td>               
            </tr>
        <div id="myModal_${klijent.klijent_id}" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Confirm Delete</h4>
                    </div>

                    <div class="modal-body">
                        <p>Are you sure you want to delete this user? </p>
                    </div>
                    <div class="modal-footer">
                        <form action="klijent.do" method ="post" commandName="klijent" class='form-horizontal'>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><span class="fa fa-fw fa-remove"></span></button>
                            <button type="submit" name="action" value="delete" class="btn btn-default" onclick="doAjaxPost()"><span class="fa fa-fw fa-check"></span></a>
                        </form>
                    </div>
                </div>
            </div>
        </div>  
    </c:forEach>
</tbody>
</table>