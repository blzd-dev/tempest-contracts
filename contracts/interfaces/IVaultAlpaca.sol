// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.7.0;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';

interface IVaultAlpaca is IERC20 {

  /// @dev Return the ERC20 address.
  function token() external view returns (address);

  /// @dev Return the total ERC20 entitled to the token holders. Be careful of unaccrued interests.
  function totalToken() external view returns (uint256);

  /// @dev Add more ERC20 to the bank. Hope to get some good returns.
  function deposit(uint256 amountToken) external payable;

  /// @dev Withdraw ERC20 from the bank by burning the share tokens.
  function withdraw(uint256 share) external;

}
