// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.24;

contract Customer{

  struct customerProfile{
      string name;
      uint256 customerID;
      address customerAddress;
  }

  mapping(address => customerProfile) public customerMapping;

  event newCustomer(string name, address indexed customerAddress, uint indexed id);

  function createCustomerProfile(string memory _name, address _customerAddress, uint256 _customerID) external {
    customerMapping[msg.sender] = customerProfile({
        customerAddress : _customerAddress,
        customerID : _customerID,
        name : _name
    });

    
    emit newCustomer (_name, _customerAddress, _customerID);
  }
     
}