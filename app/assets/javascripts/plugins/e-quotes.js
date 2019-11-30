    document.getElementById("residential").style.display = "none";
    document.getElementById("commercial").style.display = "none";
    document.getElementById("corporate").style.display = "none";
    document.getElementById("hybrid").style.display = "none";
    document.getElementById('elev_recommandedQtyLabel').innerHTML = "0&nbsp unit";



// Display -- Building Types Selection --
function selected() 
{
var sel = document.getElementById("buildingType").value;
console.log(sel)
var nb_elevator;
    document.getElementById('elev_recommandedQty').innerHTML = nb_elevator;
    document.getElementById('elev_recommandedQtyLabel').innerHTML = "&nbsp unit &nbsp";


if (sel == "selectanoption")
{
    document.getElementById("residential").style.display = "none";
    document.getElementById("commercial").style.display = "none";
    document.getElementById("corporate").style.display = "none";
    document.getElementById("hybrid").style.display = "none";
    document.getElementById('elev_recommandedQty').innerHTML = 0;
    document.getElementById("cost_service").innerHTML = serviceCosts.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
    document.getElementById("cost_installFees").innerHTML = installFeesCost.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
    document.getElementById("cost_total").innerHTML = totalCost.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
}
if (sel == "residential")
{
    document.getElementById("residential").style.display = "block";
            document.getElementById("residential_numberOfApartments").value= "none";
            document.getElementById("residential_numberOfFloors").value = "none";
            document.getElementById("residential_numberOfBasements").value = "none";
    document.getElementById("commercial").style.display = "none";
    document.getElementById("corporate").style.display = "none";
    document.getElementById("hybrid").style.display = "none";
    document.getElementById('elev_recommandedQty').innerHTML = 0;
    document.getElementById("cost_service").innerHTML = serviceCosts.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
    document.getElementById("cost_installFees").innerHTML = installFeesCost.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
    document.getElementById("cost_total").innerHTML = totalCost.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
}
if (sel == "commercial")
{
    document.getElementById("residential").style.display = "none";
    document.getElementById("commercial").style.display = "block";
            document.getElementById("commercial_numberOfDistinctBusinesses").value = "none";
            document.getElementById("commercial_numberOfFloors").value = "none";
            document.getElementById("commercial_numberOfBasements").value = "none";
            document.getElementById("commercial_numberOfParkingSpacesAvailable").value = "none";
            document.getElementById("commercial_numberOfElevatorCagesToDeploy").value = "none";
    document.getElementById("corporate").style.display = "none";
    document.getElementById("hybrid").style.display = "none";
    document.getElementById('elev_recommandedQty').innerHTML = 0;
    document.getElementById("cost_service").innerHTML = serviceCosts.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
    document.getElementById("cost_installFees").innerHTML = installFeesCost.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
    document.getElementById("cost_total").innerHTML = totalCost.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
}
if (sel == "corporate")
{
    document.getElementById("residential").style.display = "none";
    document.getElementById("commercial").style.display = "none";
    document.getElementById("corporate").style.display = "block";
            document.getElementById("corporate_numberOfSeperateTenantCompanies").value= "none";
            document.getElementById("corporate_numberOfFloors").value= "none";
            document.getElementById("corporate_numberOfBasements").value= "none";
            document.getElementById("corporate_numberOfParkingSpacesAvailable").value= "none";
            document.getElementById("corporate_maximumNumberOfOccupantsPerFloor").value= "none";
    document.getElementById("hybrid").style.display = "none";
    document.getElementById('elev_recommandedQty').innerHTML = 0;
    document.getElementById("cost_service").innerHTML = serviceCosts.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
    document.getElementById("cost_installFees").innerHTML = installFeesCost.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
    document.getElementById("cost_total").innerHTML = totalCost.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
}
if (sel == "hybrid")
{
    document.getElementById("residential").style.display = "none";
    document.getElementById("commercial").style.display = "none";
    document.getElementById("corporate").style.display = "none";
    document.getElementById("hybrid").style.display = "block";
            document.getElementById("hybrid_numberOfSeperateTenantCompanies").value= "none";
            document.getElementById("hybrid_numberOfFloors").value= "none";
            document.getElementById("hybrid_numberOfBasements").value= "none";
            document.getElementById("hybrid_numberOfParkingSpacesAvailable").value= "none";
            document.getElementById("hybrid_maximumNumberOfOccupantsPerFloor").value= "none";
            document.getElementById("hybrid_dailyActivityHoursInTheBuilding").value= "none";
    document.getElementById('elev_recommandedQty').innerHTML = 0;
    document.getElementById("cost_service").innerHTML = serviceCosts.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
    document.getElementById("cost_installFees").innerHTML = installFeesCost.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
    document.getElementById("cost_total").innerHTML = totalCost.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
}
}



