note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	STA_NEURON_TEST_SET

inherit
	TEST_SET_SUPPORT

feature -- Test routines

	sta_neuron_test
			-- New test routine
		note
			testing:  "covers/{STA_NEURON}",
				"execution/isolated", "execution/serial"
		local
			l_item: STA_NEURON_MULT_IN_OUT
		do
			create l_item
			l_item.set_bias (1.0)
			l_item.set_input_data (<<0.25, 0.50>>)
		end

end


