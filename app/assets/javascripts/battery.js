$(function () {

    $("select#battery_id").hide();

    if ($("select#building_id").val() == "") {
        $("select#battery_id option").empty();
        var row = "<option value=\"" + "" + "\">" + "Battery" + "</option>";
        $(row).appendTo("select#battery_id");
    }
    $("select#building_id").change(function () {
        console.log("Testing2")
        var id_value_string = $(this).val();
        if (id_value_string == "") {
            $("select#battery_id option").empty();
            var row = "<option value=\"" + "" + "\">" + "Battery" + "</option>";
            $(row).appendTo("select#battery_id");
        } else {
            $("select#battery_id").show();
            // Send the request and update battery dropdown
            $.ajax({
                dataType: "json",
                cache: false,
                url: '/battery_json/',
                data: {
                    "building_id": id_value_string
                },
                timeout: 5000,
                error: function (XMLHttpRequest, errorTextStatus, error) {
                    alert("Failed to submit : " + errorTextStatus + " ;" + error);
                },
                success: function (batteryList) {
                    console.log(batteryList)
                    // Clear all options from battery select
                    $("select#battery_id").empty();
                    //put in a empty default line
                    var row = "<option value=\"" + "" + "\">" + "Battery" + "</option>";
                    $(row).appendTo("select#battery_id");
                    // Fill battery select
                    batteryList.forEach(function (battery) { 
                        console.log("battery")
                        row = "<option value=\"" + battery.id + "\">" + battery.id + "</option>";
                        $(row).appendTo("select#battery_id");
                    });
                }
            });
        }
    });

});