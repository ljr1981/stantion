note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	DOC_TEST_SET

inherit
	TEST_SET_SUPPORT

	STAN_DOC_CYCLE_BDD_ANY
		undefine
			default_create
		end

feature -- Test routines

	doc_test
			-- New test routine
		note
			testing:  "execution/isolated", "execution/serial"
		do
			(create {STAN_DOC_CYCLE}).build_stan_doc_cycle
		end

end


