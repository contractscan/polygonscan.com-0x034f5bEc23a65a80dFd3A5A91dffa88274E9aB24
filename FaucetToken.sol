pragma solidity ^0.8.0;
import "./ERC20.sol";

contract FaucetToken is ERC20 {
    uint8 constant decimal = 6; //same as usdt

    constructor(
        string memory name_,
        string memory symbol_,
        uint256 _amount
    ) ERC20(name_, symbol_) {
        _mint(msg.sender, _amount * (10**uint256(decimal)));
    }

    function decimals() public view override returns (uint8) {
        return decimal;
    }
}