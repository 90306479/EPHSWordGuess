//
//  MessagesViewController.swift
//  MessageApp MessagesExtension
//
//  Created by 90306479 on 2/25/22.
//

import UIKit
import Messages

class MessagesViewController: MSMessagesAppViewController {
    
    @IBOutlet weak var firstLetLabel: UILabel!
    @IBOutlet weak var secondLetLabel: UILabel!
    @IBOutlet weak var thirdLetLabel: UILabel!
    @IBOutlet weak var fourthLetLabel: UILabel!
    @IBOutlet weak var fifthLetLabel: UILabel!
    @IBOutlet weak var hiddenLabel: UILabel!
    
    @IBOutlet weak var QKey: UIButton!
    @IBOutlet weak var WKey: UIButton!
    @IBOutlet weak var EKey: UIButton!
    @IBOutlet weak var RKey: UIButton!
    @IBOutlet weak var TKey: UIButton!
    @IBOutlet weak var YKey: UIButton!
    @IBOutlet weak var UKey: UIButton!
    @IBOutlet weak var IKey: UIButton!
    @IBOutlet weak var OKey: UIButton!
    @IBOutlet weak var PKey: UIButton!
    @IBOutlet weak var AKey: UIButton!
    @IBOutlet weak var SKey: UIButton!
    @IBOutlet weak var DKey: UIButton!
    @IBOutlet weak var FKey: UIButton!
    @IBOutlet weak var GKey: UIButton!
    @IBOutlet weak var HKey: UIButton!
    @IBOutlet weak var JKey: UIButton!
    @IBOutlet weak var KKey: UIButton!
    @IBOutlet weak var LKey: UIButton!
    @IBOutlet weak var ZKey: UIButton!
    @IBOutlet weak var XKey: UIButton!
    @IBOutlet weak var CKey: UIButton!
    @IBOutlet weak var VKey: UIButton!
    @IBOutlet weak var BKey: UIButton!
    @IBOutlet weak var NKey: UIButton!
    @IBOutlet weak var MKey: UIButton!
    @IBOutlet weak var BackKey: UIButton!
    @IBOutlet weak var GoKey: UIButton!
    
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    var currentLabel: UILabel!
    
    var keyButtons:[UIButton]!
    var letterLabels:[UILabel]!
    
