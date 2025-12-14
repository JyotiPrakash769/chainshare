// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ChainShareRegistry {
    
    struct FileRecord {
        string ipfsHash;    // The unique ID of the file
        string fileName;    // "photo.jpg"
        string description; // "My vacation"
        address uploader;   // Your Wallet Address
        uint256 timestamp;  // When it was uploaded
    }

    FileRecord[] public files;

    event FileUploaded(address indexed uploader, string fileName);

    // Function to add a file to the blockchain
    function uploadFile(string memory _hash, string memory _name, string memory _desc) public {
        files.push(FileRecord(_hash, _name, _desc, msg.sender, block.timestamp));
        emit FileUploaded(msg.sender, _name);
    }

    // Function to get the total number of files
    function getFileCount() public view returns (uint256) {
        return files.length;
    }

    // Function to get a file at a specific index
    function getFile(uint256 _index) public view returns (string memory, string memory, string memory, address, uint256) {
        FileRecord memory f = files[_index];
        return (f.ipfsHash, f.fileName, f.description, f.uploader, f.timestamp);
    }
}