// -- isNaN -> Display 0 --
function updatedQty(quantity){
    if (isNaN(quantity)){
        document.getElementById("elev_recommandedQty").innerHTML = 0;
    }
}
function updatedServiceCosts(svcCost){
    if (isNaN(svcCost)){
        document.getElementById("cost_service").innerHTML = serviceCosts.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
    }
}
function updatedInstallCost(insCost){
    if (isNaN(insCost)){
        document.getElementById("cost_installFees").innerHTML = installFeesCost.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
        
    }
}
function updatedTotalCost(totCost){
    if (isNaN(totCost)){
        document.getElementById("cost_total").innerHTML = totalCost.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
    }
}



// -- Service Ranges Selection and Calculation --

function selection()
{
    
    var nb_elev = parseInt(document.getElementById('elev_recommandedQty').innerHTML);
    console.log('cage', nb_elev);
    var nb_cage = nb_elev;

    const standard_serviceRate = 7565.00; // $CAN
    const premium_serviceRate = 12345.00; // $CAN
    const excelium_serviceRate = 15400.00; // $CAN
  
    const standard_installFeesRate = 0.10; // %
    const premium_installFeesRate = 0.13; // %
    const excelium_installFeesRate = 0.16; // %

    var serviceCosts;
    var installFeesCost;
    var totalCost;
    

    var range_value = document.querySelector('input[name="range"]:checked').value;
    console.log('range', range_value);
    

        if (range_value === "Standard")
        {
            serviceCosts = standard_serviceRate*nb_cage;
            installFeesCost = serviceCosts*standard_installFeesRate;
            totalCost = serviceCosts+installFeesCost;
            document.getElementById("cost_service").innerHTML = serviceCosts.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
            document.getElementById("cost_installFees").innerHTML = installFeesCost.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
            document.getElementById("cost_total").innerHTML = totalCost.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
            
        }
        else if (range_value === "Premium")
        {
            serviceCosts = premium_serviceRate*nb_cage;
            installFeesCost = serviceCosts*premium_installFeesRate;
            totalCost = serviceCosts+installFeesCost;
            document.getElementById("cost_service").innerHTML = serviceCosts.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
            document.getElementById("cost_installFees").innerHTML = installFeesCost.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
            document.getElementById("cost_total").innerHTML = totalCost.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
        }
            else if (range_value === "Excelium")
        {
            serviceCosts = excelium_serviceRate*nb_cage;
            installFeesCost = serviceCosts*excelium_installFeesRate;
            totalCost = serviceCosts+installFeesCost;
            document.getElementById("cost_service").innerHTML = serviceCosts.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
            document.getElementById("cost_installFees").innerHTML = installFeesCost.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
            document.getElementById("cost_total").innerHTML = totalCost.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
        }
        else 
        {
            document.getElementById("cost_service").innerHTML = serviceCosts.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
            document.getElementById("cost_installFees").innerHTML = installFeesCost.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
            document.getElementById("cost_total").innerHTML = totalCost.toLocaleString(undefined, {minimumFractionDigits: 2, maximumFractionDigits: 2}) + " $";
        }
}



// -- Residential Calculation --
function residential()
{
    var nb_appart = parseInt(document.getElementById("residential_numberOfApartments").value);
    var nb_floor = parseInt(document.getElementById("residential_numberOfFloors").value);
    //var nb_basement = parseInt(document.getElementById("residential_numberOfBasements").value);
    
    var avg_apartPerFloor = (nb_appart/nb_floor);
    var nb_cage = Math.ceil(avg_apartPerFloor/6);
    var nb_column = Math.ceil(avg_apartPerFloor/20);
    var nb_elevator = nb_cage*nb_column;

    console.log("nb_elevator residential", nb_elevator);

        if (nb_floor < 2){
            nb_elevator = 0;
        }

        document.getElementById('elev_recommandedQty').innerHTML = nb_elevator;

        if (nb_elevator > 1){
            document.getElementById('elev_recommandedQtyLabel').innerHTML = "&nbsp units";
        } else {
            document.getElementById('elev_recommandedQtyLabel').innerHTML = "&nbsp unit &nbsp";
        }

        


    quantity = nb_elevator;
    console.log("quantity", quantity);
    updatedQty(quantity);

    }

