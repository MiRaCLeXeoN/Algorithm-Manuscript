# LC0383 Ransom Note

# Submissions

## C++ V1

```C++
class Solution {
public:
    bool canConstruct(string ransomNote, string magazine) {
        unordered_map<int, int> umap;
        for (auto c : magazine) {
            unordered_map<int, int>::iterator itr = umap.find(c);
            if (itr != umap.end()) {
                // already exists
                itr->second += 1;
            }
            else {
                // first occurrence
                umap.insert(pair<int, int>(c, 1));
            }
        }

        for (auto c : ransomNote) {
            unordered_map<int, int>::iterator itr = umap.find(c);
            if (itr != umap.end()) {
                // already exists
                itr->second -= 1;
                if (itr->second < 0) {
                    return false;
                }
            }
            else {
                // doesn't exist
                return false;
            }
        }

        return true;
    }
};
```

This solution is very straightforward. First, iterate through `magzine` to count the occurrence of each letter and store the times in `umap`. After that iterate through `ransomNote` to check out whether there are enough characters in `magzine` to formulate it.

However, since the hash space in this case is rather small, the maximum of which is 26, the number of English characters, hashing using fixed built-in array can also serve the purpose well and reduce the cost of memory space and time for maintaining complicated hash infrastructures.

## C++ V2

```C++
class Solution {
public:
    bool canConstruct(string ransomNote, string magazine) {
        array<int, 26> charCount;
        charCount.fill(0);
        // pruning
        if (magazine.size() < ransomNote.size()) {
            return false;
        }
        for (auto itr = magazine.begin(); itr != magazine.end(); itr++) {
            charCount[*itr - 'a']++;
        }
        for (int i = 0; i < ransomNote.size(); i++) {
            if (--charCount[ransomNote[i] - 'a'] < 0) {
                return false;
            }
        }
        return true;
    }
};
```

1. array for hashing
2. pruning
3. some redundant codes are removed

## Python V1

```python
```



## Python V2

```python

```





# Recommended links

[Problem link](https://leetcode.com/problems/ransom-note/)

[leetcode-master](https://github.com/youngyangyang04/leetcode-master/blob/master/problems/0383.%E8%B5%8E%E9%87%91%E4%BF%A1.md)



# Tags

- array
- hash