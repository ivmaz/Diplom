$(function() {
  $("#film_person_tokens").tokenInput("/people.json", {
    crossDomain: false,
    prePopulate: $("#film_person_tokens").data("pre"),
    theme: 'facebook',
    hintText: 'Введите имя актера',
    noResultsText: 'Не найдено',
    searchingText: "Поиск..."
  });
});

$(function() {
  $("#film_genre_tokens").tokenInput("/genres.json", {
    crossDomain: false,
    prePopulate: $("#film_genre_tokens").data("pre"),
    theme: 'facebook',
    hintText: 'Введите жанр',
    noResultsText: 'Не найдено',
    searchingText: "Поиск..."
  });
});


$(function() {
  $("#film_country_tokens").tokenInput("/countries.json", {
    crossDomain: false,
    prePopulate: $("#film_country_tokens").data("pre"),
    theme: 'facebook',
    hintText: 'Введите страну',
    noResultsText: 'Не найдено',
    searchingText: "Поиск..."
  });
});


function remove_fields(link) {
  $(link).prev("input[type=hidden]").val("1");
  $(link).closest(".fields").hide();
}

$.fn.tokenload = function() {
  $(this).tokenInput("/people.json", {
           crossDomain: false,
               prePopulate: $("#person_tokens").data("pre"),
               theme: 'facebook',
               hintText: 'Введите персону',
               noResultsText: 'Не найдено',
           searchingText: "Поиск...",
               tokenLimit: "1"
     });
}
/*
function tokenLoad(arg){
    $(arg).tokenInput("/people.json", {
           crossDomain: false,
               prePopulate: $("#person_tokens").data("pre"),
               theme: 'facebook',
               hintText: 'Введите персону',
               noResultsText: 'Не найдено',
               searchingText: "Поиск..."
     });    
}
*/
function add_fields(link, association, content) {
  var new_id = new Date().getTime(); 
  var regexp = new RegExp("new_" + association, "g");
  var text=content.replace(regexp, new_id);
  var input_id=$(text).find("input.contract_person_tokens:first").attr("id");
  $(link).parent().before(text);  
  $("#"+input_id).tokenload();  
}



$(function() {
        $(".contract_person_tokens").tokenload();        
});

