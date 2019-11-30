$(function () {

    $("select#building_id").hide();
    
        if ($("select#customer_id").val() == "") {
        $("select#building_id option").empty();
        var row = "<option value=\"" + "" + "\">" + "Building" + "</option>";
        $(row).appendTo("select#building_id");
    }
    $("select#customer_id").change(function () {
        console.log("Test")
        var id_value_string = $(this).val();
        if (id_value_string == "") {
           $("select#building_id option").empty();
            var row = "<option value=\"" + "" + "\">" + "Building" + "</option>";
            $(row).appendTo("select#building_id");
        } else {
            $("select#building_id").show();
            // Send the request and update building dropdown
            $.ajax({
                dataType: "json",
                cache: false,
                url: '/building_json/',
                data: {
                    "customer_id": id_value_string
                },
                timeout: 5000,
                error: function (XMLHttpRequest, errorTextStatus, error) {
                    alert("Failed to submit : " + errorTextStatus + " ;" + error);
                },
                success: function (buildingList) {
                    console.log(buildingList)
                    // Clear all options from building select
                    $("select#building_id").empty();
                    //put in a empty default line
                    var row = "<option value=\"" + "" + "\">" + "Building" + "</option>";
                    $(row).appendTo("select#building_id");
                    // Fill building select
                    buildingList.forEach(function (building) {
                        console.log(building.id)
                        row = "<option value=\"" + building.id + "\">" + building.id+ " " + building.fullNameAdmin + "</option>";
                        $(row).appendTo("select#building_id");
                    });
                }
            });
        }
    });

});