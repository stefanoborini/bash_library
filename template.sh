#! <Package_name>
#!   the name of the package. This name will be the prefix for
#!   every function inside this package. So if the package is named foo,
#!   every function in it will be called like foo_bar and foo_baz
#! </Package_name>
#! <Package_version>
#!   the current version, in libtool style. This means
#!   three value x:y:z. More on this later.
#! </Package_version>
#! <Depends_on_package>
#!   the packages on which depend this package.
#! </Depends_on_package>
#! <Globals>
#!   the globals variables and how they affect the behaviour of this
#!   package
#! </Globals>
#! <Package_description>
#!   a description of the package
#! </Package_description>
#! <Function_name>
#!  the name of the function
#! </Function_name>
#! <Function_description>
#!   description for each function
#! </Function_description>
#! <Function_parameters>
#!   parametes accepted. document also stdin or stdout if used
#! </Function_parameters>
#! <Return_value>
#!   the value returned with $RETURN. _always_ reset to an empty
#!   value for each function
#! </Return_value>
#! <Return_code>
#!   the code returned with return statement. 0 means OK, anything
#!   different has different meanings but it means that something
#!   has failed (unix standard)
#! </Return_code>


