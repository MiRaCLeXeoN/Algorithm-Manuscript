[A very detailed description of binary search](https://leetcode.com/problems/binary-search/solutions/423162/binary-search-101/)

1. `lo` and `hi`

Normally, we initialize `hi` to `nums.length-1`. But it's not always the case. When the array is possible to be empty, such initialization causes fatal error. Another case is when you are to find where to insert an element into the array and the possible position is the end of it. In such cases, `hi` is to be initialized as `nums.length`

2. `mid`

Calculating mid can result in overflow when the numbers are extremely big. So we can rewrite `mid = (right + left) / 2` to `mid = left + (right - left) / 2` in case of possible overflow.

Replacing division with bitwise manipulation helps to improve performance and prevent overflow, but it's a little bit hard to understand. *Why it's able to prevent overflow???*

