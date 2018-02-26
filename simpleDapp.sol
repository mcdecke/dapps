pragma solidity ^0.4.20;
contract SimpleDapp {
    uint someVar;

    function setSomeVar(uint myVar) {
        someVar = myVar;
    }

    function getSomeVar() constant returns (uint) {
        return someVar;
    }

    function setTimesFour(uint myVar) {
        setSomeVar(4 * myVar);
    }
}

contract SomeOtherSimpleDapp {
    SimpleDapp simpleDapp;
    SimpleDapp nInstSimpleDapp;

    function SomeOtherSimpleDapp(address otherContract){
        simpleDapp = SimpleDapp(otherContract);
        nInstSimpleDapp = new SimpleDapp();
    }

    function getSimpleDappSomeVar() constant returns (uint) {
        return simpleDapp.getSomeVar();
    }

    function getNInstSimpleDappSomeVar() constant returns (uint) {
        return nInstSimpleDapp.getSomeVar();
    }
}
