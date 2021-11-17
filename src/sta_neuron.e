note
	description: "Representation of an {STA_NEURON}."
	EIS: "name=spreadsheet_example", "src=https://youtu.be/W5wD5mIeKws"
	video_description: "[
		The video presents an AI/ML neural-network as a spreadsheet. Doing so
		breaks down the structure and working of an AI NN into something even
		I can understand as a relative layman to AI as a professional.
		
		The real challenge presented here is the training process—that is—how
		to automate the fine-tuning adjustment of the `weight' variable to steer
		the output of the function towards a goal during training.
		]"

deferred class
	STA_NEURON [IV, OV]

feature -- Access

	input_data: attached like internal_input_data
			-- The `input_data' of Current.
		do
			check attached internal_input_data as al_object then Result := al_object end
		end

	process_function: attached like internal_process_function
			-- The `process_function' of Current.
		do
			check attached internal_process_function as al_object then Result := al_object end
		end

	output_data: attached like internal_output_data
			-- The `output_data' of Current.
		do
			check attached internal_output_data as al_object then Result := al_object end
		end

	bias: REAL
			-- The `weight' variable for `process_function'.

feature -- Settings

	set_bias (v: like bias)
			-- `set_bias' (i.e. `bias') to `v'
		do
			bias := v
		end

	set_input_data (v: attached like internal_input_data)
			-- `set_input_data' to `v'.
		do
			internal_input_data := v
		end

	set_process_function (v: attached like internal_process_function)
			-- `set_process_function' to `v' (i.e. FUNCTION)
		do
			internal_process_function := v
		end

feature {NONE} -- Implementation

	internal_input_data: detachable IV
			-- Internal reference to the `input_data' given to the `process_function'.

	internal_process_function: detachable FUNCTION [IV, OV]
			-- Internal reference to the `process_function'.

	internal_output_data: detachable OV
			-- Internal reference to the `output_data' given to the `process_function'.

end
