# Constants
        A constant is a value that cannot be modified throughout the execution of a program. Constants are particularly useful when working with values that definitely will not require modification, such as Pi (3.141592) or the number of feet in a mile (5,280). Once a constant has been defined, it cannot be changed (or redefined) at any other point of the program. Constants are defined using the define() function.
        
    # Defining a Constant
        The define() function defines a constant by assigning a value to a name. Its prototype follows:
            boolean define(string name, mixed value [, bool case_insensitive])If the optional parameter case_insensitive is included and assigned TRUE, subsequent references to the constant will be case insensitive. Consider the following example in which the mathematical constant Pi is defined:define("PI", 3.141592);The constant is subsequently used in the following listing:
            printf("The value of Pi is %f", PI);
            $pi2 = 2 * PI;
            printf("Pi doubled equals %f", $pi2);
            
            This code produces the following results:
                The value of pi is 3.141592. Pi doubled equals 6.283184.
                
# Expressions
    An expression is a phrase representing a particular action in a program. All expressions consist of at least one operand and one or more operators.
        A few examples follow:
            $a = 5; // assign integer value 5 to the variable $a
            $a = "5"; // assign string value "5" to the variable $a
            $sum = 50 + $some_int; // assign sum of 50 + $some_int to $sum
            $wine = "Zinfandel"; // assign "Zinfandel" to the variable $wine
            $inventory++; // increment the variable $inventory by 1
            
    # Operands
        Operands are the inputs of an expression. You might already be familiar with the manipulation and use of operands not only through everyday mathematical calculations, but also through prior programming experience. Some examples of operands follow:
            $a++; // $a is the operand
            $sum = $val1 + val2; // $sum, $val1 and $val2 are operands
            
    # Operators
        An operator is a symbol that specifies a particular action in an expression. Many operators may be familiar to you. Regardless, you should remember that PHP’s automatic type conversion will convert types based on the type of operator placed between the two operands, which is not always the case in other programming languages. The precedence and associativity of operators are significant characteristics of a programming language. Operator Precedence, Associativity, and Purpose. 
        |-----------------------------------|----------------|----------------------------------------------------------------------------|
        | Operator                          | Associativity  | Purpose                                                                    |
        | new                               |  NA            | Object instantiation                                                       |
        | ( )                               |  NA            | Expression sub grouping                                                    |
        | [ ]                               | Right          | Index enclosure                                                            |
        | ! ~ ++ --                         | Right          | Boolean NOT, bitwise NOT, increment, decrement                             |
        | @                                 | Right          | Error suppression                                                          |
        | / * %                             | Left           | Division, multiplication, modulus                                          |
        | + - .                             | Left           | Addition, subtraction, concatenation                                       |
        | << >>                             | Left           | Shift left, shift right (bitwise)                                          |
        | < <= > >=                         | NA             | Less than, less than or equal to, greater than, greater than or equal to   |
        | == != === <>                      | NA             | Is equal to, is not equal to, is identical to, is not equal to             |
        | & ^ |                             | Left           | Bitwise AND, bitwise XOR, bitwise OR                                       |
        | && ||                             | Left           | Boolean AND, Boolean OR                                                    |
        | ?:                                | Right          | Ternary operator                                                           |
        | = += *= /= .= %=&= |= ^= <<= >>=  | Right          |  Assignment operators                                                      |
        | AND XOR OR                        | Left           | Boolean AND, Boolean XOR, Boolean OR                                       |
        | ,                                 | Left           | Expression separation                                                      |
        |-----------------------------------|----------------|----------------------------------------------------------------------------|

        