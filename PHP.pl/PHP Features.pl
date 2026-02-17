# PHP Features
    Every user has specific reasons for using PHP to implement a mission-critical application, although one could argue that such motives tend to fall into four key categories: practicality, power, possibility, and price.  

# Practicality
    From the very start, the PHP language was created with practicality in mind. After all, Lerdorf’s original intention was not to design an entirely new language, but to resolve a problem that had no readily available solution. Furthermore, much of PHP’s early evolution was not the result of the explicit intention to improve the language itself, but rather to increase its utility to the user. The result is a language that allows the user to build powerful applications even with a minimum of knowledge.
    PHP is a loosely typed language, meaning there is no need to explicitly create, typecast, or destroy a variable, although you are not prevented from doing so. PHP handles such matters internally, creating variables on the fly as they are called in a script, and employing a best-guess formula for automatically typecasting variables. For instance, PHP considers the following set of statements to be perfectly valid:
        <?php  
        $number = "5"; // $number is a string
        $sum = 15 + $number; // Add an integer and string to produce integer
        $sum = "twenty"; // Overwrite $sum with a string.
        ?>
    PHP will also automatically destroy variables and return resources to the system when the script completes.
    
# Power
    PHP developers have almost 200 native libraries containing well over 1,000 functions, in addition to thousands of third-party extensions.
    Although you’re likely aware of PHP’s ability to interface with databases, manipulate form information, and create pages dynamically, you might not know that PHP can also do the following: Create and manipulate Adobe Flash and Portable Document Format (PDF) files.
    Evaluate a password for guess ability by comparing it to language dictionaries and easily broken patterns. Parse even the most complex of strings using the POSIX and Perl-based regular expression libraries. Authenticate users against login credentials stored in flat files, databases, and even Microsoft’s Active Directory. Communicate with a wide variety of protocols, including LDAP, IMAP, POP3, NNTP, and DNS, among others. Tightly integrate with a wide array of credit-card processing solutions.  

# Possibility
    PHP developers are rarely bound to any single implementation solution. On the contrary, a user is typically fraught with choices offered by the language. For example, consider PHP’s array of database support options. Native support is offered for more than 25 database products, including Adabas D,dBase, Empress, FilePro, FrontBase, Hyperwave, IBM DB2, Informix, Ingres, InterBase, mSQL, Microsoft SQL Server, MySQL, Oracle, Ovrimos, PostgreSQL, Solid, Sybase, Unix dbm, and Velocis.PHP’s flexible string parsing capabilities offer users of differing skill sets the opportunity to not only immediately begin performing complex string operations but also to quickly port programs of similar functionality (such as Perl and Python) over to PHP.  

# Price
    PHP is available free of charge! Since its inception, PHP has been without usage, modification, and redistribution restrictions. In recent years, software meeting such open licensing qualifications has been referred to as open source software. Open source software and the Internet go together like bread and butter. Open source projects such as Send mail, Bind, Linux, and Apache all play enormous roles in the ongoing operations of the Internet at large. Although open source software’s free availability has been the point most promoted by the media, several other characteristics are equally important: Free of licensing restrictions imposed by most commercial products:
    Open source software users are freed of the vast majority of licensing restrictions one would expect of commercial counterparts.
    Although some discrepancies do exist among license variants, users are largely free to modify, redistribute, and integrate the software into other products. Open development and auditing process: Although not without incidents, open source software has long enjoyed a stellar security record. Such high-quality standards are a result of the open development and auditing process.
    Because the source code is freely available for anyone to examine, security holes and potential problems are rapidly found and fixed.
    This advantage was perhaps best summarized by open source advocate Eric S. Raymond, who wrote “Given enough eyeballs, all bugs are shallow.”Participation is encouraged: Development teams are not limited to a particular organization. Anyone who has the interest and the ability is free to join the project. The absence of member restrictions greatly enhances the talent pool for a given project, ultimately contributing to a higher-quality product. 

