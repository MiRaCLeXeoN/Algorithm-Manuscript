# Quicksort

Quicksort functions in a recursive way. By dividing the whole problem into half repeatedly until there is only one or no element to deal with, quicksort can sort elements in a very clear and efficient manner.

## Complexity

$$
O(n^2) \\
\Omega(n\log{n})
$$

When the original order is exactly the reverse one of the target, quicksort degrades to $O(n^2)$



## Procedure

The main idea behind quicksort is diving the problem into halves. 

1. Select an element as pivot
2. By moving all elements smaller than the pivot to the left part and greater elements to the right part, the specified continuous range of the array will be in order to some extent, while only the pivot is on its exact position.
3. Apply the same procedure to the left part and the right part, i.e. recursively call the function, until the whole array is sorted.

Procedure above briefly shows the main method of Quick sort, but there are more implementation details to be noticed.

1. Select an element as pivot

   1. You can do this randomly
   2. Always choosing the leftmost element
   3. Always choosing the rightmost  element. These methods have different corresponding exchange code in 2.7.

2. Find the exact position of the pivot and divide the whole array into halves.

   1. Make two pointers, `left` from leftmost to right and `right` from rightmost to left. 

   2. In every iteration, move `left` towards right until the pointed element is greater than the pivot and move `right` towards left until the pointed element is less than the pivot.

   3. > Be careful that you should always check out whether the `left` becomes greater than `right`. If you don't do so, it may cause illegal reference.

   4. Now the `left` is pointing at an element greater than the pivot and `right` is pointing at an element less than the pivot, you can swap them, so that they fall into the corresponding half.

   5. Repeat until `left` is no less than `right`

   6. > If you want to sort the array in reverse order, `left` should scan for elements less than the pivot and `right` vice-versa.

   7. Now `left` is no less than `right`, you should put the pivot into its position.

      | Order      | Pivot     | Operation                                                    |
      | ---------- | --------- | ------------------------------------------------------------ |
      | increasing | random    | if index of pivot is greater than `left`, exchange with `left`<br>if index of pivot is less than `left`, exchange with `right` |
      | increasing | leftmost  | exchange `right` and pivot                                   |
      | increasing | rightmost | exchange `left` and pivot                                    |
      | decreasing | random    | if index of pivot is greater than `left`, exchange with `left`<br/>if index of pivot is less than `left`, exchange with `right` |
      | decreasing | leftmost  | exchange `right` and pivot                                   |
      | decreasing | rightmost | exchange `right` and pivot                                   |

      You can see that the targets to be exchanges depends on which element you choose as the pivot, independent from the sorting order. The reason is that `right` always points to elements that should be put in the right part, therefore it should be exchanged with rightmost pivot. `left` does the same.

3. Recursive call

## Code

```C++
template<typename T>
void quicksort(std::vector<T> &arr, int start, int end) {
    // exit condition
    if (start >= end) {
        return ;
    }
        
    T pivot = arr[end];
    int left = start - 1;
    int right = end;
    while (1) {
        // move left pointer toward right until the indexed element is greater than pivot
        do {left++;} while (left < right && arr[left] <= pivot);
        // move right pointer toward left until the indexed element is less than pivot
        do {right--;} while (left < right && arr[right] >= pivot);
        if (left >= right)
            break;
        std::swap(arr[left], arr[right]);
    }
    // swap the pivot to its position
    std::swap(arr[left], arr[end]);

    // std::cout << start << ' ' << end << ":";
    // for (int i = 0; i < arr.size(); i++)
    //     std::cout << arr[i] << ' ';
    // std::cout << std::endl;

    // recursive
    quicksort(arr, start, left - 1);
    quicksort(arr, left + 1, end);
}
```

Don't forget:

1. exit condition
2. always check `left <= right` while scanning
3. break the loop if `left >= right`
4. choose the right target to swap with pivot
5. find the correct limit for recursive call



```c++
void quicksort(std::vector<int> &a, int start, int end)//快速排序
{
    if (start< end)
    {     
        int left = start, right = end, pivot = a[start];
        while (left < right)
        {
            while(left < right && a[right]>= pivot)
                right--; 
            if(left < right)
                a[left++] =a[right];
            while(left < right && a[left]< pivot)
                left++; 
            if(left < right)
                a[right--] = a[left];
        }
        a[left] = pivot;
        quicksort(a, start, left - 1); 
        quicksort(a, left + 1, end);
    }
}
```

This version doesn't require `swap`. It uses the original position, which is spare after the pivot is assigned to `pivot`, as a intermediate variable.