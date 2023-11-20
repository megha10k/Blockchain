// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Student_DATABASE{

struct Student{
    uint roll;
    string name;
    uint age;
}

//fallback
event EtherRecieved(address indexed sender,uint value);
constructor() payable{

}
receive() external payable {

emit EtherRecieved(msg.sender,msg.value);


 }

Student[] private   students;
// add student
function addStu(uint _roll,string memory _name,uint _age) public {
    Student memory newStudent=Student(
{
    roll: _roll,
    name: _name,
    age: _age
}

    );

    students.push(newStudent);
}


function getStCount() public view returns(uint) {
return students.length;
}

function getStudent(uint index) public view returns(uint ,string memory,uint){
    require((index>=0),"Index Out of Bounds");
    Student memory st=students[index];
    return (st.roll,st.name,st.age);
}
}