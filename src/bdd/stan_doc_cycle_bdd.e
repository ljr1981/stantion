--|BDD Specification
note
	warning: "DO NOT EDIT--THIS IS GENERATED CODE!!!"
	description: "Documenting a Simplistic Monte Carlo Simulation Engine for Eiffel."

deferred class
	STAN_DOC_CYCLE_BDD
	
feature -- Access



feature -- Settings



feature -- Status Reports

	has_STAN_DOC_CYCLE: BOOLEAN
			-- Do we have STAN_DOC_CYCLE
		deferred
		end

	is_STAN_DOC_CYCLE_produced: BOOLEAN
			-- Did we produce a STAN_DOC_CYCLE.
		deferred
		end



feature -- Basic Operations

	build_STAN_DOC_CYCLE  
			-- Build a STAN_DOC_CYCLE.
		require
			not has_STAN_DOC_CYCLE   -- Do we have STAN_DOC_CYCLE
		deferred
			-- asked to build a STAN_DOC_CYCLE.
		ensure
			is_STAN_DOC_CYCLE_produced   -- Did we produce a STAN_DOC_CYCLE.
		end



feature -- Constants



note
description: "[
Build a STAN_DOC_CYCLE

]"

end

