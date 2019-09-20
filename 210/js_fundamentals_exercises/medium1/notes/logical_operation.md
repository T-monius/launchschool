## Logical Operation

### Understanding
- `undefined` evaluates to `false`

### Task
- What will each line of the following code return? Don't run the code until after you have tried to answer.

```js
(false && undefined);
(false || undefined);
((false && undefined) || (false || undefined));
((false || undefined) || (false && undefined));
((false && undefined) && (false || undefined));
((false || undefined) && (false && undefined));
('a' || (false && undefined) || '');
((false && undefined) || 'a' || '');
('a' && (false || undefined) && '');
((false || undefined) && 'a' && '');
````

### Answers
1. `false`
2. `false`
3. `false`
4. `false`
5. `false`
6. `false`
7. `true`
8. `true`
9. `false`
10. `false`

### Actual answers
- The logical AND (`&&`) and logical OR (`||`) operators do not always return a boolean value. They return the value of one of their operands (i.e., the expressions being compared), which may be a non-boolean value such as shown above. You can learn more about the logical operator rules on MDN.

The return value of a logical expression can be determined by iteratively evaluating the expression from left to right until it results in a single value.

### Rules
- Rules:
1. || OR will stop at the first instance of truthy and return that value
2. && AND will stop at the first instance of falsy and return that value
3. If we don't stop for any of the reasons above, the last value is returned