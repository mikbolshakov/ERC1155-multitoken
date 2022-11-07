// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./IERC1155.sol";

// интерфейс для получения ссылки на наш токен
interface IERC1155MetadataURI is IERC1155 {
	function uri(uint id) external view returns(string memory);
}