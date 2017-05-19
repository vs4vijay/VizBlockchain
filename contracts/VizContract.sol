pragma solidity ^0.4.4;

contract VizContract {
  string name = "Vizay";
  string remark;
  address creator;

  function VizContract() {
    creator = msg.sender;
  }

  modifier ifCreator {
    if(creator == msg.sender) {
      _;
    } else {
      throw;
    }
  }

  function getName() constant returns(string) {
    return name;
  }

  function setName(string name) {
    name = name;
  }

  function getRemark() constant returns(string) {
    return remark;
  }

  function setRemark(string name) ifCreator {
    name = remark;
  }

}
