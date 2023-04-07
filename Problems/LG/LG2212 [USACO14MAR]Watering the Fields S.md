# LG2212 [USACO14MAR]Watering the Fields S

# Submissions

## C++ V1

```C++
/*
 * @Author: MiRaCLeXeoN zzp905020708@gmail.com
 * @Date: 2023-03-27 16:49:38
 * @LastEditors: MiRaCLeXeoN zzp905020708@gmail.com
 * @LastEditTime: 2023-04-07 17:43:57
 * @FilePath: /test/test.cpp
 * @Description: 
 * 
 * Copyright (c) 2023 by ${git_name_email}, All Rights Reserved. 
 */
#include<bits/stdc++.h>

using namespace std;

int n, c, res;

inline int Dis(int* x, int* y, int a, int b) {
    int tmp = pow(x[a] - x[b], 2) + pow(y[a] - y[b], 2);
    return tmp >= c ? tmp : INT32_MAX;
}

int main() {
    cin >> n >> c;
    
    auto x = new int[n];
    auto y = new int[n];

    for (int i = 0; i < n; i++) {
        cin >> x[i] >> y[i];
    }

    auto minDis = new int[n];  // the nearest distance from the current included node to non-included nodes
    memset((void*)minDis, 0, n * sizeof(int));

    // add 0 into the set first
    for (int i = 1; i < n; i++) {
        minDis[i] = Dis(x, y, 0, i);
    }
    // search through the graph
    int i;
    for (i = 1; i < n; i++) {
        int min = INT32_MAX;
        int minIdx;
        // find the nearest node, this could be costly because we don't distinguish between selected
        // and non-selected nodes here, thus having to run through the whole graph every time.
        for (int j = 1; j < n; j++) {
            if (minDis[j] != 0 && minDis[j] < min) {
                min = minDis[j];
                minIdx = j;
            }
        }
        if (min == INT32_MAX) {
            cout << -1 << endl;  // all remaining nodes are unreachable
            return 0;
        }
        // mark minIdx as 'visited'
        minDis[minIdx] = 0;
        res += min;
        // update minDis
        for (int j = 1; j < n; j++) {
            if (minDis[j] > Dis(x, y, minIdx, j)) {
                minDis[j] = Dis(x, y, minIdx, j);
            }
        }
    }
    
    cout << res << endl;

    delete[] x;
    delete[] y;
    return 0;
}
```

1. `minDis` is all you have to maintain to carry out prim algorithm.
1. Use the value `min` as the condition controlling exit prematurely.

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

[Problem link]()

Recommended problem solution provider: `origin_star` 



# Tags

- prim
- graph