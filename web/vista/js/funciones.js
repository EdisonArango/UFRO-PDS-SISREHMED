/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function() {
//    setTimeout(function() {
//        $(".mensaje").fadeOut(1500);
//    },2000);
//    
//    
//        $('#busqueda').keyup(function() {
//            var $rows = $('.tablacancion');
//            var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();
//            
//            $rows.show().filter(function() {
//                var text = $(this).text().replace(/\s+/g, ' ').toLowerCase();
//                return !~text.indexOf(val);
//            }).hide();
//    });
//
//    $("#contenido").load("CancionesServlet?type=pagina");
    
    //Datepicker
    $('.input-group.date').datepicker({
                        format: "dd/mm/yyyy",
                        startDate: "today",
                        endDate: "+100d",
                        orientation: "top auto",
                        autoclose: true,
                        todayBtn: "linked",
                        language: "es"
    });
    
    //TypeAhead
      var substringMatcher = function(strs) {
        return function findMatches(q, cb) {
        var matches, substringRegex;

        // an array that will be populated with substring matches
        matches = [];

        // regex used to determine if a string contains the substring `q`
        substrRegex = new RegExp(q, 'i');

        // iterate through the pool of strings and for any string that
        // contains the substring `q`, add it to the `matches` array
        $.each(strs, function(i, str) {
          if (substrRegex.test(str)) {
            matches.push(str);
          }
        });

        cb(matches);
      };
    };

    var states = ['Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California',
      'Colorado', 'Connecticut', 'Delaware', 'Florida', 'Georgia', 'Hawaii',
      'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana',
      'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota',
      'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire',
      'New Jersey', 'New Mexico', 'New York', 'North Carolina', 'North Dakota',
      'Ohio', 'Oklahoma', 'Oregon', 'Pennsylvania', 'Rhode Island',
      'South Carolina', 'South Dakota', 'Tennessee', 'Texas', 'Utah', 'Vermont',
      'Virginia', 'Washington', 'West Virginia', 'Wisconsin', 'Wyoming'
    ];

    $('#inputmedico .typeahead').typeahead({
      hint: true,
      highlight: true,
      minLength: 1
    },
    {
      name: 'states',
      source: substringMatcher(states)
    });
    
    $('#inputmedico .typeahead').typeahead('open');
    
});

    



//function agregarPlayList (){
//    var insert = "<form class='form-inline' method='post' action='PlayListServlet' >\n\
//                   <div class='form-group'> <b>Nombre: </b><input type='text' class='form-control' name='nombre'>\n\
//    <input type='hidden' name='type' value='nuevo'>\n\
//        <input type='submit' class='form-control' value='Crear'> </div>\n\
//<form>";
//    document.getElementById("agregarPlayList").innerHTML = insert;
//}
//
//function cargarPlayList (url){
//    $("#contenido").load(url);
//}
///**
// * Comment
// */
//function eliminarUsuario(usuario) {
//    if (confirm("Estas seguro que deseas eliminar al usuario: "+usuario) == true) {
//        document.getElementById("frame").src = window.location.protocol + "//" +window.location.host + "/Login-MVC-JSP/Modificar?usuario="+usuario+"&tipomodificacion=eliminar";
//    } else {
//        return;
//    }
//}

