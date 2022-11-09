// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ERC1155.sol";

// пример, как можно вынести функции в отдельный контракт. Так эти функции будут прописаны в NToken.sol
abstract contract ERC1155Burnable is ERC1155 {
    function burn(address account, uint id, uint value) public virtual {
        require(account == msg.sender || isApprovedForAll(account, msg.sender));
        _burn(account, id, value);
    }

    function burnBatch(address account, uint[] memory ids, uint[] memory values) public virtual {
        require(account == msg.sender || isApprovedForAll(account, msg.sender));
        _burnBatch(account, ids, values);
    }
}