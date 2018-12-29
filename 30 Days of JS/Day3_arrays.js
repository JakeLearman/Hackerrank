/**
*   Return the second largest number in the array.
*   @param {Number[]} nums - An array of numbers.
*   @return {Number} The second largest number in the array.
**/
function getSecondLargest(nums) {
    nums.sort(function (a, b) { return a - b });
    var largestVal = nums[nums.length - 1];
    const newArr = nums.filter(val => {
        return (val !== largestVal);
    });
    return newArr[newArr.length - 1];
}