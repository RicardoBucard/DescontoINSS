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
//= require toastr
//= require jquery.mask
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
        if(message.innerHTML.includes("is too short")){
            let newString = message.innerHTML.replace('is too short', 'está curto demais')
            message.innerHTML = newString
        }
        if(message.innerHTML.includes("is too long")){
            let newString = message.innerHTML.replace('is too longo', 'está longo demais')
            message.innerHTML = newString
        }
        if(message.innerHTML.includes("minimum is")){
            let newString = message.innerHTML.replace('minimum is', 'mínimo de')
            message.innerHTML = newString
        }
        if(message.innerHTML.includes("maximum is")){
            let newString = message.innerHTML.replace('maximum', 'máximo de')
            message.innerHTML = newString
        }
        if(message.innerHTML.includes("characters")){
            let newString = message.innerHTML.replace('characters', 'caracteres')
            message.innerHTML = newString
        }
        if(message.innerHTML.includes("is the wrong length")){
            let newString = message.innerHTML.replace('is the wrong length', 'não está com o tamanho adequado')
            message.innerHTML = newString
        }
        if(message.innerHTML.includes("should be")){
            let newString = message.innerHTML.replace('should be', 'deve ter')
            message.innerHTML = newString
        }
    }
}
toastr.options = {
    "closeButton": false,
    "debug": false,
    "newestOnTop": false,
    "progressBar": false,
    "positionClass": "toast-top-right",
    "preventDuplicates": false,
    "onclick": null,
    "showDuration": "300",
    "hideDuration": "1000",
    "timeOut": "5000",
    "extendedTimeOut": "1000",
    "showEasing": "swing",
    "hideEasing": "linear",
    "showMethod": "fadeIn",
    "hideMethod": "fadeOut"
}
function maskValues(){
    var maskBehavior = function (val) {
      return val.replace(/\D/g, '').length === 11 ? '(00)00000-0000' : '(00)0000-00009';
    },
    options = {onKeyPress: function(val, e, field, options) {
      field.mask(maskBehavior.apply({}, arguments), options, {removeMaskOnSubmit: true});
      }
    }
    $('#telefone-pessoal').mask(maskBehavior, options, {removeMaskOnSubmit: true});
    
    $('#telefone-referencia').mask(maskBehavior, options, {removeMaskOnSubmit: true});
    
    $('#cep').mask('00000-000');
    
    $('#cpf').mask('000.000.000-00', {reverse: true});
}