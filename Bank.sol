// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bank{

mapping (address=> uint) private balances;


//deposit
function deposit() public payable{
    require(msg.value>0,"Enter Ether: ");
    balances[msg.sender]+=msg.value;
}
// withdraw
function withdraw(uint amount) public{
    require(amount>0," Insert Valid Amount: ");
    require(balances[msg.sender]>amount, "Insufficent balance");
payable(msg.sender).transfer(amount);
balances[msg.sender]-=amount;
}


//get Balance
function getBalance() public view  returns(uint){
return balances[msg.sender];

}




}