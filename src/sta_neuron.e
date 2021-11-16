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

class
	STA_NEURON [IV, OV -> TUPLE]

feature -- Access

	input_object: attached like internal_input_object
			-- The `input_object' of Current.
		do
			check attached internal_input_object as al_object then Result := al_object end
		end

	process_function: attached like internal_process_function
			-- The `process_function' of Current.
		do
			check attached internal_process_function as al_object then Result := al_object end
		end

	output_object: attached like internal_output_object
			-- The `output_object' of Current.
		do
			check attached internal_output_object as al_object then Result := al_object end
		end

	weight: REAL
			-- The `weight' variable for `process_function'.

feature -- Settings

	set_internal_input_object (a_value: attached like internal_input_object)
			--
		do
			internal_input_object := a_value
		end

	set_internal_process_function (a_value: attached like internal_process_function)
			--
		do
			internal_process_function := a_value
		end

	set_internal_output_object (a_value: attached like internal_output_object)
			--
		do
			internal_output_object := a_value
		end

feature {NONE} -- Implementation

	internal_input_object: detachable STA_NEURAL_INPUT [IV]

	internal_process_function: detachable FUNCTION [IV, OV]

	internal_output_object: detachable STA_NEURAL_OUTPUT [OV]

end
