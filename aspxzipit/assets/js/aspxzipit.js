$().ready(function () {
    $('#dialogContent').dialog({
        autoOpen: true,
        modal: true,
        bgiframe: true,
        title: "Confirm Action : ",
        width: 280,
        height: 170
    });
});

function confirmAction(uniqueID) {

    $('#dialogContent').dialog('option', 'buttons',
        {
            "OK": function () { __doPostBack(uniqueID, ''); $(this).dialog("close"); },
            "Cancel": function () { $(this).dialog("close"); }
        });

    $('#dialogContent').dialog('open');

    return false;
}

function rdfHide(obj) {
    document.getElementById(obj).style.display = 'none';
}

function rdfShow(obj) {
    document.getElementById(obj).style.display = 'block';
}