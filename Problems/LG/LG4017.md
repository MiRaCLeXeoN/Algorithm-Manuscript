# LG4017 Food chain counting

# Submissions

## C++ V1

```C++
/*
 * @Author: MiRaCLeXeoN zzp905020708@gmail.com
 * @Date: 2023-03-27 16:49:38
 * @LastEditors: MiRaCLeXeoN zzp905020708@gmail.com
 * @LastEditTime: 2023-04-07 16:08:39
 * @FilePath: /test/test.cpp
 * @Description: 
 * 
 * Copyright (c) 2023 by ${git_name_email}, All Rights Reserved. 
 */
#include<iostream>
#include<vector>
#include<queue>
#include<cstdlib>
#include<cstdio>
#include<cstring>

using namespace std;

int main() {
    const int MOD = 80112002;
    int n, m;
    cin >> n >> m;

    int head, end;
    const int np = n + 1;
    vector<vector<int>> edges;
    auto inCount = new int[np];
    auto outCount = new int[np];
    auto wayCount = new int[np];
    queue<int> q;

    edges.resize(np);
    memset((void*)inCount, 0, np * sizeof(int));
    memset((void*)outCount, 0, np * sizeof(int));
    memset((void*)wayCount, 0, np * sizeof(int));

    // build up map
    for (int i = 0; i < m; i++) {
        cin >> head >> end;
        edges[head].push_back(end);
        inCount[end]++;
        outCount[head]++;
    }

    // init queue
    for (int i = 1; i < np; i++) {
        if (inCount[i] == 0) {
            q.push(i);
            wayCount[i] = 1;
        }
    }
    // main loop
    while (!q.empty()) {
        // delete one node
        int curHead = q.front();
        q.pop();
        int len = edges[curHead].size();
        for (int i = 0; i < len; i++) {
            int curEnd = edges[curHead][i];
            // you have to mod every time you perform addition in case of overflow
            wayCount[curEnd] = (wayCount[curHead] + wayCount[curEnd]) % MOD; 
            inCount[curEnd]--;
            if (inCount[curEnd] == 0) {
                q.push(curEnd);
            }
        }
    }
    // find the node without any outgoing edge
    int total = 0;
    for (int i = 1; i < np; i++) {
        if (outCount[i] == 0) {
            total = (wayCount[i] + total) % MOD;
        }
    }

    cout << total << endl;

    delete[] inCount;
    delete[] outCount;
    return 0;
}
```

1. You have to be careful that there is no number 0 node, so every array have to spare one extra position, and iteration operations must start from index 1.
2. If you want to reference index `a` of a vector, you have to first make sure that this index is valid. e.g, you must `resize` the vector before you perform random references.

The graph is stored with adjacency matrix.

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

[Problem link](https://www.luogu.com.cn/problem/P4017)



# Tags

- topological sorting
- adjacency matrix
- graph