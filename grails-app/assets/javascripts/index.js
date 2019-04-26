
function getPaymentMethods(site_id){

    var URL = "https://api.mercadolibre.com/sites/" + site_id + "/payment_methods";

    $.ajax({
        url: URL,
        type: 'GET',
        data: {},
        success: function(response){

            $('#payment_select').text("");
            $('#payment_select').append($('<option>', {
                value: "-1",
                text : "Seleccione el método de pago"
            }));
            $('#payment_select').removeAttr("disabled")
            $.each(response, function (i, item) {
                $('#payment_select').append($('<option>', {
                    value: item.id,
                    text : item.name
                }));
            });
        }
    });
}


function getAgencies(){

    var site = $("#site_select").val()
    var pm = $("#payment_select").val()
    var URL = "http://localhost:4567/agencias/?site=" + site + "&payment_method=" + pm;

    $('#agencies_list').text("")

    $.ajax({
        url: URL,
        type: 'GET',
        data: {},
        success: function(response){
            $.each(response.data, function (i, item) {
                $item = $('<a>', {
                    id: item.agency_code,
                    text: item.description,
                    class:  "list-group-item",
                    href: "#"
                });
                $item.append($('<i>', {
                    style: "font-size:32px; margin-left: 10px",
                    class: "fa fa-thumbs-down pull-right",
                    onclick: "dislike(this.parentNode.id)"
                }));
                $item.append($('<i>', {
                    style: "font-size:32px;",
                    class: "fa fa-thumbs-up pull-right",
                    onclick: "like(this.parentNode.id)"
                }));
                $('#agencies_list').append($item);
            });
        }
    });
}

function like(id) {
    console.log(id);
}


function dislike(id) {
    console.log(id);
}