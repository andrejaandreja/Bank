
<div class="list-group">
    <div class="list-group-item">
        <b><a href="racun/prikazRacuna">Racuni</a> / Unos</b>
    </div>
</div>

<form action="racun/unos" method ="post" class='form-horizontal'>

    <div class='form-group'>
        <label class='control-label col-xs-4'>Klijent</label>
        <div class='col-xs-8'>
            <select name='jmbg' id="jmbg" class='form-control'></select>
        </div>
    </div>

    <div class='form-group'>
        <div class="row">
            <div class="col-xs-4">
                <select id="transakcija" class="form-control"></select>
            </div>
            <div class="col-xs-4">
                <button type='button' class="btn btn-default" onclick="DodajTransakciju()"><span class='fa fa-fw fa-plus'></span></button>
            </div>
        </div>
    </div>

    <div class='form-group'>
        <table class="table table-condensed table-align">
            <thead>
                <tr>
                    <th>Sifra transakcije</th>
                    <th>Vrsta</th>
                    <th>Valuta</th>
                    <th>Iznos</th>
                    <th></th>
                </tr>
            </thead>
            <tbody id='stavke'></tbody>
        </table>
    </div>

    <div class='text-right'>
        <button type="submit" class="btn btn-primary"><span class="fa fa-fw fa-check"></span></button>
        <a href="posetaStomatologu/pretraga" class="btn btn-default"><span class="fa fa-fw fa-remove"></span></a>
    </div>

</form>

<script>    

    function DodajTransakciju() {
        if($("#stavka-"+$("#usluga").val()).val()!=undefined){
            alert("Data usluga je vec dodata u spisak usluga");
            return;
        }
        $.get("posetaStomatologu/dodajStavku/" + $("#usluga").val(), {}, function (html) {
            $("#stavke").append(html);
        })
    }

    function IzbaciStavku(i) {
        $("#stavka-"+i).remove();
    }
    
    $(document).ready(function () {
        $.get("stomatoloskaUsluga/json", {}, function (data) {
            $("#usluga").append("<option value=''>--</option>");
            data = JSON.parse(data);
            for (i = 0; i < data.length; i++) {
                $("#usluga").append("<option value='" + data[i].sifraUsluge + "'>" + data[i].nazivUsluge+ "</option>");
            }
        });
    });
    
    $(document).ready(function () {
        $.get("pacijent/json", {}, function (data) {
            $("#sifraPacijenta").append("<option value=''>--</option>");
            data = JSON.parse(data);
            for (i = 0; i < data.length; i++) {
                $("#sifraPacijenta").append("<option value='" + data[i].sifraPacijenta + "'>" + data[i].ime +" "+data[i].prezime+ "</option>");
            }
        });
    });

    $(document).ready(function () {
        $('form').bootstrapValidator({
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                sifraPacijenta: {
                    validators: {
                        notEmpty: {
                            message: 'Pacijent nije unet'
                        }
                    }
                }
            }
        })
    });

</script>