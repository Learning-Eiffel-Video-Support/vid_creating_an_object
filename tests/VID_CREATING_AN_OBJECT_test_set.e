note
	description: "Examples of object creation"
	testing: "type/manual"

							-- Hover and click open!
	EIS: "name=try", "src=https://www.eiffel.com"
	EIS: "name=buy", "src=https://account.eiffel.com/licenses/_/buy/"
			-- Code commercial for less than 41 cents a day!

	EiS: "name=other_demos", "src=https://github.com/Learning-Eiffel-Video-Support"

	EIS: "name=video_demo", "src=https://youtu.be/dN2HHDef4Ig"
	EIS: "name=learning_eiffel_channel", "src=https://www.youtube.com/playlist?list=PLf9JgTngKbj417KYiyb4iv88GYAlhN7FX"

class
	VID_CREATING_AN_OBJECT_TEST_SET

inherit
	TEST_SET_SUPPORT

feature -- Test routines

	vid_creating_an_object_tests
			-- `vid_creating_an_object_tests'
		note
			explanation: "[
					The primary thing to see is how we can have multiple creations (constructors).
					This fits with what we know instinctively about creating things. A thing can
					be created different ways for different purposes. Each new creation procedure
					reflects this idea.
					
					What surprising but powerful is that this works with inheritance and polymorphism
					as well. This means that while the purpose of a creation procedure can remain
					the same in a descendent (child) class, we can change HOW the creation is
					performed by redefition of the creation procedure in the descendent. In our
					example (below), class {CHILD} is specialized for ages 0 to 18.
				]"
		local
			l_person: PERSON
			l_child: CHILD
		do
			create l_person -- this is the `default_create' version.
			create l_person.make_with_name ("Daffy Duck") -- yes, we can have multiple constructors or creation procedures!
			create l_person.make_with_data ("Porky Pig", 92) -- and yet another creation procedure (constructor)

			create l_child.make_with_data ("Baby Yoda", 2)
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
