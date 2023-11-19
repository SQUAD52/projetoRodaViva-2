var lineCurso = 1;
function addCurso(divCurso) {

    var newdiv = document.createElement('div');
    newdiv.innerHTML = '<label for="iCurso' + lineCurso + '" class="form-label text-muted">' + lineCurso + '.</label>';
    newdiv.innerHTML += '<input type="text" class="form-control form-control-sm" name="Ncurso' + lineCurso + '" id="iCurso' + lineCurso + '" placeholder="curso ou formação">';
    document.getElementById(divCurso).appendChild(newdiv);
    lineCurso++;
}

var lineExper = 1;
function addExperiencia(divExper) {

    var newdivEx = document.createElement('div');
    newdivEx.innerHTML = '<label for="iEmpresa' + lineExper + '" class="form-label text-muted">Empresa ' + lineExper + '.</label>';
    newdivEx.innerHTML += '<input type="text" class="form-control form-control-sm" name="nEmpresa' + lineExper + '" id="iEmpresa' + lineExper + '" placeholder="Empresa">';
    newdivEx.innerHTML += '<label for="iCargo' + lineExper + '" class="form-label text-muted">Cargo</label>';
    newdivEx.innerHTML += '<input type="text" class="form-control form-control-sm" name="nCargo' + lineExper + '" id="iCargo' + lineExper + '" placeholder="Cargo">';
    document.getElementById(divExper).appendChild(newdivEx);
    lineExper++;
}
