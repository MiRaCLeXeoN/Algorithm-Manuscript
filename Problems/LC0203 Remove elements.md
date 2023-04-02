# Leetcode 0203 Remove elements

# Submissions

## C++ V1

```C++
class Solution {
public:
    ListNode* removeElements(ListNode* head, int val) {
        ListNode* tmp;
        ListNode* cur;
        // iterate until the list head doesn't equal to val
        while (head != NULL && head->val == val) {
            tmp = head;
            head = head->next;
            delete tmp;
        }

        // iterate through the linked list
        cur = head;
        if (cur != NULL) {
            while (cur->next != NULL) {
                if (cur->next->val == val) {
                    tmp = cur->next;
                    cur->next = tmp->next;
                    delete tmp;
                }
                else {
                    cur = cur->next;
                }
            }
        }

        return head;
    }
};
```

When walking through the linked list, you often use a iterator like `cur`, which indicates your current position. Remember that you are not going to check `cur->value`, but `cur->next->value` because deleting operations are only allowed to be performed if you have the position of the node in front of the node you are to delete,  the `next` member of which you have to change to ensure the linked list linked.

## C++ V2

```C++
class Solution {
public:
    ListNode* removeElements(ListNode* head, int val) {
        ListNode* dummyHead = new ListNode(-1, head);
        ListNode* cur = head, *last = dummyHead;
        while (cur != NULL) {
            if (cur->val == val) {
                last->next = cur->next;
                delete cur;
                cur = last->next;
            }
            else {
                last = cur;
                cur = cur->next;
            }
        }
        return dummyHead->next;
    }
};
```

dummy head

## Python V1

```python

```



## Python V2

```python

```





# Recommended links

[Problem link](https://leetcode.com/problems/remove-linked-list-elements/description/)



# Tags

- linked list
- remove elements
- dummy head