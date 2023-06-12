var database = require("../database/config");

var instrucaoSql = "";
function buscarMedidasPiloto() {

     instrucaoSql = '';
    instrucaoSql = `select count(nomePl) as qtdPiloto,nomePL  from tbformulario group by nomePL;`

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscarMedidasEquipe() {

     instrucaoSql = '';
    instrucaoSql = `select count(equipePl) as qtdEquipe,equipePl  from tbformulario group by equipePl;`

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
  buscarMedidasPiloto,
  buscarMedidasEquipe

}
