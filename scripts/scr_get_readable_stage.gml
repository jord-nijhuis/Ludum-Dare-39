var _stage = argument0;

switch(_stage)
{
    case "election":
        return "Election";
    
    case "election_day":
        return "Election day";
        
    case "president_elect":
        return "Pres-elect";
        
    case "president":
        return "President";
    
    case "retired":
        return "Retired";
    
    default:
        return "Unknown stage " + _stage; 
}
