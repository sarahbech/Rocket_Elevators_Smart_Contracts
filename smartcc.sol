pragma solidity >=0.4.22 <0.6.0;

contract project{
    
    struct Component{
        uint batteries;
        uint columns;
        uint cages;
        uint doors;
        uint buttons;
        uint displayPanels;
        uint cables;
        uint engines;
        uint extinguishers;
        uint lights;
        uint champagneFountain;
        uint controlpanels;
        bool completed;
        string range;
    }
    
        
    mapping (uint=>Component) public components;
    
    
    function newOrder(uint id, uint floorNumber, uint batteryNumber, uint columnNumberPerBattery, uint elevatorNumberPerColumn, string memory choice) public {
       
        uint columnNumber = batteryNumber*columnNumberPerBattery;
        uint elevatorNumber = batteryNumber*columnNumberPerBattery*elevatorNumberPerColumn;
        Component storage component = components[id];
        component.batteries = batteryNumber;
        component.columns = columnNumber;
        component.cages = elevatorNumber;
        component.doors = elevatorNumber*floorNumber + elevatorNumber;
        component.buttons = elevatorNumber*floorNumber + elevatorNumber*2 + (floorNumber*2 -2)*columnNumber;
        component.displayPanels = elevatorNumber + (floorNumber*columnNumber);
        component.cables = elevatorNumber*2;
        component.engines = elevatorNumber;
        component.extinguishers = elevatorNumber;
        component.lights = elevatorNumber;
        component.champagneFountain = columnNumber;
        component.controlpanels = elevatorNumber;
        component.completed = true;
        component.range = choice;
        
    } 
    
    
    
}