    let wordOptions:[String] = ["ABASE", "ABATE", "ABBEY", "ABBOT", "ABEND", "ABHOR", "ABIDE", "ABLED", "ABLES", "ABODE", "ABORT", "ABOUT", "ABOVE", "ABUSE", "ABYSS", "ACHED", "ACHES", "ACIDS", "ACING", "ACORN", "ACRES", "ACTED", "ACTOR", "ADAGE", "ADAPT", "ADDED", "ADDER", "ADIEU", "ADIOS", "ADLIB", "ADMIT", "ADOPT", "ADORE", "ADORN", "ADULT", "AFFIX", "AFOOT", "AFORE", "AFOUL", "AGENT", "AGGRO", "AGILE", "AGONY", "AHEAD", "AILED", "AIMED", "AIRED", "AISLE", "AITCH", "ALARM", "ALBUM", "ALDER", "ALEPH", "ALERT", "ALGAE", "ALIBI", "ALIGN", "ALIKE", "ALLAY", "ALLEY", "ALLOT", "ALLOW", "ALLOY", "ALOFT", "ALOHA", "ALONE", "ALOOF", "ALOUD", "ALPHA", "AMAZE", "AMBER", "AMBLE", "AMIGO", "AMITY", "AMPLY", "AMUSE", "ANGEL", "ANGRY", "ANGST", "ANKLE", "ANNEX", "ANNOY", "ANNUL", "ANODE", "ANVIL", "AORTA", "APART", "APPLE", "APRON", "APTLY", "AREAS", "ARIAS", "ARMOR", "AROMA", "ARROW", "ARSED", "ASIDE", "ASKED", "ASKEW", "ATLAS", "ATOLL", "ATTIC", "AUDIO", "AUNTS", "AURAL", "AZURE", "BACKS", "BACON", "BAGEL", "BALSA", "BANAL", "BANJO", "BARDS", "BARED", "BARES", "BARFS", "BARGE", "BARNS", "BARON", "BASIC", "BASIL", "BASIS", "BASSY", "BATCH", "BATON", "BAYED", "BEACH", "BEATS", "BEAUX", "BEEFS", "BEEFY", "BEEPS", "BEERS", "BEERY", "BEETS", "BEGAN", "BEGAT", "BEGET", "BEGOT", "BEIGE", "BELIE", "BERET", "BESET", "BEVVY", "BILLS", "BIRDS", "BLADE", "BLAST", "BLIMP", "BLUNT", "BLURB", "BLURP", "BLURS", "BLURT", "BLUSH", "BOAST", "BOGEY", "BOLTS", "BONGO", "BOOST", "BOOTH", "BORON", "BOZOS", "BRAGS", "BREAD", "BROWN", "BUGLE", "BUZBY", "CABER", "CAMEL", "CANDY", "CAPER", "CAPON", "CARRY", "CARTS", "CARVE", "CEDAR", "CEDES", "CELEB", "CELLO", "CENTS", "CHARY", "CHEAP", "CHEAT", "CHEWY", "CHICK", "CHIME", "CHIMP", "CHING", "CIDER", "CLAMS", "CLEFT", "CLOSE", "CLOWN", "CLUNK", "COALS", "COBRA", "COCOA", "CODEC", "COLOR", "COLTS", "COMET", "CONDO", "CONGA", "COPSE", "CORGI", "CORKS", "COUPS", "COWED", "COWLS", "CRABS", "CROWD", "CROWS", "CURES", "CURIA", "CURIO", "CUTES", "DALEK", "DAWNS", "DECOR", "DECRY", "DEIFY", "DENIM", "DEPOT", "DESKS", "DICED", "DINAR", "DINED", "DINGY", "DISKS", "DIZZY", "DODOS", "DOILY", "DOLED", "DOUSE", "DOVES", "DRABS", "DRESS", "DRIBS", "DRIVE", "DROID", "DRONE", "DROOL", "DROOP", "DROPS", "DROSS", "DUCHY", "DUMPY", "DUNNY", "DUPER", "EBONY", "EIGHT", "EPOXY", "EXACT", "EXUDE", "FANGS", "FARTS", "FATHA", "FATTY", "FAVOR", "FAZED", "FECES", "FEINT", "FERNS", "FERRY", "FIBRO", "FIFTH", "FIFTY", "FILTH", "FINCH", "FINKS", "FLOSS", "FORTE", "FORTY", "FOULS", "FOURS", "FOXED", "FOXES", "FROCK", "FUCKS", "FUMES", "GABLE", "GAILY", "GAINS", "GALED", "GALES", "GALLS", "GAMED", "GAMER", "GAMES", "GAMMA", "GANGS", "GANJA", "GASES", "GASPS", "GATED", "GATES", "GAUDY", "GAUGE", "GAUNT", "GAUZE", "GAWKY", "GAZED", "GEARS", "GECKO", "GEEKS", "GEEKY", "GEESE", "GENES", "GENII", "GENTS", "GERMS", "GHOST", "GIANT", "GIDDY", "GIFTS", "GILDS", "GILLS", "GILTS", "GIMME", "GINGE", "GIRTH", "GISTS", "GIVEN", "GIVER", "GIVES", "GIZMO", "GLADE", "GLARE", "GLASS", "GLEAM", "GLOBE", "GLOVE", "GLUTS", "GNOME", "GOALS", "GOATS", "GODLY", "GOLEM", "GORES", "GORSE", "GOTTA", "GOUDA", "GOURD", "GOUTS", "GRAPE", "GRAVE", "GREEB", "GREEN", "GROPE", "GROSS", "GROVE", "GRUBS", "GRUFF", "GRUNT", "GUARD", "GULPS", "HARMS", "HARPS", "HAULS", "HERDS", "HERON", "HOARD", "HONOR", "HUMOR", "HYPES", "INKED", "JAWED", "JILTS", "JOUST", "KAPUT", "KEELS", "KINDA", "KRONA", "LAGER", "LAMBS", "LAPEL", "LATHS", "LATTE", "LAXLY", "LIKEN", "LINGO", "LIRAS", "LOADS", "LOAFS", "LOCUM", "LOLLS", "LONES", "LOONY", "LOPES", "LUCKS", "LURES", "MACED", "MATED", "MENDS", "MIAOW", "MILER", "MILKY", "MOANS", "MOCKS", "MONEY", "MOSSY", "MUCKY", "MULES", "MUSED", "MUSES", "MUTER", "MUTHA", "NATTY", "NEGRO", "NOBBY", "NOOKS", "NUKED", "OFFAL", "OKAYS", "OLIVE", "OOMPH", "ORGAN", "PACER", "PALED", "PALER", "PALLY", "PAPPA", "PARES", "PASTA", "PAWNS", "PECAN", "PEEKS", "PENDS", "PENIS", "PENNY", "PEONY", "PEPPY", "PIGGY", "PINED", "PIZZA", "PLIES", "PLOYS", "POKED", "PONCE", "POOPS", "PORKS", "PORKY", "PROMO", "PRONG", "PUFFY", "PUREE", "PYGMY", "QUOTH", "RAFTS", "RAGED", "RAVER", "REALM", "REBID", "REEKY", "RETAR", "RHINO", "ROAMS", "ROVED", "RUDDY", "RUDER", "RUNTS", "RUPEE", "SACKS", "SALCO", "SARGE", "SCALP", "SEALS", "SENNA", "SEPIA", "SERGE", "SERIF", "SEXED", "SEXES", "SHAGS", "SHARE", "SHARK", "SHARP", "SHAWM", "SHEAF", "SHITE", "SIDLE", "SIGMA", "SILLY", "SINES", "SINEW", "SIRED", "SLING", "SLOES", "SLUNG", "SNAKE", "SNARL", "SNIPS", "SOLES", "SORTA", "SPAMS", "SPASM", "SPEWS", "SPIKY", "SQUIT", "STAGS", "STANK", "STOAT", "STORK", "STYLI", "SWAMP", "TABOR", "TAMER", "TAPAS", "TAUPE", "TELLY", "TEMPO", "TENOR", "THETA", "THIGH", "THONG", "TIARA", "TIGER", "TIGON", "TILTS", "TOADS", "TOKEN", "TOLLS", "TOPAZ", "TOPSY", "TORSO", "TORTS", "TOTES", "TRAIT", "TRAMP", "TRITE", "TROLL", "TROMP", "TUNAS", "TUPLE", "TURBO", "TURDS", "TURVY", "TUSKS", "TUTOR", "TWAIN", "TWANG", "TWATS", "TWEAK", "TWEED", "TWEEN", "TWEET", "TWERP", "TWICE", "TWIPS", "TWIRL", "TWIST", "TWITS", "TYPED", "TYRES", "TYTHE", "UNARJ", "UNDID", "URGES", "URINE", "URNED", "USHER", "USING", "USUAL", "VAGUS", "VALUE", "VANES", "VASES", "VIOLA", "VIOLS", "VIPER", "VIRGE", "VISAS", "VIXEN", "VOILA", "VOLES", "WAGED", "WAIFS", "WAKED", "WALTZ", "WANED", "WANKS", "WAXED", "WEEDS", "WEEDY", "WEENY", "WEEPS", "WHARF", "WHINY", "WHIPS", "WHIRL", "WHIRR", "WHISH", "WHISK", "WHIST", "WHITE", "WHOLE", "WHOOP", "WHORE", "WHOSE", "WHUPS", "WIDER", "WIDTH", "WIELD", "WILLS", "WILTS", "WIMPS", "WINCE", "WINCH", "WINDS", "WINDY", "WINED", "WINES", "WINKS", "WIPES", "WIRED", "WIRES", "WISED", "WISER", "WISES", "WISHY", "WITCH", "WOKEN", "WOLDS", "WOMAN", "WOMEN", "WOODS", "WOOZY", "WORDS", "WORLD", "WORMS", "WORRY", "WORSE", "WOULD", "WOUND", "WOVEN", "WOWED", "WRAPS", "WRATH", "WREAK", "WRECK", "WRENS", "WRING", "WRIST", "WRITS", "WRONG", "WROTE", "WROTH", "WRUNG", "XENON", "YABBA", "YACKS", "YAHOO", "YANKS", "YARDS", "YARNS", "YAWNS", "YEARS", "YEAST", "YECCH", "YELLS", "YELPS", "YIELD", "YIKES", "YODEL", "YOLKS", "YONKS", "YOUNG", "YOURS", "YOUSE", "YOUTH", "YUCCA", "YUCKY", "YUMMY", "ZEBRA", "ZILCH", "ZIPPY", "ZONED", "ZONES", "ZOOMS"]
    
