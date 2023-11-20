// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bank {

    // This line defines a mapping that associates Ethereum addresses with their account balances.
    mapping (address => uint) private balances;

    // This function allows users to deposit Ether into their account. 
    function deposit() public payable {
        // The "require" statement ensures that the amount sent with the transaction is greater than zero.
        require(msg.value > 0, "Enter Ether: ");

        // Increase the balance of the sender's account with the amount sent in this transaction.
        balances[msg.sender] += msg.value;
    }

    // This function allows users to withdraw a specified amount of Ether from their account.
    function withdraw(uint amt) public {
        // Ensure the withdrawal amount is greater than zero.
        require(amt > 0, "Insert Valid Amount: ");

        // Check if the sender's account balance is sufficient for the requested withdrawal.
        require(balances[msg.sender] >= amt, "Insufficient Balance ");

        // Transfer the specified amount of Ether back to the sender's address.
        payable(msg.sender).transfer(amt);

        // Decrease the sender's account balance by the withdrawn amount.
        balances[msg.sender] -= amt;
    }

    // This function allows users to check their account balance.
    function getBalance() public view returns (uint) {
        // Return the balance associated with the sender's address.
        return balances[msg.sender];
    }
}

/*

The contract is named Bank, and it declares a mapping called balances that maps Ethereum addresses (account holders) to their account balances. It's marked as private, so the balances are not directly accessible from outside the contract.

The deposit function allows users to deposit Ether into their account. It checks if the amount sent with the transaction is greater than zero and then increases the balance associated with the sender's address by the deposited amount.

The withdraw function enables users to withdraw a specified amount of Ether from their account. It checks if the withdrawal amount is greater than zero and verifies if the sender has a sufficient balance. If these conditions are met, it transfers the requested amount to the sender's address and updates their account balance accordingly.

The getBalance function allows users to check their account balance. It doesn't modify the state of the contract but only retrieves and returns the balance associated with the sender's address. It's marked as view to indicate that it doesn't modify the blockchain state and is read-only.

Overall, this contract provides a basic banking functionality, allowing users to deposit, withdraw, and check their account balances on the Ethereum test network.
*/


/*
The information you provided appears to be related to a transaction on the Ethereum blockchain. Let me break down the key components:

From: 0x5B3...eddC4 - This is the Ethereum address (an account) that initiated the transaction.

To: Bank.deposit() 0x358...D5eE3 - This is the destination of the transaction. It indicates that the transaction is calling the deposit() function of a contract with the address 0x358...D5eE3. In other words, this transaction is interacting with the Bank smart contract by calling its deposit() function.

Value: 1500 wei - This represents the amount of Ether (cryptocurrency) sent with the transaction. In this case, 1500 wei is being sent to the deposit() function of the Bank contract.

Weidata: 0xd0e...30db0 - This is the data associated with the transaction, including any input parameters or function arguments passed to the deposit() function.

Logs: 0 - The "logs" field shows that there were no events emitted by the contract during this transaction. Events are a way for smart contracts to log information for external applications to listen to.

Hash: 0xf43...c1c4e - This is the unique identifier for the transaction, known as the transaction hash. It can be used to look up the transaction on the Ethereum blockchain explorer.

Status: 0x1 - This indicates that the transaction was successfully mined and executed. A status of 0x0 would typically indicate a failed transaction.

Block Hash: 0xe3f7d6fbf4a4f83bda033b66d93370b63639dd1da7196237463722a6b732cf6e - This is the hash of the block in which the transaction was included. It shows the location of the transaction in the Ethereum blockchain.

Block Number: This field appears to be empty in the information you provided, but it would typically indicate the block number in which the transaction was included.

Gas: This information is also missing in your data, but it usually indicates the amount of gas used for the transaction.

The transaction you posted is a record of an interaction with the Bank smart contract, specifically calling the deposit() function with a value of 1500 wei. The transaction was successfully executed and included in a block on the Ethereum blockchain. The transaction hash can be used to explore further details about this transaction on an Ethereum blockchain explorer.
 */

 /*The information you provided appears to be related to a transaction on the Ethereum blockchain. Let me break down the key components:

From: 0x5B3...eddC4 - This is the Ethereum address (an account) that initiated the transaction.

To: Bank.deposit() 0x358...D5eE3 - This is the destination of the transaction. It indicates that the transaction is calling the deposit() function of a contract with the address 0x358...D5eE3. In other words, this transaction is interacting with the Bank smart contract by calling its deposit() function.

Value: 1500 wei - This represents the amount of Ether (cryptocurrency) sent with the transaction. In this case, 1500 wei is being sent to the deposit() function of the Bank contract.

Weidata: 0xd0e...30db0 - This is the data associated with the transaction, including any input parameters or function arguments passed to the deposit() function.

Logs: 0 - The "logs" field shows that there were no events emitted by the contract during this transaction. Events are a way for smart contracts to log information for external applications to listen to.

Hash: 0xf43...c1c4e - This is the unique identifier for the transaction, known as the transaction hash. It can be used to look up the transaction on the Ethereum blockchain explorer.

Status: 0x1 - This indicates that the transaction was successfully mined and executed. A status of 0x0 would typically indicate a failed transaction.

Block Hash: 0xe3f7d6fbf4a4f83bda033b66d93370b63639dd1da7196237463722a6b732cf6e - This is the hash of the block in which the transaction was included. It shows the location of the transaction in the Ethereum blockchain.

Block Number: This field appears to be empty in the information you provided, but it would typically indicate the block number in which the transaction was included.

Gas: This information is also missing in your data, but it usually indicates the amount of gas used for the transaction.

The transaction you posted is a record of an interaction with the Bank smart contract, specifically calling the deposit() function with a value of 1500 wei. The transaction was successfully executed and included in a block on the Ethereum blockchain. The transaction hash can be used to explore further details about this transaction on an Ethereum blockchain explorer. */


