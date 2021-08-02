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
	EQA_TEST_SET

feature -- Test routines

	doc_test
			-- New test routine
		note
			testing:  "execution/isolated", "execution/serial"
		local
			l_stan: STAN_DOC_CYCLE_BDD_ANY
		do
			create l_stan
		end

end