    var isActualWord: Bool = false
    
    var targetWord: String!
    
    var guessedWord: String!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        keyButtons = [AKey, BKey, CKey, DKey, EKey, FKey, GKey, HKey, IKey, JKey, KKey, LKey, MKey, NKey, OKey, PKey, QKey, RKey, SKey, TKey, UKey, VKey, WKey, XKey, YKey, ZKey]
        letterLabels = [firstLetLabel, secondLetLabel, thirdLetLabel, fourthLetLabel, fifthLetLabel]
        currentLabel = firstLetLabel
        roundObjects()
        targetWord = wordOptions.randomElement()
        errorLabel.text = ""
    }
    
    
    func roundObjects() {
        for label in letterLabels {
            label.layer.masksToBounds = true
            label.layer.cornerRadius = 12
        }
        for button in keyButtons {
            button.layer.masksToBounds = true
            button.layer.cornerRadius = 5
        }
    }
    
    
    
    
    @IBAction func QTap(_ sender: Any) {
        setLabel(letter: "Q")
    }
    @IBAction func WTap(_ sender: Any) {
        setLabel(letter: "W")
    }
    @IBAction func ETap(_ sender: Any) {
        setLabel(letter: "E")
    }
    @IBAction func RTap(_ sender: Any) {
        setLabel(letter: "R")
    }
    @IBAction func TTap(_ sender: Any) {
        setLabel(letter: "T")
    }
    @IBAction func YTap(_ sender: Any) {
        setLabel(letter: "Y")
    }
    @IBAction func UTap(_ sender: Any) {
        setLabel(letter: "U")
    }
    @IBAction func ITap(_ sender: Any) {
        setLabel(letter: "I")
    }
    @IBAction func OTap(_ sender: Any) {
        setLabel(letter: "O")
    }
    @IBAction func PTap(_ sender: Any) {
        setLabel(letter: "P")
    }
    @IBAction func ATap(_ sender: Any) {
        setLabel(letter: "A")
    }
    @IBAction func STap(_ sender: Any) {
        setLabel(letter: "S")
    }
    @IBAction func DTap(_ sender: Any) {
        setLabel(letter: "D")
    }
    @IBAction func FTap(_ sender: Any) {
        setLabel(letter: "F")
    }
    @IBAction func GTap(_ sender: Any) {
        setLabel(letter: "G")
    }
    @IBAction func HTap(_ sender: Any) {
        setLabel(letter: "H")
    }
    @IBAction func JTap(_ sender: Any) {
        setLabel(letter: "K")
    }
    @IBAction func KTap(_ sender: Any) {
        setLabel(letter: "K")
    }
    @IBAction func LTap(_ sender: Any) {
        setLabel(letter: "L")
    }
    @IBAction func ZTap(_ sender: Any) {
        setLabel(letter: "Z")
    }
    @IBAction func XTap(_ sender: Any) {
        setLabel(letter: "X")
    }
    @IBAction func CTap(_ sender: Any) {
        setLabel(letter: "C")
    }
    @IBAction func VTap(_ sender: Any) {
        setLabel(letter: "V")
    }
    @IBAction func BTap(_ sender: Any) {
        setLabel(letter: "B")
    }
    @IBAction func NTap(_ sender: Any) {
        setLabel(letter: "N")
    }
    @IBAction func MTap(_ sender: Any) {
        setLabel(letter: "M")
    }
    @IBAction func BackTap(_ sender: Any) {
        lastLabel()
        currentLabel.text = ""
        errorLabel.text = ""
    }
    @IBAction func GoTap(_ sender: Any) {
        
        if (fifthLetLabel.text != "") {
            setLabelColors()
        }
    }
    
    
    func setLabel(letter: String) {
        currentLabel.text = letter
        nextLabel()
    }
    
    
    func nextLabel(){
        if (currentLabel == firstLetLabel) {
        currentLabel = secondLetLabel
        } else if (currentLabel == secondLetLabel) {
            currentLabel = thirdLetLabel
        } else if (currentLabel == thirdLetLabel) {
            currentLabel = fourthLetLabel
        } else if (currentLabel == fourthLetLabel) {
            currentLabel = fifthLetLabel
        } else if (currentLabel == fifthLetLabel) {
            currentLabel = hiddenLabel
        }
    }
    
    
    func lastLabel(){
        if (currentLabel == secondLetLabel) {
        currentLabel = firstLetLabel
        } else if (currentLabel == thirdLetLabel) {
            currentLabel = secondLetLabel
        } else if (currentLabel == fourthLetLabel) {
            currentLabel = thirdLetLabel
        } else if (currentLabel == fifthLetLabel) {
            currentLabel = fourthLetLabel
        } else if (currentLabel == hiddenLabel) {
            currentLabel = fifthLetLabel
        }
    }
    
    func setLabelColors() {
        let firstLet = getWordLetter(num: 0)
        let secLet = getWordLetter(num: 1)
        let thirdLet = getWordLetter(num: 2)
        let fourLet = getWordLetter(num: 3)
        let fifthLet = getWordLetter(num: 4)
        
        setOneLabelColor(targetLet: firstLet, letterLabel: firstLetLabel)
        setOneLabelColor(targetLet: secLet, letterLabel: secondLetLabel)
        setOneLabelColor(targetLet: thirdLet, letterLabel: thirdLetLabel)
        setOneLabelColor(targetLet: fourLet, letterLabel: fourthLetLabel)
        setOneLabelColor(targetLet: fifthLet, letterLabel: fifthLetLabel)
    }
    
    func setOneLabelColor(targetLet: String, letterLabel: UILabel) {
        let firstLet = getWordLetter(num: 0)
        let secLet = getWordLetter(num: 1)
        let thirdLet = getWordLetter(num: 2)
        let fourLet = getWordLetter(num: 3)
        let fifthLet = getWordLetter(num: 4)
        
        if (letterLabel.text == targetLet) {
            letterLabel.backgroundColor = UIColor.green
            setKeyColor(keyLetter: letterLabel.text ?? "", color: 1)
        } else if (letterLabel.text == firstLet && firstLetLabel.text != firstLet) {
            letterLabel.backgroundColor = UIColor.yellow
            setKeyColor(keyLetter: letterLabel.text ?? "", color: 2)
        } else if (letterLabel.text == secLet && secondLetLabel.text != secLet) {
            letterLabel.backgroundColor = UIColor.yellow
            setKeyColor(keyLetter: letterLabel.text ?? "", color: 2)
        } else if (letterLabel.text == thirdLet && thirdLetLabel.text != thirdLet) {
            letterLabel.backgroundColor = UIColor.yellow
            setKeyColor(keyLetter: letterLabel.text ?? "", color: 2)
        } else if (letterLabel.text == fourLet && fourthLetLabel.text != fourLet) {
            letterLabel.backgroundColor = UIColor.yellow
            setKeyColor(keyLetter: letterLabel.text ?? "", color: 2)
        } else if (letterLabel.text == fifthLet && fifthLetLabel.text != fifthLet) {
            letterLabel.backgroundColor = UIColor.yellow
            setKeyColor(keyLetter: letterLabel.text ?? "", color: 2)
        } else {
            letterLabel.backgroundColor = UIColor.darkGray
            setKeyColor(keyLetter: letterLabel.text ?? "", color: 3)
        }
        
        
    }
    
    func setKeyColor(keyLetter: String, color: Int) {
         
         for button in keyButtons {
             if button.titleLabel?.text == keyLetter {
                 if color == 2 {
                     button.backgroundColor = UIColor.yellow
                 } else if color == 1{
                     button.backgroundColor = UIColor.green
                 } else {
                     button.backgroundColor = UIColor.darkGray
                 }
             }
         }
         
     }
    
    func getWordLetter(num: Int) -> String {
        let start = targetWord.index(targetWord.startIndex, offsetBy: num)
        let end = targetWord.index(targetWord.startIndex, offsetBy: num)
        let range = start...end

        return String(targetWord[range])
    }
    
    func checkWordLetter(num: Int, word: String) -> String {
        let start = word.index(word.startIndex, offsetBy: num)
        let end = word.index(word.startIndex, offsetBy: num)
        let range = start...end

        return String(word[range])
    }
    
    
    
    
