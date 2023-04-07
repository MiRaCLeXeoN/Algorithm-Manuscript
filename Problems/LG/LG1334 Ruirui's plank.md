# LG1334 Ruirui's plank

# Submissions

## C++ V1

```C++
/*
 * @Author: MiRaCLeXeoN zzp905020708@gmail.com
 * @Date: 2023-03-27 16:49:38
 * @LastEditors: MiRaCLeXeoN zzp905020708@gmail.com
 * @LastEditTime: 2023-04-08 00:03:57
 * @FilePath: /test/test.cpp
 * @Description: 
 * 
 * Copyright (c) 2023 by ${git_name_email}, All Rights Reserved. 
 */
#include<bits/stdc++.h>

using namespace std;

class myComparision
{
public:
    bool operator()(int a, int b) {
        return a > b;
    }
};

int main() {
    int n, tmp;
    long long res = 0; // must be longlong, in case of overflow. and don't forget to init
    priority_queue<int, vector<int>, myComparision> pq;

    cin >> n;
    for (int i = 0; i < n; i++) {
        cin >> tmp;
        pq.push(tmp);
    }

    int tmp1, tmp2;
    while (pq.size() != 1) {
        tmp1 = pq.top();
        pq.pop();
        tmp2 = pq.top();
        pq.pop();

        tmp = tmp1 + tmp2;
        res += tmp;
        pq.push(tmp);
    }

    cout << res << endl;

    return 0;
}
```

1. The problem can be easily decomposed by thinking it in a reverse way. Instead of dividing the planks, we combine planks from the already divided ones. At each step, the shortest two planks are to be combined to give the minimal overall length combined, where the priority queue comes in handy.

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

[Problem link](https://www.luogu.com.cn/problem/P1334)

Recommended problem solution provider: `Jyf624761709`



# Tags

- priority_queue