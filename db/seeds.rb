Suspect.create(name: "Steven", sex: "M", family_relationship: "Father", description: "Steven is the patriarch of the Cthulu family. He was murdered in his own home while his entire family was present.",  guilty: false)
Suspect.create(name: "Ana", sex: "F", family_relationship: "Mother", description: "Ana is the matriarch of the Cthulu family. During the murder, she claims she was at the yard, on the phone", guilty: false)
Suspect.create(name: "Nick", sex: "M", family_relationship: "Son", description: "Nick is the eldest son of Steven and Ana Cthulu. During the murder, he claims he was in the living room watching TV. He was the one to find the body.", guilty: false)
Suspect.create(name: "Jodie", sex: "F", family_relationship: "Daughter", description: "Jodie is the youngest daughter of Steven and Ana Cthulu. During the murder, she claims she was in the kitchen.", guilty: false  )

Interrogation.create(room: "Living Room")
Interrogation.create(room: "Yard")
Interrogation.create(room: "Kitchen")