//    @IBAction func clickedGuess(_ sender: UIButton) {
//        let url = prepareURL()
//        prepareMessage(url)
//    }
    
    
//    func prepareURL() -> URL {
//
//        var urlComponents = URLComponents()
//        urlComponents.scheme = "https";
//        urlComponents.host = "www.ebookfrenzy.com";
//        let guessQuery = URLQueryItem(name: "Guess", value: currentGuess)
//        let allGuessesQuery = URLQueryItem(name: "allGuesses", value: guesses)
//        urlComponents.queryItems = [guessQuery, allGuessesQuery]
//        return urlComponents.url!
//
//    }
    
//    func prepareMessage(_ url: URL) {
//
//        let message = MSMessage()
//
//        let layout = MSMessageTemplateLayout()
//        layout.caption = caption
//
//        layout.image = UIImage(named: "icon")
//
//        message.layout = layout
//        message.url = url
//
//        let conversation = self.activeConversation
//
//        conversation?.insert(message, completionHandler: {(error) in
//            if let error = error {
//                print(error)
//            }
//        })
//
//        self.dismiss()
//
//    }
    
//    func decodeURL(_ url: URL) {
//
//        let components = URLComponents(url: url, resolvingAgainstBaseURL: false)
//
//        for (index, queryItem) in (components?.queryItems?.enumerated())! {
////            if queryItem.name == "Guess" {
////                lastGuess = queryItem.value ?? ""
////                previousGuess.text = lastGuess
////            }
//            if queryItem.name == "allGuesses" {
//                guesses = queryItem.value ?? ""
//                previousGuess.text = guesses
//            }
//        }
//    }
    
    
    
    // MARK: - Conversation Handling
    
    override func willBecomeActive(with conversation: MSConversation) {
        
//        if let messageURL = conversation.selectedMessage?.url {
//            decodeURL(messageURL)
//            caption = "It's your move!"
//        }
       
    }
    
    override func didResignActive(with conversation: MSConversation) {
        // Called when the extension is about to move from the active to inactive state.
        // This will happen when the user dismisses the extension, changes to a different
        // conversation or quits Messages.
        
        // Use this method to release shared resources, save user data, invalidate timers,
        // and store enough state information to restore your extension to its current state
        // in case it is terminated later.
    }
   
    override func didReceive(_ message: MSMessage, conversation: MSConversation) {
        // Called when a message arrives that was generated by another instance of this
        // extension on a remote device.
        
        // Use this method to trigger UI updates in response to the message.
    }
    
    override func didStartSending(_ message: MSMessage, conversation: MSConversation) {
        // Called when the user taps the send button.
    }
    
    override func didCancelSending(_ message: MSMessage, conversation: MSConversation) {
        // Called when the user deletes the message without sending it.
    
        // Use this to clean up state related to the deleted message.
    }
    
    override func willTransition(to presentationStyle: MSMessagesAppPresentationStyle) {
        // Called before the extension transitions to a new presentation style.
    
        // Use this method to prepare for the change in presentation style.
    }
    
    override func didTransition(to presentationStyle: MSMessagesAppPresentationStyle) {
        // Called after the extension transitions to a new presentation style.
    
        // Use this method to finalize any behaviors associated with the change in presentation style.
    }

}
