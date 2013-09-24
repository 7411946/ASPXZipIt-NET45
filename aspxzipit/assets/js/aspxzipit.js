$().ready(function () {
    $('#dialogContent').dialog({
        autoOpen: false,
        modal: true,
        bgiframe: true,
        title: "Confirm Action : ",
        width: 280,
        height: 170
    });
});

function confirmAction(uniqueID, uniqueText) {
    $('#dialogContent').html(uniqueText);
    $('#dialogContent').dialog('option', 'buttons',
        {
            "OK": function () { __doPostBack(uniqueID, ''); $(this).dialog("close"); },
            "Cancel": function () { $(this).dialog("close"); }
        });

    $('#dialogContent').dialog('open');

    return false;
}

function ShowPopup(message) {
    $(function () {
        $("#dialog").html(message);
        $("#dialog").dialog({
            title: "Update ASPX Zipit Now!!",
            buttons: {
                Close: function () {
                    $(this).dialog('close');
                }
            },
            modal: true
        });
    });
};

function rdfHide(obj) {
    document.getElementById(obj).style.display = 'none';
}

function rdfShow(obj) {
    document.getElementById(obj).style.display = 'block';
}