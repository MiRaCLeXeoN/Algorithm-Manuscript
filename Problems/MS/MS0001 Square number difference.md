# MS0001 Square number difference

Given a positive integer `n`, you should return the number of `x` in `1 <= x <= n` such that `x` can be written as `x=a^2-b^2`, `a` and `b` are both integers.

# Submissions

## C++ V1

```C++
#include<iostream>
int n;
int main() {
    cin >> n;
    int count  = 0;
    count +=3 *  n / 4;
    if (n % 4 >= 2)
        count += n % 4 - 1;
    else
        count += n % 4;
    cout << count << endl;
    return 0;
}
```

This problem requires some numeric derivations. Two solutions are provided.

1. Direct derivation

`a^2-b^2` can be rewritten as `(a+b)(a-b)`. Let `m=(a+b)` and `n=(a-b)`, immediately you have `a=(m+n)/2` and `b=(m-n)/2`. Seeing that `a` and `b` are both integers, `m+n` and `m-n` must be even numbers, which indicates that `m` and `n` should both be either odd numbers or even numbers.

If they are both even numbers, let `m=2p` and `n=2q`, thus giving `(a+b)(a-b)=mn=4pq`. So it's manifest that any number that is a multiple of 4 should conform.

On the other hand, when they are both odd numbers, let's make `m=2p+1` and `n=2q+1`. giving `mn=4pq+2p+2q+1`. Since `p` and `q` can be chosen arbitrarily, we can simply designate `p=0`, which further simplify the equation into `mn=2q+1`. Now you can see that any odd number could be derive out from it.

In conclusion, only numbers that `x mod 4 == 2` are not a part of the answer. We can use `O(1)` time to draw the answer on the basis of the above conclusion.

2. Finding the patterns

If you inspect the series of difference between the consecutive square number:

> 1^2 - 0^2 = 1
>
> 2^2 - 1^2 = 3
>
> 3^2 - 2^3 = 5
>
> …=7, …=9, …=11

you can see that they are all odd numbers, in consecutive order. So any odd number obviously contributes to the answer. Furthermore, `a^2-b^2` can be converted into a problem where to consider the sum of `(a+1)^2-a^2, … b^2-(b-1)^2`, which contains `b-a` odd numbers.

Now let's consider how to get even numbers out from these. Since all components that you use to compose a total sum are all odd numbers, you have to use an even number of odd numbers. If you use 2 items, then you have `4+4k`; if you use 4 items, you have `16+8k`, and `36+12k` for 6 items, etc, with k being any integer. You can discover that they are all multiples of 4, which conforms to the conclusion about the even answers in the first section.

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

Recommended problem solution provider:



# Tags

- number theory