Suspect.create(name: "Steven", sex: "M", status: "dead", family_relationship: "Father", description: "Steven is the patriarch of the Cthulu family. He was murdered in his own home while his entire family was present.", guilty: false)
Suspect.create(name: "Ana", sex: "F", status: "alive", family_relationship: "Mother", description: "Ana is the matriarch of the Cthulu family. During the murder, she claims she was at the yard, on the phone.", guilty: false)
Suspect.create(name: "Nick", sex: "M", status: "alive", family_relationship: "Son", description: "Nick is the eldest son of Steven and Ana Cthulu. During the murder, he claims he was in the living room watching TV. He was the one to find the body.", guilty: false)
Suspect.create(name: "Jodie", sex: "F", status: "alive", family_relationship: "Daughter", description: "Jodie is the youngest daughter of Steven and Ana Cthulu. During the murder, she claims she was in the kitchen.", guilty: false  )

Interrogation.create(suspect_id: 3, room: "Living Room")
Interrogation.create(suspect_id: 2, room: "Yard")
Interrogation.create(suspect_id: 4, room: "Kitchen")
