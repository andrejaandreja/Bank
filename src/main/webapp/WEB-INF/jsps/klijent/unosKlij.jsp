<div class="container-fluid" aligment="left">
 <form action="${pageContext.request.contextPath}/klijent/unosKlijenata" method="post" class="form-horizontal">
	<div class="form-group has-success has-feedback">
		<label class="control-label" for="inputSuccess2">JMBG: </label> <input type="text" class="form-control" id="inputSuccess2"
			aria-describedby="inputSuccess2Status"> <span
			class="glyphicon glyphicon-ok form-control-feedback"
			aria-hidden="true"></span> <span id="inputSuccess2Status"
			class="sr-only">(success)</span>
	</div>
	<div class="form-group has-warning has-feedback">
		<label class="control-label" for="inputWarning2">Ime: </label> <input type="text" class="form-control" id="inputWarning2"
			aria-describedby="inputWarning2Status"> <span
			class="glyphicon glyphicon-warning-sign form-control-feedback"
			aria-hidden="true"></span> <span id="inputWarning2Status"
			class="sr-only">(warning)</span>
	</div>
	<div class="form-group has-warning has-feedback">
		<label class="control-label" for="inputWarning2">Prezime: </label> <input type="text" class="form-control" id="inputWarning2"
			aria-describedby="inputWarning2Status"> <span
			class="glyphicon glyphicon-warning-sign form-control-feedback"
			aria-hidden="true"></span> <span id="inputWarning2Status"
			class="sr-only">(warning)</span>
	</div>
	<div class="form-group has-warning has-feedback">
		<label class="control-label" for="inputWarning2">E-mail: </label> <input type="text" class="form-control" id="inputWarning2"
			aria-describedby="inputWarning2Status"> <span
			class="glyphicon glyphicon-warning-sign form-control-feedback"
			aria-hidden="true"></span> <span id="inputWarning2Status"
			class="sr-only">(warning)</span>
	</div>
	<div class="form-group has-error has-feedback">
		<label class="control-label" for="inputError2">Input with
			error</label> <input type="text" class="form-control" id="inputError2"
			aria-describedby="inputError2Status"> <span
			class="glyphicon glyphicon-remove form-control-feedback"
			aria-hidden="true"></span> <span id="inputError2Status"
			class="sr-only">(error)</span>
	</div>
	<div class="form-group has-success has-feedback">
		<label class="control-label" for="inputGroupSuccess1">Input
			group with success</label>
		<div class="input-group">
			<span class="input-group-addon">@</span> <input type="text"
				class="form-control" id="inputGroupSuccess1"
				aria-describedby="inputGroupSuccess1Status">
		</div>
		<span class="glyphicon glyphicon-ok form-control-feedback"
			aria-hidden="true"></span> <span id="inputGroupSuccess1Status"
			class="sr-only">(success)</span>
	</div>
	<button type="submit" class="btn btn-primary">Unesite</button>
</form>
</div>