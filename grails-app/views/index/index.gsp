<!doctype html>
<html>
<head>
    <title>Agencies API</title>
    <script src="/assets/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="/assets/bootstrap.css?compile=false">
    <script src="/assets/formValidator.js"></script>
    <script src="/assets/index.js"></script>
    <link rel="stylesheet" href="/assets/index-styles.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

</head>
<body>
    <div class="container-fluid">
        <div class="jumbotron">
            <h1>Buscar Agencias</h1>
        </div>
        <form class="needs-validation" novalidate>
            <div class="form-row">
                <div class="col-md-4 mb-3">
                    <label>Sitio</label>
                    <g:form>
                        <g:select id="site_select" class="form-control" optionKey="id" optionValue="name" name="sites" from="${sites}"
                                  onChange="getPaymentMethods(this.value)" noSelection="['-1':'Seleccione país']"
                        />
                    </g:form>
                    <div class="valid-feedback">
                        Todo en orden!
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <label>Método de Pago</label>
                    <select class="form-control" name="payment-method" id="payment_select" disabled>
                        <option value="-1">Seleccione país primero</option>
                    </select>
                    <div class="valid-feedback">
                        Todo en orden!
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="validationCustomUsername">Username</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroupPrepend">@</span>
                        </div>
                        <input type="text" class="form-control" id="validationCustomUsername" placeholder="Username"
                               aria-describedby="inputGroupPrepend" disabled>
                        <div class="invalid-feedback">
                            Please choose a username.
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div class="col-md-3 mb-3">
                    <label>Latitud</label>
                    <input type="text" class="form-control" id="" placeholder="Latitud" required>
                    <div class="invalid-feedback">
                        Ingrese una latitud válida
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <label>Longitud</label>
                    <input type="text" class="form-control" placeholder="Longitud" required>
                    <div class="invalid-feedback">
                        Ingrese una latitud válida
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <label>Radio de búsqueda</label>
                    <input type="text" class="form-control" placeholder="Radio en metros">
                </div>
                <div class="col-md-3 mb-3">
                    <label for="criterios_select">Ordenar por</label>
                    <select class="form-control" name="criterio" id="criterios_select">
                        <option value="address">Dirección</option>
                        <option value="agency_code">Código de agencia</option>
                        <option value="distance">Distancia</option>
                    </select>
                </div>
            </div>
            <button class="btn btn-primary btn-sm" type="" id="submit_button" onclick="getAgencies()">Buscar!</button>
        </form>
    </div>
    <br>
    <div class="container-fluid">
        <div class="list-group" id="agencies_list"></div>
    </div>
</body>
</html>
