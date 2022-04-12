pragma solidity ^0.5.0;
contract A 
{
    function odd_even() public view returns(string memory)
    {
        int a=7;
        string memory result;
        if(a%2==0)
        {
            result = 'even';
        }
        else
        {
            result = 'odd';
        }
        return result;
    }

    function add() public view returns(int)
    {
        int x=9;
        int y=6;
        int z=x+y;
        return z;
    }
}

contract B 
{
    address addressA;
    
    function setaddress(address addressA_) public      // pass address of contrcat deploying address.
    {
        addressA = addressA_;
    }

    function callAdd() public view returns(int)
    {
        A a=A(addressA);
        return a.add();
    }

    function calleven() public view returns(string memory)
    {
        A b=A(addressA);
        return b.odd_even();
    }
}