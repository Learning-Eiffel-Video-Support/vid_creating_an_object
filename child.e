note
	description: "A specialized version of {PERSON} as a {CHILD}"

class
	CHILD

inherit
	PERSON
		redefine
			set_age
		end

create
	default_create,
	make_with_name,
	make_with_data

feature -- Settings (Setters)

	set_age (a_age: like age)
			--<Precursor>
			-- Limiting age to <= 18
		require else
			child: age <= 18
		do
			Precursor (a_age)
		ensure then
			set: age <= 18
		end

end
