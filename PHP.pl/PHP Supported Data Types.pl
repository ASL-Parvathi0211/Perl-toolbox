# PHP’s Supported Data Types
    A datatype is the generic name assigned to any data sharing a common set of characteristics. Common data types include Boolean, integer, float, string, and array.
    
    # Scalar Data Types
        Scalar data types are used to represent a single value. Several data types fall under this category, including Boolean, integer, float, and string.
        
    # Boolean
        The Boolean datatype is named after George Boole (1815–1864), a mathematician who is considered to be one of the founding fathers of information theory. The Boolean data type represents truth, supporting only two values: TRUE and FALSE (case insensitive). Alternatively, you can use zero to represent FALSE, and any nonzero value to represent TRUE.
        A few examples follow:
            $alive = false; // $alive is false.
            $alive = 1; // $alive is true.
            $alive = -1; // $alive is true.
            $alive = 5; // $alive is true.
            $alive = 0; // $alive is false.
            
    # Integer
        An integer is representative of any whole number or, in other words, a number that does not contain fractional parts. PHP supports integer values represented in base 10 (decimal), base 8 (octal), and base 16 (hexadecimal) numbering systems.
        Several examples follow
            42 // decimal
            -678900 // decimal
            0755 // octal
            0xC4E // hexadecimal
        The maximum supported integer size is platform-dependent, although this is typically positive or negative 2^31 for PHP version 5 and earlier. PHP 6 introduced a 64-bit integer value, meaning PHP will support integer values up to positive or negative 2^63 in size.
            
    # Float
        Floating-point numbers, also referred to as floats, doubles, or real numbers, allow you to specify numbers that contain fractional parts. Floats are used to represent monetary values, weights, distances, and a whole host of other representations in which a simple integer value won’t suffice. PHP’s floats can be specified in a variety of ways, several of which are demonstrated here:
            4.5678
            4.0
            8.7e4
            1.23E+11
                
    # String
        Simply put, a string is a sequence of characters treated as a contiguous group. Strings are delimited by single or double quotes.
        The following are all examples of valid strings: "PHP is a great language"
        "whoop-de-do" '*9subway\n' "123$%^789"
        For example, consider the following string:
            $color = "maroon";
        You could retrieve a particular character of the string by treating the string as an array, like this:
            $parser = $color[2]; // Assigns 'r' to $parser
        
# Compound Data Types
        Compound data types allow for multiple items of the same type to be aggregated under a single representative entity. The array and the object fall into this category. 

    # Array
    It’s often useful to aggregate a series of similar items together, arranging and referencing them in some specific way. This data structure, known as an array, is formally defined as an indexed collection of data values. Each member of the array index (also known as the key) references a corresponding value and can be a simple numerical reference to the value’s position in the series, or it could have some direct correlation to the value.
    For example, if you were interested in creating a list of U.S. states, you could use a numerically indexed array, like so:
        $state[0] = "Alabama";
        $state[1] = "Alaska";
        $state[2] = "Arizona";
        ...
        $state[49] = "Wyoming";
        But what if the project required correlating U.S. states to their capitals? Rather than base the keys on a numerical index, you might instead use an associative index, like this:
        $state["Alabama"] = "Montgomery";
        $state["Alaska"] = "Juneau";
        $state["Arizona"] = "Phoenix";...
        $state["Wyoming"] = "Cheyenne";  

    # Object
        The other compound data type supported by PHP is the object. The object is a central concept of the object-oriented programming paradigm. Unlike the other data types contained in the PHP language, an object must be explicitly declared. This declaration of an object’s characteristics and behavior takes place within something called a class.Here’s a general example of a class definition and subsequent invocation:
            class Appliance {
            private $_power;
            function setPower($status) {
            $this->_power = $status;
            }
            }
            ...
            $blender = new Appliance;
        A class definition creates several attributes and functions pertinent to a data structure, in this case a data structure named Appliance. There is only one attribute, power, which can be modified by using the method setPower().
        Remember, however, that a class definition is a template and cannot itself be manipulated. Instead, objects are created based on this template. This is accomplished via the new keyword. Therefore, in the last line of the previous listing, an object of class Appliance named blender is created.
        The blender object’s power attribute can then be set by making use of the method setPower():
            $blender->setPower("on");
        
