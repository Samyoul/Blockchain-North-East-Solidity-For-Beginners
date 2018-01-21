pragma solidity ^0.4.18;

contract BlockchainNorthEast {
    
    mapping(address => bool) organisers;
    mapping(address => bool) attendees;
    uint128 attendeeCount;
    
    function BlockchainNorthEast() public
    {
        organisers[msg.sender] = true;
        attendees[msg.sender] = true;
        attendeeCount++;
    }
    
    modifier onlyBy()
    {
        require(organisers[msg.sender]);
        _;
    }
    
    modifier onlyByAttendee(address _attendee)
    {
        require(_attendee == msg.sender);
        _;
    }
    
    function getAttendeeCount() public view returns (uint128)
    {
        return attendeeCount;
    }
    
    function isAttendee(address _address) public view returns (bool)
    {
        return attendees[_address];
    }
    
    function addAttendee(address _attendee) public onlyByAttendee(_attendee)
    {
        if(!attendees[_attendee]){
            attendees[_attendee] = true;
            attendeeCount++;
        }
    }
    
    function removeAttendee(address _attendee) public onlyByAttendee(_attendee)
    {
        if(attendees[_attendee]){
            delete attendees[_attendee];
            attendeeCount--;
        }
    }
    
    function isOrganiser(address _organiser) public view returns (bool)
    {
        return organisers[_organiser];
    }
    
    function addOrganiser(address _organiser) public onlyBy
    {
        organisers[_organiser] = true;
    }
    
    function removeOrganiser(address _organiser) public onlyBy
    {
        delete organisers[_organiser];
    }
}
