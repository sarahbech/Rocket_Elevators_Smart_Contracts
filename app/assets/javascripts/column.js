$(function () {

    $("select#column_id").hide();

    if ($("select#battery_id").val() == "") {
        $("select#column_id option").empty();
        var row = "<option value=\"" + "" + "\">" + "Column" + "</option>";
        $(row).appendTo("select#column_id");
    }
    $("select#battery_id").change(function () {
        console.log("Testing3")
        var id_value_string = $(this).val();
        if (id_value_string == "") {
            $("select#column_id option").empty();
            var row = "<option value=\"" + "" + "\">" + "Column" + "</option>";
            $(row).appendTo("select#column_id");
        } else {
            $("select#column_id").show();
            // Send the request and update column dropdown
            $.ajax({
                dataType: "json",
                cache: false,
                url: '/column_json/',
                data: {
                    "battery_id": id_value_string
                },
                timeout: 5000,
                error: function (XMLHttpRequest, errorTextStatus, error) {
                    alert("Failed to submit : " + errorTextStatus + " ;" + error);
                },
                success: function (columnList) {
                    console.log(columnList)
                    // Clear all options from column select
                    $("select#column_id").empty();
                    //put in a empty default line
                    var row = "<option value=\"" + "" + "\">" + "Column" + "</option>";
                    $(row).appendTo("select#column_id");
                    // Fill column select
                    columnList.forEach(function (column) { 
                        console.log("column")
                        row = "<option value=\"" + column.id + "\">" + column.id + "</option>";
                        $(row).appendTo("select#column_id");
                    });
                }
            });
        }
    });

});