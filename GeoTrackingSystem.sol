pragma solidity ^0.6.0;

contract GeoTracking {
    struct LocationStamp {
        uint256 lat;
        uint256 long;
        uint256 dateTime;
    }
    
    mapping (address => LocationStamp[]) public userLocations;
    
    function track(uint256 lat, uint256 long) public {
        LocationStamp memory currentLoc;
        currentLoc.lat = lat;
        currentLoc.long = long;
        currentLoc.dateTime = block.timestamp;
        userLocations[msg.sender].push(currentLoc);
    }
}