# Converting Between Data Types Using Type Casting
        Converting values from one data type to another is known as type casting. A variable can be evaluated once as a different type by casting it to another. This is accomplished by placing the intended type in front of the variable to be cast. 
            |-------------------------------|-----------------|
            | Cast Operators                | Conve           |
            | (array)                       | Array           |
            | (bool) or (boolean)           | Boole           |
            | (int) or (integer)            | Intege          |
            | (Object)                      | Object          |
            | (real) or (double) or (float) | Float           |
            | (String)                      | String          |
            |-------------------------------|-----------------|

        Let’s consider several examples. Suppose you’d like to cast an integer as a double:
            $score = (double) 13; // $score = 13.0
        Type casting a double to an integer will result in the integer value being rounded down, regardless of the decimal value. Here’s an example:
            $score = (int) 14.8; // $score = 14
        
        What happens if you cast a string datatype to that of an integer?
        Let's find out:
            $sentence = "This is a sentence"; echo (int) $sentence; // returns 0
        While likely not the expected outcome, it’s doubtful you’ll want to cast a string like this anyway. You can also cast a datatype to be a member of an array. The value being cast simply becomes the first element of the array:
            $score = 1114;
            $scoreboard = (array) $score;
            echo $scoreboard[0]; // Outputs 1114
            
        One final example: any data type can be cast as an object. The result is that the variable becomes an attribute of the object, the attribute having the name scalar:
            $model = "Toyota";
            $obj = (object) $model;
            The value can then be referenced as follows: print $obj->scalar; // returns "Toyota"
            Adapting Data Types with Type Juggling
        
        Because of PHP’s lax attitude toward type definitions, variables are sometimes automatically cast to best fit the circumstances in which they are referenced. Consider the following snippet:
            <?php
            $total = 5; // an integer
            $count = "15"; // a string
            $total += $count; // $total = 20 (an integer)
            ?>
            The outcome is the expected one; $total is assigned 20, converting the $count variable from a string to an integer in the process.
            
        Here’s another example demonstrating PHP’s type-juggling capabilities:
            <?php
            $total = "45 fire engines";
            $incoming = 10;
            $total = $incoming + $total; // $total = 55
            ?>
            The integer value at the beginning of the original $total string is used in the calculation. However, if it begins with anything other than a numerical representation, the value is 0.
            
            Consider another example:
                <?php
                $total = "1.0";
                if ($total) echo "We're in positive territory!";
                ?>
                In this example, a string is converted to Boolean type in order to evaluate the if statement.
                
            Consider one last particularly interesting example. If a string used in a mathematical calculation includes ., e, or E (representing scientific notation), it will be evaluated as a float:
                <?php
                $val1 = "1.2e3"; // 1,200
                $val2 = 2;
                echo $val1 * $val2; // outputs 2400
                ?>
                
    # Type-Related Functions
        A few functions are available for both verifying and converting data types.
        
        Retrieving Types
            The gettype() function returns the type of the provided variable. In total, eight possible return values are available: array, boolean, double, integer, object, resource, string, and unknown type. Its prototype follows:string gettype(mixed var)
        
        Converting Types
            The settype() function converts a variable to the type specified by type. Seven possible type values are available: array, boolean, float, integer, null, object, and string. If the conversion is successful, TRUE is returned; otherwise, FALSE is returned. Its prototype follows:boolean settype(mixed var, string type)
            
    # Type Identifier Functions
        A number of functions are available for determining a variable’s type, including is_array(), is_bool(),is_float(), is_integer(), is_null(), is_numeric(), is_object(), is_resource(), is_scalar(), and is_string(). Because all of these functions follow the same naming convention, arguments, and return values, their introduction is consolidated into a single example.The generalized prototype follows:
            boolean is_name(mixed var)
        All of these functions are grouped in this section because each ultimately accomplishes the same task. Each determines whether a variable, specified by var, satisfies a particular condition specified by the function name. If var is indeed of the type tested by the function name, TRUE is returned; otherwise, FALSE is returned.
        An example follows:
            <?php
            $item = 43;
            printf("The variable \$item is of type array: %d <br />", is_array($item)); printf("The variable \$item is of type integer: %d <br />", is_integer($item)); printf("The variable \$item is numeric: %d <br />", is_numeric($item));?>
            This code returns the following:
            The variable $item is of type array: 0 The variable $item is of type integer: 1 The variable $item is numeric: 1
