// SPDX-License-Identifier:MIT

pragma solidity 0.8.0;

contract SimpleStorage{

    //boolean,uint,int,address,bytes
        uint256  favouriteNumber;
      

 


    struct People{
        uint favouriteNumber;
        string name;

    }

    People[] public people;

    function store(uint256 _favouriteNumber) public{
        favouriteNumber = _favouriteNumber;
        favouriteNumber = favouriteNumber + 1;
        retrieve();
    }

   
//view = just reading
//public = pure



function retrieve() public view returns(uint256){
    return favouriteNumber;
}

function addPerson(string memory _name,uint256 _favouriteNumber) public {
    People memory newPerson = People({favouriteNumber:_favouriteNumber,name:_name});
    people.push(People(_favouriteNumber,_name));
    people.push(newPerson);
}

}



