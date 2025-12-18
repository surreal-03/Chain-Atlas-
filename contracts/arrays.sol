// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArraysExercise {
string private salt = "value";
uint[] public numbers = [1,2,3,4,5,6,7,8,9,10];
address[] public senders;
uint[] public timestamps;

function getNumbers() public view returns (uint[] memory) {
return numbers;
}

function resetNumbers() public {
delete numbers;
numbers = [1,2,3,4,5,6,7,8,9,10];
}

function appendToNumbers(uint[] calldata _toAppend) public {
uint numbersLength = numbers.length;
uint _toAppendLength = _toAppend.length;
uint newLength = numbersLength + _toAppendLength;

uint[] memory newNumbers = new uint[](newLength);

for (uint i = 0; i < numbersLength; i++) {
newNumbers[i] = numbers[i];
}

for (uint j = 0; j < _toAppendLength; j++) {
newNumbers[numbersLength + j] = _toAppend[j];
}

numbers = newNumbers;
}

function saveTimestamp(uint _unixTimestamp) public {
senders.push(msg.sender);
timestamps.push(_unixTimestamp);
}

function afterY2K() public view returns (uint[] memory, address[] memory) {
uint[] memory recentTimestamps = new uint[](timestamps.length);
address[] memory correspondingSenders = new address[](timestamps.length);
uint y2kTimestamp = 946702800;
uint count = 0;

for (uint i = 0; i < timestamps.length; i++) {
if (timestamps[i] > y2kTimestamp) {
recentTimestamps[count] = timestamps[i];
correspondingSenders[count] = senders[i];
count++;
}
}

// Resize arrays to fit only the actual values
uint[] memory trimmedRecentTimestamps = new uint[](count);
address[] memory trimmedCorrespondingSenders = new address[](count);

for (uint j = 0; j < count; j++) {
trimmedRecentTimestamps[j] = recentTimestamps[j];
trimmedCorrespondingSenders[j] = correspondingSenders[j];
}

return (trimmedRecentTimestamps, trimmedCorrespondingSenders);
}

function resetSenders() public {
delete senders;
}

function resetTimestamps() public {
delete timestamps;
}
}
