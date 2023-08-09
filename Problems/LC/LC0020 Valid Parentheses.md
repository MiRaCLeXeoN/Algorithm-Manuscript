# LC0020 Valid Parentheses

# Submissions

## C++ V1

```C++
class Solution {
public:
    bool isValid(string s) {
        // variables
        stack<char> st;

        // iterate through s
        for (int i = 0; i < s.size(); i++) {
            if (!st.empty()) {
                // match
                if (s[i] == ')' && st.top() == '(') {st.pop(); continue;}
                else if (s[i] == ']' && st.top() == '[') {st.pop(); continue;}
                else if (s[i] == '}' && st.top() == '{') {st.pop(); continue;}
            } 
            
            // doesn't match
            if (s[i] == ')' || s[i] == '}' || s[i] == ']') return false;
            else st.push(s[i]);
        }
        return st.empty();
    }
};
```

- remember to use `stack.empty()` to detect whether it's empty or not. `stack.size() == 0` is too awkward.
- Before using `stack.top()` you have to confirm the non-emptiness of the stack, otherwise it may incur wrong memory access error.

## C++ V2

```C++
class Solution {
public:
    bool isValid(string s) {
        // variables
        stack<char> st;

        // iterate through s
        for (int i = 0; i < s.size(); i++) {
            // open parentheses
            if (s[i] == '(') st.push(')');
            else if (s[i] == '[') st.push(']');
            else if (s[i] == '{') st.push('}');
            // close parentheses
            // st.empty() indiactes that the current symbol is not expected
            // st.top() != s[i] indicates that there is a mismatch
            else if (st.empty() || st.top() != s[i]) return false;
            // match
            else st.pop();
        }
        return st.empty();
    }
};
```

- This version is way much simpler, due to a change of matching method. Instead of pushing the scanned symbol into stack, we push the expected closing parentheses into it, which enable us to remove the condition statement `!st.empty()`.

## Python V1

```python
```



## Python V2

```python

```





# Recommended links

[Problem link](https://leetcode.com/problems/valid-parentheses/description/)

[leetcode-master](https://github.com/youngyangyang04/leetcode-master/blob/master/problems/0020.%E6%9C%89%E6%95%88%E7%9A%84%E6%8B%AC%E5%8F%B7.md)



# Tags

- array
- binary search