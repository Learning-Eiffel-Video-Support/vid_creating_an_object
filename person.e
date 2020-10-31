note
	description: "Representation of a {PERSON}"
	explanation: "[
		Notice that this class is a little more complex that the
		one in the video (see class notes at the end of this class).
		Why is it more complex? Because we need it to be more "real world"-ish
		as an example. The other was just too plain and not really real.
		]"

		-- Hover and click open!
	EIS: "name=try", "src=https://www.eiffel.com"
	EIS: "name=buy", "src=https://account.eiffel.com/licenses/_/buy/"
	-- Code commercial for less than 41 cents a day!

	EiS: "name=other_demos", "src=https://github.com/Learning-Eiffel-Video-Support"

	EIS: "name=video_demo", "src=https://youtu.be/dN2HHDef4Ig"
	EIS: "name=learning_eiffel_channel", "src=https://www.youtube.com/playlist?list=PLf9JgTngKbj417KYiyb4iv88GYAlhN7FX"

class
	PERSON

inherit
	ANY
		redefine
			default_create
		end

create
	default_create,
	make_with_name,
	make_with_data

feature {NONE} -- Initialization

	default_create
			--<Precursor>
		note
			use_case: "[
				When we want to make a PERSON, but we do not know name or
				age just yet.
				]"
		do
			Precursor
			create name.make_empty
		ensure then
			set_empty: attached name as al_name and then al_name.is_empty
		end

	make_with_name (a_name: like name)
			-- `make_with_name' of `a_name'.
		do
			name := a_name
		ensure
			set: name ~ a_name and then name.same_string (a_name)
		end

	make_with_data (a_name: like name; a_age: like age)
			-- Initialize with all data to set into Current {PERSON}.
		do
			make_with_name (a_name)
			set_age (a_age)
		ensure
			set: age = a_age
		end

feature -- Access

	name: STRING
			-- `name' of {PERSON} (Current).

	age: INTEGER
			-- `age' of {PERSON} (Current).

feature -- Basic Operations

	reset
			-- Reset to empty
		do
			name.wipe_out
			set_age (0)
		ensure
			name_empty: name.is_empty
			age_zero: age = 0
		end

feature -- Settings (or Setters)

	set_name (a_name: like name)
			-- `set_name' into `name' with `a_name'.
		do
			name := a_name
		ensure
			set: name ~ a_name and then name.same_string (a_name)
		end

	set_age (a_age: like age)
			-- `set_age' of `a_age' into `age'.
		do
			age := a_age
		ensure
			set: age = a_age
		end

note
	-- Hover and click open!
EIS: "name=try", "src=https://www.eiffel.com"
EIS: "name=buy", "src=https://account.eiffel.com/licenses/_/buy/"
-- Code commercial for less than 41 cents a day!

EiS: "name=other_demos", "src=https://github.com/Learning-Eiffel-Video-Support"

EIS: "name=video_demo", "src=https://youtu.be/dN2HHDef4Ig"
EIS: "name=learning_eiffel_channel", "src=https://www.youtube.com/playlist?list=PLf9JgTngKbj417KYiyb4iv88GYAlhN7FX"

end
