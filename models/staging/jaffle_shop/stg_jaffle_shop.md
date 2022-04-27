## Markdown Tables of definitions for 
1. order_status in stg_orders table
2. payment_method in stg_payments table
3. --


{% docs order_status %}

One of the following status values.

| status            | definition                                            |
|-------------------|-------------------------------------------------------|
| placed            | Order placed but not yet ***shipped***                |
| shipped           | Order shipped but hasn't yet been delivered.          |
| completed         | Order recieved by customer.                           |
| return_pending    | Customer has indicated they wish to return this item. |
| returned          | Item has been returned.                               |

{% enddocs %}

---
---

{% docs payment_method_in_md_file %}

The following are valid payment methods.

| payment method    | definition                                            |
|-------------------|-------------------------------------------------------|
| coupon            | Customer paid using a ***Coupon***.                   |
| gift_card         | Customer had  a ***Gift Card***.                      |
| credit_card       | Customer paid using a ***Credit Card***               |
| bank_transfer     | Customer paid via ***Bank Transfer***                 |

{% enddocs %}