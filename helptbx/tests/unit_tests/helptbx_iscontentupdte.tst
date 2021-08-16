// Copyright (C) 2008 - 2010 - Michael Baudin
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//
// <-- CLI SHELL MODE -->

// Create a sample file.
content = "Coucou!";
filename = fullfile(TMPDIR,"test.txt");
// See if the content is to be updated.
b = helptbx_iscontentupdte ( content , filename );
expected = %f;
assert_checkequal(b,expected);
// Fill the file
mputl ( content , filename );
// See if the file is to be updated.
b = helptbx_iscontentupdte ( content , filename );
expected = %t;
assert_checkequal(b,expected);
// Change the content
content = "Hello!";
b = helptbx_iscontentupdte ( content , filename );
expected = %f;
assert_checkequal(b,expected);
// Delete the file
mdelete(filename);

