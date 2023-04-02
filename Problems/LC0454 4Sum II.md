# LC0454 4Sum II

# Submissions

## C++ V1

```C++
class Solution {
public:
    int fourSumCount(vector<int>& nums1, vector<int>& nums2, vector<int>& nums3, vector<int>& nums4) {
        unordered_map<int, int> umap;
        int count = 0;
        // first combine nums1 and nums2
        for (int num1 : nums1) {
            for (int num2 : nums2) {
                umap[num1 + num2]++;
            }
        }
        // then combines nums3 and nums4
        for (int num3 : nums3) {
            for (int num4: nums4) {
                if (umap.find(0 - (num3 + num4)) != umap.end()) {
                    count += umap[0 - (num3 + num4)];
                }
            }
        }
        return count;
    }
};
```

`map` can be directly referenced by key value, this measure is so very convenient.

This problem is not that hard, quite similar to [LC0001 Two Sum](./LC0001 Two sum.md), both of which can be solve via hash data structure. However, hash is no longer applicable if we have to search for a combination of 4 numbers in one single array without picking same element. It would be much harder and requires a different solution. 

## C++ V2

```C++
```



## Python V1

```python
```



## Python V2

```python

```





# Recommended links

[Problem link](https://leetcode.com/problems/4sum-ii/description/)

[leetcode-master](https://github.com/youngyangyang04/leetcode-master/blob/master/problems/0454.%E5%9B%9B%E6%95%B0%E7%9B%B8%E5%8A%A0II.md)



# Tags

- hash
- unordered_map