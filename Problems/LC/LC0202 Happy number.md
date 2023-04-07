# LC0202 Happy number

# Submissions

## C++ V1

```C++
class Solution {
public:
    int getSquare(int n) {
        int result = 0;
        while (n) {
            result += pow((n % 10), 2);
            n /= 10;
        }
        return result;
    }
    // This problem uses hash for determining a number that shows up repeatedly
    bool isHappy(int n) {
        unordered_set<int> num_set;
        int tmp_square = n;
        while (1) {
            tmp_square = getSquare(tmp_square);
            if (tmp_square == 1) {
                return true;
            }
            else if (num_set.find(tmp_square) != num_set.end()) { // exists
                return false;
            }
            else {
                num_set.insert(tmp_square);
            }
        }
    }
};
```

This implementation is very simple, without any complicated algorithm or sophisticated data structure. When you need to remember every occurrence of a number for later reference, hash map is your first choice.

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

[Problem link](https://leetcode.com/problems/happy-number/)

[leetcode-master](https://github.com/youngyangyang04/leetcode-master/blob/master/problems/0202.%E5%BF%AB%E4%B9%90%E6%95%B0.md)



# Tags

- hash
- unordered_set