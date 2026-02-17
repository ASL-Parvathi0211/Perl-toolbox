# Identifiers
    Identifier is a general term applied to variables, functions, and various other user-defined objects. There are several properties that PHP identifiers must abide by:
    An identifier can consist of one or more characters and must begin with a letter or an underscore. Furthermore, identifiers can consist of only letters, numbers, underscore characters, and other ASCII characters from 127 through 255. 
        |-------------|----------------|
        | Valid       | Invalid        |
        | my function | This & that    |
        | Size        | !counter       |
        | someword    | 4ward          |
  
    ➢ Identifiers are case sensitive. Therefore, a variable named $recipe is different from a variable named $Recipe, $rEciPe, or $recipE.
    ➢ Identifiers can be any length. This is advantageous because it enables a programmer to accurately describe the identifier’s purpose via the identifier name.
    ➢ An identifier name can’t be identical to any of PHP’s predefined keywords.  

# Variables
    A variable is a symbol that can store different values at different times. For example, suppose you create a web-based calculator capable of performing mathematical tasks.
        
    # Variable Declaration
        A variable always begins with a dollar sign, $, which is then followed by the variable name.
        Variable names follow the same naming rules as identifiers.
        That is, a variable name can begin with either a letter or an underscore and can consist of letters, underscores, numbers, or other
        ASCII characters rangingfrom 127 through 255. The following are all valid variables:
            $color
            $operating_system
            $_some_variable
            $model
        Note that variables are case sensitive. For instance, the following variables bear no relation to one another:
            $color
            $Color
            $COLOR
    
    # Value Assignment
        Assignment by value simply involves copying the value of the assigned expression to the variable assignee. This is the most common type of assignment. A few examples follow:
            $color = "red";
            $number = 12;
            $age = 12;
            $sum = 12 + "15"; // $sum = 27.
            
    # Reference Assignment
        PHP 4 introduced the ability to assign variables by reference, which essentially means that you can create a variable that refers to the same content as another variable does. Therefore, a change to any variable referencing a particular item of variable content will be reflected among all other variables referencing that same content. You can assign variables by reference by appending an ampersand (&) to the equal sign.
        Let’s consider an example:
            <?php
            $value1 = "Hello";
            $value2 =& $value1; // $value1 and $value2 both equal "Hello"
            $value2 = "Goodbye"; // $value1 and $value2 both equal "Goodbye"
            ?>
        
        An alternative reference-assignment syntax is also supported, which involves appending the ampersand to the front of the variable being referenced.
        The following example adheres to this new syntax
            <?php
            $value1 = "Hello";
            $value2 = &$value1; // $value1 and $value2 both equal "Hello"
            $value2 = "Goodbye"; // $value1 and $value2 both equal "Goodbye"
            ?>
            
    # Variable Scope
        Scope can be defined as the range of availability a variable has to the program in which it is declared. PHP variables can be one of four scope types Local variables Function parameters Global variables Static variables
        
        # Local Variables
        A variable declared in a function is considered local; that is, it can be referenced solely in that function. Any assignment outside of that function will be considered to be an entirely different variable from the one contained in the function
            <?php
            $x = 4;
            function assignx ()
            {
                $x = 0;
                print "\$x inside function is $x. <br />";
                }
                assignx();
                print "\$x outside of function is $x. <br />";
                ?>
            
            This will produce the following result
                $x inside function is 0.
                $x outside of function is 4.
                
        # Function Parameters
        Function parameters are declared after the function name and inside parentheses. They are declared much like a typical variable would be
            <?php// multiply a value by 10 and return it to the caller function multiply ($value)
            {
                $value = $value * 10; return $value;
                }
                $retval = multiply (10);
                Print "Return value is $retval\n";
                ?>
                
            This will produce the following result
                Return value is 100
                
        # Global Variables
        In contrast to local variables, a global variable can be accessed in any part of the program. However, in order to be modified, a global variable must be explicitly declared to be global in the function in which it is to be modified. This is accomplished, conveniently enough, by placing the keyword GLOBAL in front of the variable that should be recognized as global. Placing this keyword in front of an already existing variable tells PHP to use the variable having that name.
        Consider an example
            <?php
            $somevar = 15;
            function addit()
            { GLOBAL $somevar;$somevar++;print "Somevar is $somevar";}
            addit();
            ?>
            
            This will produce the following result
                Somevar is 16
                
        # Static Variables
        The final type of variable scoping that I discuss is known as static. In contrast to the variables declared as function parameters, which are destroyed on the function's exit, a static variable will not lose its value when the function exits and will still hold that value should the function be called again.
        You can declare a variable to be static simply by placing the keyword STATIC in front of the variable name.
            <?php
            function keep_track() { STATIC $count = 0;
            $count++; print $count; print "<br />";
            }
            keep_track(); keep_track(); keep_track();
            ?>
            
            This will produce the following result
                1
                2
                3
    
    # PHP’s Superglobal Variables
        PHP offers a number of useful predefined variables that are accessible from anywhere within the executing script and provide you with a substantial amount of environment-specific information. You can sift through these variables to retrieve details about the current user session, the user’s operating environment, the local operating environment, and more. PHP creates some of the variables, while the availability and value of many of the other variables are specific to the operating system and web server.
        Therefore, rather than attempt to assemble a comprehensive list of all possible predefined variables and their possible values, the following code will output all predefined variables pertinent to any given web server and the script’s execution environment:
            foreach ($_SERVER as $var => $value)
            {
            echo "$var => $value <br />";
            } 

            |------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
            | S.No | Variable & Description                                                                                                                                                                                                                                                                               |               
            | 1    | $_GLOBALS: Contains a reference to every variable which is currently available within the global scope of the script. The keys of this array are the names of the global variables.                                                                                                                  |
            | 2    | $_SERVER: This is an array containing information such as headers, paths, and script locations. The entries in this array are created by the web server. There is no guarantee that every web server will provide any of these. See next section for a complete list of all the SERVER variables.    |
            | 3    | $_GET: An associative array of variables passed to the current script via the HTTP GET method.                                                                                                                                                                                                       |
            | 4    | $_POST: An associative array of variables passed to the current script via the HTTP POST method.                                                                                                                                                                                                     |
            | 5    | $_FILES: An associative array of items uploaded to the current script via the HTTP POST method.                                                                                                                                                                                                      |
            | 6    | $_REQUEST: An associative array consisting of the contents of $_GET, $_POST, and  $_COOKIE.                                                                                                                                                                                                          |
            | 7    | $_COOKIE: An associative array of variables passed to the current script via HTTP cookies.                                                                                                                                                                                                           |
            | 8    | $_SESSION: An associative array containing session variables available to the current script.                                                                                                                                                                                                        |
            | 9    | $_PHP_SELF: A string containing PHP script file name in which it is called.                                                                                                                                                                                                                          |
            | 10   | $php_errormsg: $php_errormsg is a variable containing the text of the last error message generated by PHP.                                                                                                                                                                                           |
            |------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|

    # Variable Variables
        On occasion, you may want to use a variable whose content can be treated dynamically as a variable in itself. Consider this typical variable assignment $recipe = "spaghetti";
        Interestingly, you can treat the value spaghetti as a variable by placing a second dollar sign in front of the original variable name and again assigning another value
            $$recipe = "& meatballs";
        This in effect assigns & meatballs to a variable named spaghetti. Therefore, the following two snippets of code produce the same result
            echo $recipe $spaghetti; echo $recipe ${$recipe};
            The result of both is the string spaghetti & meatballs.
    