// -- Commercial Calculation --
function commercial(){
    

    // var nb_business = parseInt(document.getElementById("commercial_numberOfDistinctBusinesses").value);
    //var nb_floor = parseInt(document.getElementById("commercial_numberOfFloors").value);
    // var nb_basement = parseInt(document.getElementById("commercial_numberOfBasements").value);
    // var nb_parkingSpace = parseInt(document.getElementById("commercial_numberOfParkingSpacesAvailable").value);
    var nb_cage = parseInt(document.getElementById("commercial_numberOfElevatorCagesToDeploy").value);
    
    var nb_elevator = nb_cage;


            document.getElementById('elev_recommandedQty').innerHTML = nb_elevator;
        if (nb_elevator > 1){
            document.getElementById('elev_recommandedQtyLabel').innerHTML = "&nbsp units";
        } else {
            document.getElementById('elev_recommandedQtyLabel').innerHTML = "&nbsp unit &nbsp";
        }


    quantity = nb_elevator;
    console.log("quantity", quantity);
    updatedQty(quantity);
}



// -- Corporate Calculation --
function corporate(){
    

    //var nb_business = parseInt(document.getElementById("corporate_numberOfSeperateTenantCompanies").value);
    var nb_floor = parseInt(document.getElementById("corporate_numberOfFloors").value);
    var nb_basement = parseInt(document.getElementById("corporate_numberOfBasements").value);
    //var nb_parkingSpace = parseInt(document.getElementById("corporate_numberOfParkingSpacesAvailable").value);
    var maxNb_occupantsPerFloor = parseInt(document.getElementById("corporate_maximumNumberOfOccupantsPerFloor").value);

    var totalNb_floor = nb_floor + nb_basement
    var maxNb_occupantsTotal = maxNb_occupantsPerFloor * totalNb_floor;
    var nb_cage = Math.ceil(maxNb_occupantsTotal / 1000);
    //var nb_column = Math.ceil(totalNb_floor / 20);
    var nb_elevator;

        if (totalNb_floor > 1){
            nb_elevator = nb_cage;
        } else {
            nb_elevator = 0;
        }


        document.getElementById('elev_recommandedQty').innerHTML = nb_elevator;
        if (nb_elevator > 1){
            document.getElementById('elev_recommandedQtyLabel').innerHTML = "&nbsp units";
        } else {
            document.getElementById('elev_recommandedQtyLabel').innerHTML = "&nbsp unit &nbsp";
        }
 
    
    quantity = nb_elevator
    console.log("quantity", quantity);
    updatedQty(quantity);
}



// -- Hybrid Calculation --
function hybrid(){
    
    
    //var nb_business = parseInt(document.getElementById("hybrid_numberOfSeperateTenantCompanies").value);
    var nb_floor = parseInt(document.getElementById("hybrid_numberOfFloors").value);
    var nb_basement = parseInt(document.getElementById("hybrid_numberOfBasements").value);
    //var nb_parkingSpace = parseInt(document.getElementById("hybrid_numberOfParkingSpacesAvailable").value);
    var maxNb_occupantsPerFloor = parseInt(document.getElementById("hybrid_maximumNumberOfOccupantsPerFloor").value);
    //var nb_dailyActHours = parseInt(document.getElementById("hybrid_dailyActivityHoursInTheBuilding").value);

    var totalNb_floor = nb_floor + nb_basement
    var maxNb_occupantsTotal = maxNb_occupantsPerFloor * totalNb_floor;
    var nb_cage = Math.ceil(maxNb_occupantsTotal / 1000);
    //var nb_column = Math.ceil(totalNb_floor / 20);
    var nb_elevator;

        if (totalNb_floor > 1){
            nb_elevator = nb_cage;
        } else {
            nb_elevator = 0;
        }


        document.getElementById('elev_recommandedQty').innerHTML = nb_elevator;
        if (nb_elevator > 1){
            document.getElementById('elev_recommandedQtyLabel').innerHTML = "&nbsp units";
        } else {
            document.getElementById('elev_recommandedQtyLabel').innerHTML = "&nbsp unit &nbsp";
        }
 

    quantity = nb_elevator
    console.log("quantity", quantity);
    updatedQty(quantity);
}
    
