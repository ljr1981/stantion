note
	description: "Implementation of STAN_DOC_CYCLE_BDD"

	EIS: "name=variables_vs_observations",
			"src=https://rstudio-pubs-static.s3.amazonaws.com/105000_6b9cb29523bb44629934bf9dad12163d.html"

class
	STAN_DOC_CYCLE

inherit
	STAN_DOC_CYCLE_BDD

feature -- Implementation

	has_stan_doc_cycle: BOOLEAN

	is_stan_doc_cycle_produced: BOOLEAN

	build_stan_doc_cycle
			--<Precursor>
		do
			is_stan_doc_cycle_produced := True
		end

note
	variables_vs_observations: "[
Data Matrices, Observations, and Variables
Ben Bradshaw

August 23, 2015

Objectives
==========
Construct a data matrix given a set of observations and variables
Identify observations and variables when given a data matrix
Identify and define the various types of variables

Key vocabulary
==============
A DATA MATRIX IS A MATRIX WHICH STORES DATA. Typically the observations which 
are (also known as cases) are stored as rows within the data matrix, while 
the variables which are also known as characteristics are stored as columns.

An OBSERVATION is a case of the data being collected. For example, if we 
were collecting data on students in the class, the observations would be 
each individual student in the class.

A VARIABLE IS AN ATTRIBUTE OR CHARACTERISTC of the observation we record 
in our data. Again, if we are collecting data on the students in our class, 
and each student is an observation, then a variable might be ‘eye color’ 
or ‘height’

A CONTINUOUS VARIABLE is a numerical variable that takes on real number 
values. An example of this would be the temperature of the room at a given 
point in time.

A DISCRETE VARIABLE is a numeric variable that only takes on integer 
values {1,2,3. . .}. An example of this might be number of days since 
the school year started.

A NOMINAL VARIABLE is a categorical variable that has no natural ordering. 
An example of this might be zip code, or the team that a professional 
soccer player plays on.

A ordinal variable is a categorical variable that that has an ordering. 
For example, a student’s grade level is categorical since it places 
students in a grade category, but it is also ordinal because there is 
a natural ‘order’ to grades {1,2,3. . .}

]"

end
