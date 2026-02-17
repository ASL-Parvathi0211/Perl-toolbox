# File Inclusion statements
        You can include the content of a PHP file into another PHP file before the server executes it. There are two PHP functions which can be used to included one PHP file into another PHP file. The include() Function The require() Function This is a strong point of PHP which helps in creating functions, headers, footers, or elements that can be reused on multiple pages.
        This will help developers to make it easy to change the layout of complete website with minimal effort. If there is any change required then instead of changing thousand of files just change included file. The include() Function The include() function takes all the text in a specified file and copies it into the file that uses the include function. If there is any problem in loading a file then the include() function generates a warning but the script will continue execution. Assume you want to create a common menu for your website.
        Then create a file menu.php with the following content
            <a href="http://www.tutorialspoint.com/index.htm">Home</a> -
            <a href="http://www.tutorialspoint.com/ebxml">ebXML</a> -
            <a href="http://www.tutorialspoint.com/ajax">AJAX</a> -
            <a href="http://www.tutorialspoint.com/perl">PERL</a> <br />
    
        Now create as many pages as you like and include this file to create header. For example now your test.php file can have following content.
            <html>
            <body>
            <?php include("menu.php"); ?>
            <p>This is an example to show how to include PHP file!</p>
            </body>
            </html>
        
        It will produce the following result
            Home - ebXML - AJAX - PERL
        Ensuring a File is included only once:
        The include_once() function verified whether the file has already been included.
            include_once(filename);
        If a file has already been included; include_once will not execute. Otherwise, it will include the file as necessary.
            The require() Function
        
        The require() function takes all the text in a specified file and copies it into the file that uses the include function. If there is any problem in loading a file then the require() function generates a fatal error and halt the execution of the script. So there is no difference in require() and include() except they handle error conditions. It is recommended to use the require() function instead of include(), because scripts should not continue executing if files are missing or misnamed. You can try using above example with require() function and it will generate same result. But if you will try following two examples where file does not exist then you will get different results.
            <html>
            <body>
            <?php include("xxmenu.php"); ?>
            <p>This is an example to show how to include wrong PHP file!</p>
            </body>
            </html>
            
        This is an example to show how to include wrong PHP file!
            <html>
            <body>
            <?php require("xxmenu.php"); ?>
            <p>This is an example to show how to include wrong PHP file!</p>
            </body>
            </html>
        Ensuring a File Is Required Only Once
        As your site grows, you may find yourself redundantly including certain files. Although this might not always be a problem, sometimes you will not want modified variables in the included file to be overwritten by a later inclusion of the same file. Another problem that arises is the clashing of function names should they exist in the inclusion file.
        You can solve these problems with the require_once() function. Its prototype follows:
            require_once (filename)
        The require_once() function ensures that the inclusion file is included only once in your script. After require_once() is encountered, any subsequent attempts to include the same file will be ignored.
        
    # Functions
        Creating a Function
        Although PHP’s vast assortment of function libraries is a tremendous benefit to anybody seeking to avoid reinventing the programmatic wheel, sooner or later you’ll need to go beyond what is offered in the standard distribution, which means you’ll need to create custom functions or even entire function libraries.
        To do so, you’ll need to define a function using PHP’s supported syntax, which when written in pseudo code looks like this:
            function function Name(parameters)
            {
            function-body
            }
            For example, consider the following function, generateFooter(), which outputs a page footer: function generateFooter()
            {
            echo "Department of Computer Science and Engineering";
            }
            Once defined, you can call this function like so:
            <?php generateFooter();
            ?>
            
            This yields the following result:
                Department of Computer Science and Engineering
                
    # Passing Arguments by Value
        You‘ll often find it useful to pass data into a function. As an example, let’s create a function that calculates an item’s total cost by determining its sales tax and then adding that amount to the price function 
        calcSalesTax($price, $tax)
        {
        $total = $price + ($price * $tax); echo "Total cost: $total";
        }
        This function accepts two parameters, aptly named $price and $tax, which are used in the calculation. Although these parameters are intended to be floating points, because of PHP’s weak typing, nothing prevents you from passing in variables of any datatype, but the outcome might not be what you expect. In addition, you’re allowed to define as few or as many parameters as you deem necessary; there are no language-imposed constraints in this regard.Once defined, you can then invoke the function as demonstrated calcSalesTax() function would be called like so: calcSalesTax(15.00, .075);
        
    # Passing Arguments by Reference
        On occasion, you may want any changes made to an argument within a function to be reflected outside of the function’s scope.
        Passing the argument by reference accomplishes this. Passing an argument by reference is done by appending an ampersand to the front of the argument.Here’s an example:
            <?php
            $cost = 20.99;
            $tax = 0.0575;
            function calculateCost(&$cost, $tax)
            {
            // Modify the $cost variable
            $cost = $cost + ($cost * $tax);\
            // Perform some random change to the $tax variable.
            $tax += 4;
            }
            calculateCost($cost, $tax); printf("Tax is %01.2f%% ", $tax*100); printf("Cost is: $%01.2f", $cost);\
            ?>
            
            Here’s the result:
                Tax is 5.75%
                Cost is $22.20
                
    # Default Argument Values
        Default values can be assigned to input arguments, which will be automatically assigned to the argument if no other value is provided.
        You could then assign $tax the default value of 6.75 percent, like this
            function calcSalesTax($price, $tax=.0675)
            {
            $total = $price + ($price * $tax); echo "Total cost: $total";
            }
            You can still pass $tax another taxation rate; 6.75 percent will be used only if calcSalesTax() is invoked without the second parameter like this:
            $price = 15.47; calcSalesTax($price);
            
    # Using Type Hinting
        PHP 5 introduced a new feature known as type hinting, which gives you the ability to force parameters to be objects of a certain class or to be arrays. Unfortunately, type hinting using scalar data types such as integers and strings is not supported. If the provided parameter is not of the desired type, a fatal error will occur.
        
    # Returning Values from a Function
        Often, simply relying on a function to do something is insufficient; a script’s outcome might depend on a function’s outcome or on changes in data resulting from its execution. Yet variable scoping prevents information from easily being passed from a function body back to its caller, so how can we accomplish this? You can pass data back to the caller by way of the return() statement.
        
    # The return Statement
        The return() statement returns any ensuing value back to the function caller, returning program control back to the caller’s scope in the process. If return() is called from within the global scope, the script execution is terminated.
            function calcSalesTax($price, $tax=.0675)
            {
            $total = $price + ($price * $tax); return $total;
            }
            
    # Returning Multiple Values
        It’s often convenient to return multiple values from a function. For example, suppose that you’d like to create a function that retrieves user data from a database (say the user’s name, e-mail address, and phone number) and returns it to the caller.
        Accomplishing this is much easier than you might think, with the help of a very useful language construct, list(). The list() construct offers a convenient means for retrieving values from an array, like so
            <?php
            function retrieveUserProfile()
            {
            $user[] = "Arifa Tehseen";
            $user[] = "arifa@jbiet.edu.in";
            $user[] = "English"; return $user;
            }
            list($name, $email, $language) = retrieveUserProfile();
            echo "Name: $name, email: $email, language: $language";
            ?>
            
            Executing this script returns the following:
                Name: Arifa Tehseen, email:arifa@jbiet.edu.in, language: English
                
    # Recursive Functions
        Recursive functions, or functions that call themselves, offer considerable practical value to the programmer and are used to divide an otherwise complex problem into a simple case, reiterating that case until the problem is resolved.
        
    # Function Libraries
        Great programmers are lazy, and lazy programmers think in terms of reusability. Functions offer a great way to reuse code and are often collectively assembled into libraries and subsequently repeatedly reused within similar applications. PHP libraries are created via the simple aggregation of function definitions in a single file, like this:
            <?php
            function localTax($grossIncome, $taxRate)
            {
            // function body here
            }
            function stateTax($grossIncome, $taxRate, $age)
            {
            // function body here
            }
            function medicare($grossIncome, $medicareRate)
            {
            // function body here
            }
            ?>

