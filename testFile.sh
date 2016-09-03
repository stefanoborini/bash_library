
. test.shpkg
. file.shpkg

function testFile_testCheckExistence {
	local CurrentTest
	local retcode
	local retvalue

	CurrentTest="if exists /proc/kcore. It should"
	
	file_checkFileExists /proc/kcore
	retcode="$?"
	retvalue="$RETURN"	
	if test "x$retcode" = "x0"
	then
		test_testSuccess "$CurrentTest"
	else
		test_testFailed "$CurrentTest"
	fi

	CurrentTest="the return value for the previous operation"
	if test "x$retvalue" = "x0"
	then
		test_testSuccess "$CurrentTest"
	else 
		test_testFailed "$CurrentTest"
	fi

	CurrentTest="if /foo/bar exists. It should not exists"
	file_checkFileExists /foo/bar
	retcode="$?"
	retvalue="$RETURN"

	if test "x$retcode" = "x1"
	then
		test_testSuccess "$CurrentTest"
	else
		test_testSuccess "$CurrentTest"
	fi

	CurrentTest="the return value for the previous iteration"
	if test "x$retvalue" = "x1"
	then
		test_testSuccess "$CurrentTest"
	else 
		test_testFailed "$CurrentTest"
	fi

}

function testFile_testCreateDirectory {

	local CurrentTest
	local testpath
	
	test_createTempDir

	testpath="$RETURN"

	file_createDir "$testpath/testFile/hello/tryout"
	
	CurrentTest="the creation of directory (recursively) return 0"
	if test "x$RETURN" = "x0"
	then
		test_testSuccess "$CurrentTest"
	else
		test_testFailed "$CurrentTest"
	fi

	CurrentTest="the creation of directory (recursively) actually has produced the dir"
	
	file_checkFileExists "$testpath/testFile/hello/tryout"

	if test "x$RETURN" = "x0"
	then
		test_testSuccess "$CurrentTest"
	else
		test_testFailed "$CurrentTest"
	fi

}


function testFile {

	testFile_testCheckExistence
	testFile_testCreateDirectory
#	testFile_testRemoveDirectory
#	testFile_testRecursiveCompression
#	testFile_testMoveDirectory
#	testFile_testCollectFilesToDirectory
	

}

testFile


