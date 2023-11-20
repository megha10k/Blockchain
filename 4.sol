// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Student_Database {
    struct Student {
        uint roll;
        string name;
        uint age;
    }

    Student[] private students;  // This array will store the student data.

    function addStu(uint _roll, string memory _name, uint _age) public {
        Student memory ns = Student({
            roll: _roll,
            name: _name,
            age: _age
        });

        students.push(ns);  // This function adds a new student to the array.
    }

    function getC() public view returns (uint) {
        return students.length;  // This function returns the total number of students in the database.
    }

    function getStudent(uint index) public view returns (uint, string memory, uint) {
        require(index >= 0, "Enter valid Index: ");  // Ensure a valid index is provided.
        Student memory st = students[index];
        return (st.roll, st.name, st.age);  // This function returns the data for a specific student by index.
    }

    event EtherReceived(address indexed sender, uint value);

    constructor() payable {
        // This constructor allows the contract to receive Ether.
    }

    receive() external payable {
        emit EtherReceived(msg.sender, msg.value);  // This function emits an event when Ether is received by the contract.
    }
}

/*
The contract defines a structure called Student to represent student data. It includes fields for the student's roll number, name, and age.

The students array is a private array of Student structures. It is used to store the student data. The private keyword restricts external access to this array.

The addStu function allows users to add a new student to the database. It takes the student's roll number, name, and age as input and creates a new Student structure, which is then added to the students array.

The getC function returns the total number of students in the database by returning the length of the students array.

The getStudent function allows users to retrieve student data by providing an index. It first checks that the provided index is valid and then returns the roll number, name, and age of the student at that index.

The EtherReceived event is used to log information when the contract receives Ether. It includes the sender's address and the amount of Ether received.

The constructor is marked as payable, which means that the contract can receive Ether when deployed.

The receive function is an Ethereum receive function that allows the contract to receive Ether. When Ether is received, it emits the EtherReceived event with the sender's address and the received value.

To deploy this smart contract to the Ethereum network and observe the transaction fee and gas values, you can use Ethereum development tools or platforms like Remix, Truffle, or Hardhat. The transaction fee and gas values will depend on the network conditions and the complexity of the contract's operations.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

When you interact with an Ethereum smart contract, you may incur transaction fees, and these fees are measured in gas. Let's clarify what transaction fees and gas are in the context of Ethereum:

Gas: Gas is a unit of computation that measures the computational work performed by the Ethereum network. In Ethereum, every operation, including contract deployment, function calls, and data storage, consumes a specific amount of gas. The gas cost of a transaction depends on the complexity and resource requirements of the executed operations.

Transaction Fee: A transaction fee is the cost in Ether (ETH) associated with a transaction. It's calculated based on the amount of gas consumed by the transaction and the current gas price. The total transaction fee is equal to (gas used) x (gas price), where:

Gas Used: The amount of gas consumed by the transaction.
Gas Price: The price per unit of gas, typically denominated in Gwei (a subunit of ETH). It's the price users are willing to pay for each unit of gas. Miners prioritize transactions with higher gas prices because it increases their earnings.
When you deploy a smart contract or interact with a contract by calling its functions, you'll pay transaction fees in the form of gas. These fees are necessary to compensate miners for executing your transaction and including it in the blockchain.

 */


 /*
 In Ethereum smart contracts, the fallback function is a special function that is executed when a contract receives Ether without any specific function call. It's like a catch-all function for receiving Ether and performing actions when someone sends Ether directly to the contract's address. The fallback function is not explicitly named but is simply the unnamed function in a contract.

In your code, the fallback functionality is achieved as follows:
 
The constructor is marked as payable. While this is not strictly a fallback function, it serves a similar purpose. This constructor is executed only once during contract deployment, and it is given a payable modifier to allow the contract to receive Ether during deployment. In this case, the constructor is used to initialize the contract and make it able to receive Ether right from the start.

The receive function is explicitly defined as an external payable function. It is the modern way of implementing a fallback function since the Solidity version 0.6.0. The external keyword indicates that it can be called from outside the contract, and payable allows it to receive Ether.

Inside the receive function, an event named EtherReceived is emitted. This event logs information when the contract receives Ether, including the sender's address and the amount of Ether received. This allows anyone monitoring the blockchain to see when and how much Ether the contract has received.

So, while the receive function is not explicitly named as a fallback function, it serves the same purpose, which is to handle and log incoming Ether transactions. This design enables the contract to interact with anyone sending Ether directly to its address and to perform specific actions or logging when that happens.
 
  */
