// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;
contract votersystem{

    struct Buyer{
        string name;
        string add;
    }

    struct Seller{
        uint256 vote;
        bool voted;
        bool authorized;
    }

    address public owner;
    string public propertyName;

    mapping(address => Seller) public sellers;                                                                    
    Buyer[] public buyers;

    modifier ownerOnly(){
        require(msg.sender==owner);
        _;
    }

    function Property(string memory _name) public{
        owner = msg.sender;
        propertyName=_name;
    }

    function AddBuyer(string memory _name,string memory _addr) ownerOnly public{
        buyers.push(Buyer(_name,_addr));
    }

    function TotalBuyers() public view returns(uint256){
        return buyers.length;
    }

    function seller_address(address _person)  ownerOnly public{
        sellers[_person].authorized = true;
    }

    function Transfer(uint256 _voteIndex) public {

        sellers[msg.sender].vote = _voteIndex;
        sellers[msg.sender].voted = true;
    }

    //  function end() ownerOnly public{
    //     selfdestruct(owner);
    //  }

}