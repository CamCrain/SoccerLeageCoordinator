// PLAYER DICTIONARIES - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// Each dictionary contains all the information on a single player.

let joeSmith: [String: Any] = [
    "Name": "Joe Smith",
    "Height": 42,
    "Soccer Experience": true,
    "Guardian Name(s)": "Jim and Jan Smith"
]

let jillTanner: [String: Any] = [
"Name": "Jill Tanner",
"Height": 36,
"Soccer Experience": true,
"Guardian Name(s)": "Clara Tanner"
]

let billBon: [String: Any] = [
    "Name": "Bill Bon",
    "Height": 43,
    "Soccer Experience": true,
    "Guardian Name(s)": "Sara and Jenny Bon"
]

let evaGordan: [String: Any] = [
    "Name": "Eva Gordan",
    "Height": 45,
    "Soccer Experience": false,
    "Guardian Name(s)": "Wendy and Mike Gordan"
]

let mattGill: [String: Any] = [
    "Name": "Matt Gill",
    "Height": 40,
    "Soccer Experience": false,
    "Guardian Name(s)": "Charles and Sylvia Gill"
]

let kimmyStein: [String: Any] = [
    "Name": "Kimmy Stein",
    "Height": 41,
    "Soccer Experience": false,
    "Guardian Name(s)": "Bill and Hillary Stein"
]

let sammyAdams: [String: Any] = [
    "Name": "Sammy Adams",
    "Height": 45,
    "Soccer Experience": false,
    "Guardian Name(s)": "Jeff Adams"
]

let karlSaygan: [String: Any] = [
    "Name": "Karl Saygan",
    "Height": 42,
    "Soccer Experience": true,
    "Guardian Name(s)": "Heather Bledsoe"
]

let suzaneGreenberg: [String: Any] = [
    "Name": "Suzane Greenberg",
    "Height": 44,
    "Soccer Experience": true,
    "Guardian Name(s)": "Henrietta Dumas"
]

let salDali: [String: Any] = [
    "Name": "Sal Dali",
    "Height": 41,
    "Soccer Experience": false,
    "Guardian Name(s)": "Gala Dali"
]

let joeKavalier: [String: Any] = [
    "Name": "Joe Kavalier",
    "Height": 39,
    "Soccer Experience": false,
    "Guardian Name(s)": "Sam and Elaine Kavalier"
]

let benFinkelstein: [String: Any] = [
    "Name": "Ben Finkelstein",
    "Height": 44,
    "Soccer Experience": false,
    "Guardian Name(s)": "Aaron and Jill Finkelstein"
]

let diegoSoto: [String: Any] = [
    "Name": "Diego Soto",
    "Height": 41,
    "Soccer Experience": true,
    "Guardian Name(s)": "Robin and Sarika Soto"
]

let chloeAlaska: [String: Any] = [
    "Name": "Chloe Alaska",
    "Height": 47,
    "Soccer Experience": false,
    "Guardian Name(s)": "David and Jamie Alaska"
]

let arnoldWillis: [String: Any] = [
    "Name": "Arnold Willis",
    "Height": 43,
    "Soccer Experience": false,
    "Guardian Name(s)": "Claire Willis"
]

let phillipHelm: [String: Any] = [
    "Name": "Phillip Helm",
    "Height": 44,
    "Soccer Experience": true,
    "Guardian Name(s)": "Thomas Helm and Eva Jones"
]

let lesClay: [String: Any] = [
    "Name": "Les Clay",
    "Height": 42,
    "Soccer Experience": true,
    "Guardian Name(s)": "Wynonna Brown"
]

let herschelKrustofski: [String: Any] = [
    "Name": "Herschel Krustofski",
    "Height": 45,
    "Soccer Experience": true,
    "Guardian Name(s)": "Hyman and Rachel Krustofski"
]

// PLAYER COLLECTION - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// Holds all the player dictionaries.

let players: [[String: Any]] = [joeSmith, jillTanner, billBon, evaGordan, mattGill, kimmyStein, sammyAdams, karlSaygan, suzaneGreenberg, salDali, joeKavalier, benFinkelstein, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]

// SKILLED AND NEW PLAYER COLLECTIONS  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// Creates seperate dictionaries for players that have soccer experience and players that don't.

var skilledPlayers = [[String: Any]] ()
var newPlayers = [[String: Any]] ()

for player in players {
    // This loop appends any dictionary from the players array that has soccer experience to the skilledPlayers array, and any that doesn't to the newPlayers array.
    var experience: Bool = player ["Soccer Experience"] as! Bool
    if experience == true {
        skilledPlayers.append(player)
    } else {
        newPlayers.append(player)
    }
}

// TEAMS - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

var teamSharks = [[String: Any]]  ()
var teamDragons = [[String: Any]] ()
var teamRaptors = [[String: Any]] ()

//Assigning an equal number of SKILLED players to each team

var playersIndex = 0

while playersIndex < skilledPlayers.count {
    // This loop takes turn assigning a SKILLED player to each team.
    teamSharks.append(skilledPlayers[playersIndex])
    playersIndex += 1
    teamDragons.append(skilledPlayers[playersIndex])
    playersIndex += 1
    teamRaptors.append(skilledPlayers[playersIndex])
    playersIndex += 1
}

//Assigning an equal number of NEW players to each team

var newPlayersIndex = 0

while newPlayersIndex < newPlayers.count {
    // This loop takes turn assigning a NEW player to each team.
    teamSharks.append(newPlayers[newPlayersIndex])
    newPlayersIndex += 1
    teamDragons.append(newPlayers[newPlayersIndex])
    newPlayersIndex += 1
    teamRaptors.append(newPlayers[newPlayersIndex])
    newPlayersIndex += 1
}

// LETTERS - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

var letters = [String] ()

// LETTERS TO DRAGONS

for dragon in teamDragons {
    // Create individual letters for each Dragon.
    var dragonName: String = dragon["Name"] as! String
    var dragonGuardian: String = dragon["Guardian Name(s)"] as! String
    
    var dragonLetter: String = "Hi \(dragonGuardian), we're excited to tell you that teams have been picked for the upcoming soccer season and little \(dragonName) is on the Dragons! The Dragons' first practice is on Mar 17, at 1PM. See you there!"
    
    letters.append(dragonLetter)
}

// LETTERS TO SHARKS

for shark in teamSharks {
    // Create individual letters for each Shark.
    var sharkName: String = shark["Name"] as! String
    var sharkGuardian: String = shark["Guardian Name(s)"] as! String
    
    var sharkLetter: String = "Hi \(sharkGuardian), we're excited to tell you that teams have been picked for the upcoming soccer season and little \(sharkName) is on the Sharks! The Sharks' first practice is on Mar 17, at 3PM. See you there!"
    
    letters.append(sharkLetter)
}

// LETTERS TO RAPTORS

for raptor in teamRaptors {
    // Create individual letters for each Raptor.
    var raptorName: String = raptor["Name"] as! String
    var raptorGuardian: String = raptor["Guardian Name(s)"] as! String
    
    var raptorLetter: String = "Hi \(raptorGuardian), we're excited to tell you that teams have been picked for the upcoming soccer season and little \(raptorName) is on the Raptors! The Raptors' first practice is on Mar 17, at 3PM. See you there!"
    
    letters.append(raptorLetter)
}

for letter in letters {
    // Print letters for all Dragons.
    print (letter)
}

// THE END







