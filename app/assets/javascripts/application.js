// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery 
//= require jquery_ujs 
//= require bootstrap-sprockets 
function formatLabels(){
    let labels = document.getElementsByTagName('label');
    for (let labelToChange of labels) {
        if(labelToChange.innerHTML.includes("Cpf")){
            let newString = labelToChange.innerHTML.replace('Cpf', 'CPF')
            labelToChange.innerHTML = newString
        }
        if(labelToChange.innerHTML.includes("Numero")){
            let newString = labelToChange.innerHTML.replace('Numero', 'Número')
            labelToChange.innerHTML = newString
        }
        if(labelToChange.innerHTML.includes("Cep")){
            let newString = labelToChange.innerHTML.replace('Cep', 'CEP')
            labelToChange.innerHTML = newString
        }
        if(labelToChange.innerHTML.includes("referencia")){
            let newString = labelToChange.innerHTML.replace('referencia', 'de referência')
            labelToChange.innerHTML = newString
        }
        if(labelToChange.innerHTML.includes("Salario")){
            let newString = labelToChange.innerHTML.replace('Salario', 'Salário')
            labelToChange.innerHTML = newString
        }
        if(labelToChange.innerHTML.includes("inss")){
            let newString = labelToChange.innerHTML.replace('inss', 'INSS')
            labelToChange.innerHTML = newString
        }
    }
}
function formatErrorMessage(){

    let errorMessage = document.getElementsByTagName('p');
    for (let message of errorMessage) {
        if(message.innerHTML.includes("can't be blank")){
            let newString = message.innerHTML.replace(/can't be blank/, 'não pode ficar em branco')
            message.innerHTML = newString
        }
    }
}