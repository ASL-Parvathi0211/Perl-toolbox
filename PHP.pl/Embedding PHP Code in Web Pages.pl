# Embedding PHP Code in Your Web Pages
    One of PHP’s advantages is that you can embed PHP code directly alongside HTML. The engine needs some means to immediately determine which areas of the page are PHP-enabled. This is logically accomplished by delimiting the PHP code. There are four delimitation variants.
    
    # Default Syntax
        The default delimiter syntax opens with <?php and concludes with ?>, like this:
            <h3>Welcome!</h3>
            <?php
            echo "<p>Some dynamic output here</p>";
            ?>
            <p>Some static output here</p>
        
    # Short-Tags
        For less motivated typists, an even shorter delimiter syntax is available. Known as short-tags, this syntax forgoes the php reference required in the default syntax. However, to use this feature, you need to enable PHP’s short_open_tag directive. An example follows 
            <?
            print "This is another PHP example.";
            ? >
            
            When short-tags syntax is enabled and you want to quickly escape to and from PHP to output a bitof dynamic text, you can omit these statements using an output variation known as short- circuit syntax:
            
            <?="This is another PHP example.";?>
            This is functionally equivalent to both of the following variations:
            <? echo "This is another PHP example."; ?>
            <?php echo "This is another PHP example.";?>
        
    # Script
        Certain editors have historically had problems dealing with PHP’s more commonly used escape syntax variants. Therefore, support for another mainstream delimiter variant, <script>, is offered:
            <script language="php">
            print "This is another PHP example.";
            </script>  

# ASP Style
    Microsoft ASP pages employ a delimiting strategy similar to that used by PHP, delimiting static from dynamic syntax by using a predefined character pattern: opening dynamic syntax with <%, and concluding with %>. If you’re coming from an ASP background and prefer to continue using this escape syntax, PHP supports it. Here’s an example:  
        <%
        print "This is another PHP example.";
        %>
    
    # Embedding Multiple Code Blocks
        You can escape to and from PHP as many times as required within a given page. For instance, the following example is perfectly acceptable:
        <html>
        <head>
        <title><?php echo "Welcome to my web site!";?></title>
        </head>
        <body>
        <?php
        $date = "July 26, 2010";
        ?>
        <p>Today's date is <?=$date;?></p>
        </body>
        </html>
    
    # Outputting Data to the Browser
    # The print() Statement
    The print() statement outputs data passed to it . Its prototype looks like this:
        int print(argument)
    All of the following are plausible print() statements:
        <?php
        print("<p>I love the summertime.</p>");
        ?>
        <?php
        $season = "summertime";
        print "<p>I love the $season.</p>";
        ?>
        <?php
        print "<p>I love the summertime.</p>";
        ?>
    All these statements produce identical output: I love the summertime.
    
    # The echo() Statement
    Alternatively, you could use the echo() statement for the same purposes as print().echo()’s prototype looks like this:
    
        void echo(string argument1 [, ...string argumentN])
    To use echo(), just provide it with an argument just as was done with print(): echo "I love the summertime.";
    As you can see from the prototype, echo() is capable of outputting multiple strings. Here’s an example:
        <?php
        $heavyweight = "Lennox Lewis";
        $lightweight = "Floyd Mayweather";
        echo $heavyweight, " and ", $lightweight, " are great fighters.";
        ?>
    This code produces the following
    Lennox Lewis and Floyd May weather are great fighters.
    
    # The printf() Statement
    The printf() statement is ideal when you want to output a blend of static text and dynamic information stored within one or several variables. It’s ideal for two reasons. First, it neatly separates the static and dynamic data into two distinct sections, allowing for easy maintenance.Second, printf() allows you to wield considerable control over how the dynamic information is rendered to the screen in terms of its type, precision, alignment, and position.
    Its prototype looks like this:
        integer printf(string format [, mixed args])
    For example, suppose you wanted to insert a single dynamic integer value into an otherwise static string:
        printf("Bar inventory: %d bottles of tonic water.", 100);
    Executing this command produces the following: Bar inventory: 100 bottles of tonic water.
    Commonly Used Type Specifiers
        %b Argument considered an integer; presented as a binary number
        %c Argument considered an integer; presented as a character corresponding to that ASCII value
        %d Argument considered an integer; presented as a signed decimal number
        %f Argument considered a floating-point number; presented as a floating-point number
        %o Argument considered an integer; presented as an octal number
        %s Argument considered a string; presented as a string
        %u Argument considered an integer; presented as an unsigned decimal number
        %x Argument considered an integer; presented as a lowercase hexadecimal number
        %X Argument considered an integer; presented as an uppercase hexadecimal number
    
    # The sprintf() Statement
    The sprintf() statement is functionally identical to printf() except that the output is assigned to a string rather than rendered to the browser. The prototype follows:
        string sprintf(string format [, mixed arguments])
    An example follows:
        $cost = sprintf("$%.2f", 43.2); // $cost = $43.20

