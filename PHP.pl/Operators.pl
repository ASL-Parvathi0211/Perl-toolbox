# Operator Precedence
    Operator precedence is a characteristic of operators that determines the order in which they evaluate the operands surrounding them. PHP follows the standard precedence rules used in elementary school math class.
        Consider a few examples:
            $total_cost = $cost + $cost * 0.06;
        This is the same as writing
            $total_cost = $cost + ($cost * 0.06);
        Because the multiplication operator has higher precedence than the addition operator.  

    # Operator Associativity
        The associativity characteristic of an operator specifies how operations of the same precedence are evaluated as they are executed. 
        Associativity can be performed in two directions, left-to- right or right-to-left. Left-to-right associativity means that the various operations making up the expression are evaluated from left to right.  
        Consider the following example:
            $value = 3 * 4 * 5 * 7 * 2;
        The preceding example is the same as the following:
            $value = ((((3 * 4) * 5) * 7) * 2);
            
    # Arithmetic Operators
        There are following arithmetic operators supported by PHP language − Assume variable A holds 10 and variable B holds 20 then
        |----------|--------------------------------------------------------------|----------------------------------|
        | Operator | Description                                                  | Example                          |
        | +        | Adds two operands                                            | A + B will give 30               |
        | -        | Subtracts second operand from the first                      | A - B will give -10              |
        | *        | Multiply both operands                                       | A * B will give 200              |
        | /        | Divide numerator by denumerator                              | B / A will give 2                |
        | %        | Modulus Operator and remainder of after an integer division  | B % A will give 0                |
        |++        | Increment operator, increases integer value by one           | A++ will give 11                 |
        | --       | Decrement operator, decreases integer value by one           | A-- will give 9                  |
        |----------|--------------------------------------------------------------|----------------------------------|

    # Assignment Operators
        There are following assignment operators supported by PHP language
        |----------|----------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------|
        | Operator | Description                                                                                                                | Example                                       |
        | =        | Simple assignment operator, Assigns values from right side operands to left side operand                                   | C = A + B will assign value of A + B into C   |
        | +=       | Add AND assignment operator, It adds right operand to the left operand and assign the result to left operand               | C += A is equivalent to C = C + A             |
        | -=       | Subtract AND assignment operator, It subtracts right operand from the left operand and assign the result to left operand   | C -= A is equivalent to C = C - A             |
        | *=       | Multiply AND assignment operator, It multiplies right operand with the left operand and assign the result to left operand  | C *= A is equivalent to C = C * A             |
        | /=       | Divide AND assignment operator, It divides left operand with the right operand and assign the result to left operand       | C /= A is equivalent to C = C / A             |
        | %=       | Modulus AND assignment operator, It takes modulus using two operands and assign the result to left operand                 | C %= A is equivalent to C = C % A             |
        |----------|----------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------|
 
    # String Operators
        PHP’s string operators provide a convenient way in which to concatenate strings together. There are two such operators, including the concatenation operator (.) and the concatenation assignment operator (.=).
        |--------------------|---------------------------|---------------------------------------------------------|
        | Example            | Label                     | Outcome                                                 |
        | $a = "abc"."def";  | Concatenation             | $a is assigned the string "abcdef"                      |
        | $a .= "ghijkl";    | Concatenation-assignment  | $a equals its current value concatenated with "ghijkl"  | 
        |--------------------|---------------------------|---------------------------------------------------------|
    
    # Increment and Decrement Operators
        The increment (++) and decrement (--) operators present a minor convenience in terms of code clarity, providing shortened means by which you can add 1 to or subtract 1 from the current value of a variable.
        |--------------|--------------|--------------------|
        | Example      | Label        | Outcome            |
        | ++$a, $a++   | Increment    | Increment $a by 1  |
        | --$a, $a--   | Decrement    | Decrement $a by 1  |
        |--------------|--------------|--------------------|

    # Logical Operators
        There are following logical operators supported by PHP language Assume variable A holds 10 and variable B holds 20 then
        |-----------|--------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|
        | Operator  | Description                                                                                                                                      | Example             |
        | and       | Called Logical AND operator. If both the operands are true then condition becomes true                                                           | (A and B) is true   |
        | or        | Called Logical OR Operator. If any of the two operands are non zero then condition becomes true                                                  | (A or B) is true    |
        | &&        | Called Logical AND operator. If both the operands are non zero then condition becomes true                                                       | (A && B) is true    |
        | ||        | Called Logical OR Operator. If any of the two operands are non zero then condition becomes true                                                  | (A || B) is true    |
        | !         | Called Logical NOT Operator. Use to reverses the logical state of its operand. If a condition is true then Logical NOT operator will make false  | !(A && B) is false  |  
        |-----------|--------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|
    
    # Equality Operators
        Equality operators are used to compare two values, testing for equivalence.
        |------------|------------------|-----------------------------------|
        | Example    | Label            | Outcome                           |
        | $a == $b   | Is equal to      | True if $a and $b are equivalent  |
        | $a != $b   | Is not equal to  | True if $a is not equal to $b     |
        | $a === $b  | Is identical to  | True if $a and $b are equivalent  |
        |------------|------------------|-----------------------------------|  
 
    # Comparison Operators
        There are following comparison operators supported by PHP language Assume variable A holds 10 and variable B holds 20 then – 
        |-----------|---------------------------------------------------------------------------------------------------------------------------------|-----------------------|
        | Operator  | Description                                                                                                                     | Example               |
        | ==        | Checks if the value of two operands are equal or not, if yes then condition becomes true                                        | (A == B) is not true  |
        | !=        | Checks if the value of two operands are equal or not, if values are not equal then condition becomes true                       | (A != B) is true      |
        | >         | Checks if the value of left operand is greater than the value of right operand, if yes then condition becomes true              | (A > B) is not true   |
        | <         | Checks if the value of left operand is less than the value of right operand, if yes then condition becomes true                 | (A < B) is true       |
        | >=        | Checks if the value of left operand is greater than or equal to the value of right operand, if yes then condition becomes true  | (A >= B) is not true  |
        | <=        | Checks if the value of left operand is less than or equal to the value of right operand, if yes then condition becomes true     | (A <= B) is true      |
        |-----------|---------------------------------------------------------------------------------------------------------------------------------|-----------------------|

    # Bitwise Operators
        Bitwise operators examine and manipulate integer values on the level of individual bits that make up the integer value (thus the name).
        |-----------|-----------------|--------------------------------------------------------|
        | Example   | Label           | Outcome                                                |
        | $a & $b   | AND             | And together each bit contained in $a and $b           |
        | $a | $b   | OR              | Or together each bit contained in $a and $b            |
        | $a ^ $b   | XOR             | Exclusive—or together each bit contained in $a and $b  |
        | ~ $b      | NOT             | Negate each bit in $b                                  |
        | $a << $b  | Shift left $a   | will receive the value of $b shifted left two bits     |
        | $a >> $b  | Shift right $a  | will receive the value of $b shifted right two bits    |
        |-----------|-----------------|--------------------------------------------------------|
