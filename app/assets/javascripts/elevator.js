$(function () {

    $("select#elevator_id").hide();

    if ($("intervention_column_id").val() == "") {
        $("select#elevator_id option").empty();
        var row = "<option value=\"" + "" + "\">" + "Elevator" + "</option>";
        $(row).appendTo("select#elevator_id");
    }
    $("select#column_id").change(function () {
        console.log("Testing4")
        var id_value_string = $(this).val();
        console.log("id value", id_value_string);
        if (id_value_string == "") {
            $("select#elevator_id option").empty();
            var row = "<option value=\"" + "" + "\">" + "Elevator" + "</option>";
            $(row).appendTo("select#elevator_id");
        } else {
            $("select#elevator_id").show();
            // Send the request and update elevator dropdown
            $.ajax({
                dataType: "json",
                cache: false,
                url: '/elevator_json/',
                data: {
                    "column_id": id_value_string
                },
                timeout: 5000,
                error: function (XMLHttpRequest, errorTextStatus, error) {
                    alert("Failed to submit : " + errorTextStatus + " ;" + error);
                },
                success: function (elevatorList) {
                    console.log(elevatorList)
                    // Clear all options from elevator select
                    $("select#elevator_id").empty();
                    //put in a empty default line
                    var row = "<option value=\"" + "" + "\">" + "Elevator" + "</option>";
                    $(row).appendTo("select#elevator_id");
                    // Fill elevator select
                    elevatorList.forEach(function (elevator) {
                        console.log("elevator")
                        row = "<option value=\"" + elevator.id + "\">" + elevator.id + "</option>";
                        $(row).appendTo("select#elevator_id");
                    });
                }
            });
        }
    });

});