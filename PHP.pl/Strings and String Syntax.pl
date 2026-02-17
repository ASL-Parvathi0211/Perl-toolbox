# String Interpolation
        To offer developers the maximum flexibility when working with string values, PHP offers a means for both literal and figurative interpretation. For example, consider the following string The $animal jumped over the wall.\n
        You might assume that $animal is a variable and that \n is a newline character, and therefore both should be interpreted accordingly. However, what if you want to output the string exactly as it is written, or perhaps you want the newline to be rendered but want the variable to display in its literal form ($animal), or vice versa? All of these variations are possible in PHP, depending on how the strings are enclosed and whether certain key characters are escaped through a predefined sequence.
        
    # Double Quotes Strings enclosed in double quotes are the most commonly used in PHP scripts because they offer the most flexibility. This is because both variables and escape sequences will be parsed accordingly.
        Consider the following example
            <?php
            $sport = "boxing";
            echo "Jason's favorite sport is $sport.";
            ?>
        This example returns the following: Jason's favorite sport is boxing.  

    # Escape Sequences
        Escape sequences are also parsed.
        Consider this example:
            <?php
            $output = "This is one line.\nAnd this is another line."; echo $output;
            ?>
        This returns the following (as viewed from within the browser source): This is one line.
        And this is another line.  

    # Single Quotes
        Enclosing a string within single quotes is useful when the string should be interpreted exactly as stated. This means that both variables and escape sequences will not be interpreted when the string is parsed.
        For example, consider the following single-quoted string: print 'This string will $print exactly as it\'s \n declared.';
        This produces the following:
        This string will $print exactly as it's \n declared.  

    # Curly Braces
        While PHP is perfectly capable of interpolating variables representing scalar data types, you’ll find that variables representing complex data types such as arrays or objects cannot be so easily parsed when embedded in an echo() or print() string.
        You can solve this issue by delimiting the variable in curly braces, like this:
            echo "The capital of Ohio is {$capitals['ohio']}.";
            
    # Heredoc
        Heredoc syntax offers a convenient means for outputting large amounts of text. Rather than delimiting strings with double or single quotes, two identical identifiers are employed.
        An example follows:
            <?php
            $website = "http://www.romatermini.it"; echo <<<EXCERPT
            <p>Rome's central train station, known as <a href = "$website">Roma Termini</a>, was built in 1867. Because it had fallen into severe disrepair in the late 20th century, the government knew that considerable resources were required to rehabilitate the station prior to the 50-year <i>Giubileo</i>.</p>
            EXCERPT;
            ?>
        Several points are worth noting regarding this example:
        The opening and closing identifiers (in the case of this example, EXCERPT) must be identical.The opening identifier must be preceded with three left-angle brackets (<<<).Heredoc syntax follows the same parsing rules as strings enclosed in double quotes.
        That is, both variables and escape sequences are parsed. The only difference is that double quotes do not need to be escaped.The closing identifier must begin at the very beginning of a line. It cannot be preceded with spaces or any other extraneous character.
        
    # Nowdoc
        Introduced in PHP 5.3, nowdoc syntax operates identically to heredoc syntax, except that none of the text delimited within a nowdoc is parsed. If you would like to display, for instance, a snippet of code in the browser, you could embed it within a nowdoc statement; when subsequently outputting the nowdoc variable, you can be sure that PHP will not attempt to interpolate any of the string as code.
        
