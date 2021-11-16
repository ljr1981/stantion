note
	description: "Summary description for {STA_NEURAL_VALUE}."

deferred class
	STA_NEURAL_VALUE [G -> TUPLE]

feature -- Access

	value: attached like internal_value
			--
		do
			check attached internal_value as al_value then Result := al_value end
		end

feature -- Settings

	set_value (a_value: attached like value)
			--
		do
			internal_value := a_value
		end

feature {NONE} -- Implementation

	internal_value: detachable G

end
