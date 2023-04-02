We can reference the second element in the pair with key value.

```C++
unordered_map<int, int> umap;
umap[key] += 1;
```



Dereferencing the iterator returns a pair, other than a single value.

```C++
unordered_map<int, int>::iterator itr = umap.find(key);
a = itr->first;
b = itr->second;
```

