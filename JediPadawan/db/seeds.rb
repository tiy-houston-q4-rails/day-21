
Jedi.destroy_all
Padawan.destroy_all

yoda = Jedi.create name: "Yoda", lightsaber: "Green", age: 700, force_strength: 9

windu = Padawan.create jedi_id: yoda.id, name: "Windu", lightsaber: "Purple", age: 40
luke = Padawan.create jedi: yoda, name: "Luke", lightsaber: "Blue", age: 28

# luke = yoda.padawans.create name: "Luke", lightsaber: "Blue", age: 28, force_strngth: 6
