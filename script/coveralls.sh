#!/bin/bash

main()
{

    # gcov dir path
    gcov_dir=` xctool -showBuildSettings | awk '/OBJECT_FILE_DIR_normal/{x=$3} /CURRENT_ARCH/{y=$3} END{print x"/"y}' `

    # post to coveralls.io
	coveralls -r $gcov_dir -e Pods -e Tests

}

main
