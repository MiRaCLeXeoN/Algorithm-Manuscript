# STL Container Instantiation

empty construction

```C++
unordered_set<int> result_set = unordered_set<int>();
//或者
auto result_set = unordered_set<int>
//或者
unordered_set<int> result_set ;
```



anonymous construction

```
return vector<int>(numset.begin(), numset.end());
```



automatically convert

```C++
class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        //return {partnerIdx->second, i};
        // return {}
    }};
```

In this case, the construction function is automatically invoked, which converts the array into a vector and then returns it.

