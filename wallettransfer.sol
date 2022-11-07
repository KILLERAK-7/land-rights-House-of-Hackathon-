pragma solidity 0.8.7;	
// Creating a contract
contract Walletbalance
{
	uint256 amt;
    
    function amtcheck(uint256 _amtt) public{
        amt=_amtt;//amount supposed to be recieved
    }
    // Private state variable
	address private owner;

	// Defining a constructor
	constructor() public{
		owner=msg.sender;
	}

	// Function to get
	// address of owner
	function GetOwner(
	) public view returns (address) {	
		return owner;
	}

    uint256 oldbal=owner.balance;

	// Function to return
	// current balance of owner
	function GetBalance(
	) public view returns(uint256){
        return owner.balance;
	}
    
    uint256 bal=owner.balance;

    function Balcheck() public view returns(string memory){
        if ((amt+oldbal)==bal){
            string memory text = "Successful"; 
            return text; 
        }  
        
    }
}

