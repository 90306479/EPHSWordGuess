//
//  MessagesViewController.swift
//  MessageApp MessagesExtension
//
//  Created by 90306479 on 2/25/22.
//

import UIKit
import Messages

class ViewController: UIViewController {
    
    
    @IBAction func leavePopUp(_ sender: Any) {
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
}

class MessagesViewController: MSMessagesAppViewController {
    
    @IBOutlet weak var firstLetLabel: UILabel!
    @IBOutlet weak var secondLetLabel: UILabel!
    @IBOutlet weak var thirdLetLabel: UILabel!
    @IBOutlet weak var fourthLetLabel: UILabel!
    @IBOutlet weak var fifthLetLabel: UILabel!
    
    var currentLabel: UILabel!
    
    
    
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
    
    var letterLabels:[UILabel]!
    
    var keyButtons:[UIButton]!
    
    var keyColors:[String] = ["g", "g", "g", "g", "g", "g", "g", "g", "g", "g", "g", "g", "g", "g", "g", "g", "g", "g", "g", "g", "g", "g", "g", "g", "g", "g"]
    
    
    let wordOptions:[String] = ["ABACK", "ABASE", "ABATE", "ABAYA", "ABBEY", "ABBOT", "ABETS", "ABHOR", "ABIDE", "ABODE", "ABORT", "ABOUT", "ABOVE", "ABUSE", "ABUTS", "ABYSS", "ACHED", "ACHES", "ACIDS", "ACING", "ACKEE", "ACORN", "ACRES", "ACRID", "ACTED", "ACTIN", "ACTOR", "ACUTE", "ADAGE", "ADAPT", "ADDED", "ADDER", "ADDLE", "ADEPT", "ADIEU", "ADIOS", "ADITS", "ADMAN", "ADMIN", "ADMIT", "ADOBE", "ADOBO", "ADOPT", "ADORE", "ADORN", "ADULT", "ADZES", "AEGIS", "AEONS", "AERIE", "AFFIX", "AFIRE", "AFOOT", "AFORE", "AFTER", "AGAIN", "AGAPE", "AGATE", "AGAVE", "AGENT", "AGGRO", "AGILE", "AGING", "AGLOW", "AGONY", "AGORA", "AGREE", "AHEAD", "AHOLD", "AIDED", "AIDER", "AIDES", "AILED", "AIMED", "AIMER", "AIOLI", "AIRED", "AISLE", "ALARM", "ALBUM", "ALDER", "ALEPH", "ALERT", "ALGAE", "ALGAL", "ALIAS", "ALIBI", "ALIEN", "ALIGN", "ALIKE", "ALIVE", "ALKYD", "ALKYL", "ALLAY", "ALLEY", "ALLOT", "ALLOW", "ALLOY", "ALLYL", "ALOES", "ALOFT", "ALOHA", "ALONE", "ALONG", "ALOOF", "ALOUD", "ALPHA", "ALTAR", "ALTER", "ALTOS", "ALUMS", "AMASS", "AMAZE", "AMBER", "AMBIT", "AMBLE", "AMBOS", "AMEND", "AMIDE", "AMINE", "AMINO", "AMISS", "AMITY", "AMNIO", "AMONG", "AMOUR", "AMPED", "AMPLE", "AMPLY", "AMUSE", "ANCHO", "ANGEL", "ANGER", "ANGLE", "ANGRY", "ANGST", "ANIMA", "ANIME", "ANION", "ANISE", "ANKLE", "ANNAS", "ANNEX", "ANNOY", "ANNUL", "ANODE", "ANOLE", "ANTIC", "ANTIS", "ANTSY", "ANVIL", "AORTA", "APACE", "APART", "APHID", "APNEA", "APPLE", "APPLY", "APRON", "APSES", "APTER", "APTLY", "AQUAS", "ARBOR", "ARDOR", "AREAL", "AREAS", "ARECA", "ARENA", "ARGON", "ARGOT", "ARGUE", "ARGUS", "ARIAS", "ARILS", "ARISE", "ARMED", "ARMOR", "AROMA", "AROSE", "ARRAY", "ARROW", "ARSES", "ARSON", "ARTSY", "ASANA", "ASCOT", "ASHEN", "ASHES", "ASIDE", "ASKED", "ASKER", "ASKEW", "ASPEN", "ASPIC", "ASSAY", "ASSES", "ASSET", "ASTER", "ASTIR", "ASURA", "ATLAS", "ATMAN", "ATOLL", "ATOMS", "ATONE", "ATOPY", "ATTIC", "AUDIO", "AUDIT", "AUGER", "AUGHT", "AUGUR", "AUNTS", "AUNTY", "AURAL", "AURAS", "AUTOS", "AUXIN", "AVAIL", "AVERS", "AVERT", "AVIAN", "AVOID", "AVOWS", "AWAIT", "AWAKE", "AWARD", "AWARE", "AWASH", "AWFUL", "AWOKE", "AXELS", "AXIAL", "AXILS", "AXING", "AXIOM", "AXION", "AXLES", "AXONS", "AZIDE", "AZOLE", "AZURE", "BABEL", "BABES", "BABKA", "BACKS", "BACON", "BADDY", "BADGE", "BADLY", "BAGEL", "BAGGY", "BAILS", "BAIRN", "BAITS", "BAIZE", "BAKED", "BAKER", "BAKES", "BALDY", "BALED", "BALER", "BALES", "BALKS", "BALKY", "BALLS", "BALMS", "BALMY", "BALSA", "BANAL", "BANDS", "BANDY", "BANES", "BANGS", "BANJO", "BANKS", "BARBS", "BARDS", "BARED", "BARER", "BARES", "BARGE", "BARKS", "BARMY", "BARNS", "BARON", "BARRE", "BASAL", "BASED", "BASER", "BASES", "BASIC", "BASIL", "BASIN", "BASIS", "BASKS", "BASSO", "BASSY", "BASTE", "BATCH", "BATED", "BATHE", "BATHS", "BATIK", "BATON", "BATTS", "BATTY", "BAWDY", "BAWLS", "BAYED", "BAYOU", "BEACH", "BEADS", "BEADY", "BEAKS", "BEAMS", "BEAMY", "BEANS", "BEARD", "BEARS", "BEAST", "BEATS", "BEAUS", "BEAUT", "BEAUX", "BEBOP", "BECKS", "BEECH", "BEEFS", "BEEFY", "BEEPS", "BEERS", "BEERY", "BEETS", "BEFIT", "BEGAN", "BEGET", "BEGIN", "BEGUN", "BEIGE", "BEING", "BELAY", "BELCH", "BELIE", "BELLE", "BELLS", "BELLY", "BELOW", "BELTS", "BENCH", "BENDS", "BENDY", "BENTO", "BENTS", "BERET", "BERGS", "BERMS", "BERRY", "BERTH", "BERYL", "BESET", "BESTS", "BETAS", "BETEL", "BETTA", "BEVEL", "BEZEL", "BHAJI", "BIBLE", "BICEP", "BIDDY", "BIDED", "BIDES", "BIDET", "BIGHT", "BIGOT", "BIJOU", "BIKED", "BIKER", "BIKES", "BILES", "BILGE", "BILLS", "BILLY", "BIMBO", "BINDI", "BINDS", "BINGE", "BINGO", "BIOME", "BIOTA", "BIPOD", "BIRCH", "BIRDS", "BIRTH", "BISON", "BITCH", "BITER", "BITES", "BITSY", "BITTY", "BLACK", "BLADE", "BLAME", "BLAND", "BLANK", "BLARE", "BLASE", "BLAST", "BLAZE", "BLEAK", "BLEAT", "BLEBS", "BLEED", "BLEEP", "BLEND", "BLESS", "BLIMP", "BLIND", "BLING", "BLINI", "BLINK", "BLIPS", "BLISS", "BLITZ", "BLOAT", "BLOBS", "BLOCK", "BLOCS", "BLOGS", "BLOKE", "BLOND", "BLOOD", "BLOOM", "BLOOP", "BLOTS", "BLOWN", "BLOWS", "BLUED", "BLUES", "BLUEY", "BLUFF", "BLUNT", "BLURB", "BLURS", "BLURT", "BLUSH", "BOARD", "BOARS", "BOAST", "BOATS", "BOBBY", "BOCCE", "BOCHE", "BODED", "BODES", "BOFFO", "BOGEY", "BOGGY", "BOGIE", "BOGUS", "BOILS", "BOLAS", "BOLES", "BOLLS", "BOLTS", "BOLUS", "BOMBE", "BOMBS", "BONDS", "BONED", "BONER", "BONES", "BONEY", "BONGO", "BONGS", "BONKS", "BONNY", "BONUS", "BOOBS", "BOOBY", "BOOED", "BOOKS", "BOOMS", "BOOMY", "BOONS", "BOORS", "BOOST", "BOOTH", "BOOTS", "BOOTY", "BOOZE", "BOOZY", "BOPPY", "BORAX", "BORED", "BORER", "BORES", "BORIC", "BORNE", "BORON", "BOSOM", "BOSON", "BOSSY", "BOSUN", "BOTCH", "BOUGH", "BOULE", "BOUND", "BOUTS", "BOWED", "BOWEL", "BOWER", "BOWLS", "BOXED", "BOXER", "BOXES", "BOYAR", "BOYOS", "BOZOS", "BRACE", "BRACT", "BRADS", "BRAGS", "BRAID", "BRAIN", "BRAKE", "BRAND", "BRANS", "BRASH", "BRASS", "BRATS", "BRAVE", "BRAVO", "BRAWL", "BRAWN", "BRAYS", "BRAZE", "BREAD", "BREAK", "BREAM", "BREED", "BREWS", "BRIAR", "BRIBE", "BRICK", "BRIDE", "BRIEF", "BRIER", "BRIGS", "BRIMS", "BRINE", "BRING", "BRINK", "BRINY", "BRISK", "BRITS", "BROAD", "BROCH", "BROIL", "BROKE", "BROME", "BRONC", "BROOD", "BROOK", "BROOM", "BROTH", "BROWN", "BROWS", "BRUIN", "BRUIT", "BRUNT", "BRUSH", "BRUTE", "BUBBA", "BUCKS", "BUDDY", "BUDGE", "BUFFS", "BUGGY", "BUGLE", "BUILD", "BUILT", "BULBS", "BULGE", "BULKS", "BULKY", "BULLA", "BULLS", "BULLY", "BUMPS", "BUMPY", "BUNCH", "BUNDS", "BUNDT", "BUNKS", "BUNNY", "BUNTS", "BUOYS", "BURBS", "BURGS", "BURKA", "BURLY", "BURNS", "BURNT", "BURPS", "BURQA", "BURRO", "BURRS", "BURSA", "BURST", "BUSED", "BUSES", "BUSHY", "BUSTS", "BUSTY", "BUTCH", "BUTTE", "BUTTS", "BUXOM", "BUYER", "BUZZY", "BYLAW", "BYRES", "BYTES", "BYWAY", "CABAL", "CABBY", "CABER", "CABIN", "CABLE", "CACAO", "CACHE", "CACTI", "CADDY", "CADET", "CADRE", "CAFES", "CAGED", "CAGES", "CAGEY", "CAIRN", "CAKED", "CAKES", "CAKEY", "CALFS", "CALIF", "CALLA", "CALLS", "CALMS", "CALVE", "CALYX", "CAMEL", "CAMEO", "CAMPO", "CAMPS", "CAMPY", "CANAL", "CANDY", "CANED", "CANES", "CANID", "CANNA", "CANNY", "CANOE", "CANON", "CANTO", "CAPED", "CAPER", "CAPES", "CAPON", "CAPOS", "CAPUT", "CARAT", "CARBO", "CARBS", "CARDS", "CARED", "CARER", "CARES", "CARGO", "CAROB", "CAROL", "CAROM", "CARPS", "CARRY", "CARTE", "CARTS", "CARVE", "CASED", "CASES", "CASKS", "CASTE", "CASTS", "CATCH", "CATER", "CATTY", "CAULK", "CAUSE", "CAVED", "CAVER", "CAVES", "CAVIL", "CEASE", "CECAL", "CECUM", "CEDAR", "CEDED", "CEDES", "CEILI", "CELEB", "CELLO", "CELLS", "CELTS", "CENTS", "CHADS", "CHAFE", "CHAFF", "CHAIN", "CHAIR", "CHALK", "CHAMP", "CHANA", "CHANT", "CHAOS", "CHAPS", "CHARD", "CHARM", "CHARS", "CHART", "CHASE", "CHASM", "CHATS", "CHEAP", "CHEAT", "CHECK", "CHEEK", "CHEEP", "CHEER", "CHEFS", "CHEMO", "CHERT", "CHESS", "CHEST", "CHEWS", "CHEWY", "CHICA", "CHICK", "CHICO", "CHIDE", "CHIEF", "CHILD", "CHILE", "CHILI", "CHILL", "CHIME", "CHIMP", "CHINA", "CHINE", "CHING", "CHINO", "CHINS", "CHIPS", "CHIRP", "CHITS", "CHIVE", "CHOCK", "CHOIR", "CHOKE", "CHOMP", "CHOPS", "CHORD", "CHORE", "CHOSE", "CHOWS", "CHUBS", "CHUCK", "CHUFF", "CHUGS", "CHUMP", "CHUMS", "CHUNK", "CHURN", "CHUTE", "CIDER", "CIGAR", "CINCH", "CIRCA", "CISCO", "CITED", "CITES", "CIVET", "CIVIC", "CIVIL", "CIVVY", "CLACK", "CLADE", "CLAIM", "CLAMP", "CLAMS", "CLANG", "CLANK", "CLANS", "CLAPS", "CLASH", "CLASP", "CLASS", "CLAVE", "CLAWS", "CLAYS", "CLEAN", "CLEAR", "CLEAT", "CLEFS", "CLEFT", "CLERK", "CLICK", "CLIFF", "CLIMB", "CLIME", "CLINE", "CLING", "CLINK", "CLIPS", "CLOAK", "CLOCK", "CLODS", "CLOGS", "CLOMP", "CLONE", "CLOSE", "CLOTH", "CLOTS", "CLOUD", "CLOUT", "CLOVE", "CLOWN", "CLUBS", "CLUCK", "CLUED", "CLUES", "CLUMP", "CLUNG", "CLUNK", "COACH", "COALS", "COAST", "COATI", "COATS", "COBIA", "COBRA", "COCCI", "COCKS", "COCKY", "COCOA", "CODAS", "CODEC", "CODED", "CODER", "CODES", "CODEX", "CODON", "COEDS", "COHOS", "COIFS", "COILS", "COINS", "COKES", "COLAS", "COLDS", "COLES", "COLIC", "COLIN", "COLON", "COLOR", "COLTS", "COMAS", "COMBO", "COMBS", "COMER", "COMES", "COMET", "COMFY", "COMIC", "COMMA", "COMMO", "COMPO", "COMPS", "COMTE", "CONCH", "CONDO", "CONED", "CONES", "CONGA", "CONGO", "CONIC", "CONKS", "COOED", "COOKS", "COOLS", "COOPS", "COOPT", "COPED", "COPES", "COPRA", "COPSE", "CORAL", "CORDS", "CORED", "CORER", "CORES", "CORGI", "CORKS", "CORKY", "CORMS", "CORNS", "CORNU", "CORNY", "CORPS", "COSTS", "COTTA", "COUCH", "COUGH", "COULD", "COUNT", "COUPE", "COUPS", "COURT", "COVEN", "COVER", "COVES", "COVET", "COVEY", "COWED", "COWER", "COWLS", "COYLY", "CRABS", "CRACK", "CRAFT", "CRAGS", "CRAMP", "CRAMS", "CRANE", "CRANK", "CRAPE", "CRAPS", "CRASH", "CRASS", "CRATE", "CRAVE", "CRAWL", "CRAWS", "CRAZE", "CRAZY", "CREAK", "CREAM", "CREDO", "CREED", "CREEK", "CREEL", "CREEP", "CREME", "CREPE", "CREPT", "CRESS", "CREST", "CREWS", "CRIBS", "CRICK", "CRIED", "CRIER", "CRIES", "CRIME", "CRIMP", "CRISP", "CRITS", "CROAK", "CROCK", "CROCS", "CROFT", "CRONE", "CRONY", "CROOK", "CROON", "CROPS", "CROSS", "CROUP", "CROWD", "CROWN", "CROWS", "CRUDE", "CRUEL", "CRUET", "CRUMB", "CRUSE", "CRUSH", "CRUST", "CRYPT", "CUBBY", "CUBED", "CUBES", "CUBIC", "CUBIT", "CUDDY", "CUFFS", "CULLS", "CULPA", "CULTS", "CUMIN", "CUPID", "CUPPA", "CURBS", "CURDS", "CURED", "CURES", "CURIA", "CURIO", "CURLS", "CURLY", "CURRY", "CURSE", "CURVE", "CURVY", "CUSHY", "CUSPS", "CUTER", "CUTIE", "CUTIS", "CUTUP", "CYCAD", "CYCLE", "CYCLO", "CYNIC", "CYSTS", "CZARS", "DACHA", "DADDY", "DADOS", "DAFFY", "DAILY", "DAIRY", "DAISY", "DALES", "DAMES", "DAMNS", "DAMPS", "DANCE", "DANDY", "DARED", "DARES", "DARKS", "DARNS", "DARTS", "DASHI", "DATED", "DATER", "DATES", "DATUM", "DAUBS", "DAUNT", "DAVIT", "DAWNS", "DAZED", "DEALS", "DEALT", "DEANS", "DEARS", "DEARY", "DEATH", "DEBIT", "DEBTS", "DEBUG", "DEBUT", "DECAF", "DECAL", "DECAY", "DECKS", "DECOR", "DECOY", "DECRY", "DEEDS", "DEEMS", "DEEPS", "DEERS", "DEFER", "DEIFY", "DEIGN", "DEISM", "DEIST", "DEITY", "DEKES", "DELAY", "DELFT", "DELIS", "DELLS", "DELTA", "DELVE", "DEMON", "DEMOS", "DEMUR", "DENIM", "DENSE", "DENTS", "DEPOT", "DEPTH", "DERBY", "DESKS", "DETER", "DETOX", "DEUCE", "DEVIL", "DEWAR", "DHIKR", "DHOWS", "DIALS", "DIARY", "DICED", "DICES", "DICEY", "DICKY", "DICTA", "DIETS", "DIGIT", "DIKED", "DIKES", "DILLS", "DILLY", "DIMER", "DIMES", "DIMLY", "DINAR", "DINED", "DINER", "DINES", "DINGO", "DINGS", "DINGY", "DINKS", "DINKY", "DINOS", "DIODE", "DIPPY", "DIRER", "DIRGE", "DIRTY", "DISCO", "DISCS", "DISHY", "DISKS", "DITCH", "DITSY", "DITTO", "DITTY", "DITZY", "DIVAN", "DIVAS", "DIVED", "DIVER", "DIVES", "DIVOT", "DIVVY", "DIZZY", "DOCKS", "DODGE", "DODGY", "DODOS", "DOERS", "DOFFS", "DOGES", "DOGGY", "DOGMA", "DOING", "DOLED", "DOLES", "DOLLS", "DOLLY", "DOLOR", "DOLTS", "DOMED", "DOMES", "DONEE", "DONGS", "DONNA", "DONOR", "DONUT", "DOOMS", "DOOMY", "DOORS", "DOOZY", "DOPED", "DOPES", "DOPEY", "DORKS", "DORKY", "DORMS", "DOSAS", "DOSED", "DOSES", "DOTED", "DOTES", "DOTTY", "DOUBT", "DOUGH", "DOULA", "DOUSE", "DOVES", "DOWDY", "DOWEL", "DOWER", "DOWNS", "DOWNY", "DOWRY", "DOWSE", "DOYEN", "DOZED", "DOZEN", "DOZER", "DOZES", "DRABS", "DRAFT", "DRAGS", "DRAIN", "DRAKE", "DRAMA", "DRAMS", "DRANK", "DRAPE", "DRAWL", "DRAWN", "DRAWS", "DRAYS", "DREAD", "DREAM", "DRECK", "DREGS", "DRESS", "DRIBS", "DRIED", "DRIER", "DRIES", "DRIFT", "DRILL", "DRILY", "DRINK", "DRIPS", "DRIVE", "DROID", "DROLL", "DRONE", "DROOL", "DROOP", "DROPS", "DROSS", "DROVE", "DROWN", "DRUGS", "DRUID", "DRUMS", "DRUNK", "DRUPE", "DRYAD", "DRYER", "DRYLY", "DUALS", "DUCAL", "DUCAT", "DUCHY", "DUCKS", "DUCKY", "DUCTS", "DUDES", "DUELS", "DUETS", "DUFFS", "DUKES", "DULLS", "DULLY", "DULSE", "DUMBO", "DUMMY", "DUMPS", "DUMPY", "DUNCE", "DUNES", "DUNKS", "DUOMO", "DUPED", "DUPES", "DURAL", "DURUM", "DUSKS", "DUSKY", "DUSTS", "DUSTY", "DUTCH", "DUVET", "DWARF", "DWEEB", "DWELL", "DWELT", "DYADS", "DYERS", "DYING", "DYKES", "EAGER", "EAGLE", "EARED", "EARLS", "EARLY", "EARNS", "EARTH", "EASED", "EASEL", "EASER", "EASES", "EATEN", "EATER", "EAVES", "EBBED", "EBONY", "EBOOK", "ECHOS", "ECLAT", "EDEMA", "EDGED", "EDGER", "EDGES", "EDICT", "EDIFY", "EDITS", "EEJIT", "EERIE", "EGGED", "EGRET", "EIDER", "EIDOS", "EIGHT", "EJECT", "EJIDO", "ELAND", "ELBOW", "ELDER", "ELECT", "ELEGY", "ELIDE", "ELITE", "ELOPE", "ELUDE", "ELUTE", "ELVEN", "ELVES", "EMAIL", "EMBED", "EMBER", "EMCEE", "EMERY", "EMIRS", "EMITS", "EMOTE", "EMPTY", "ENACT", "ENDED", "ENDOW", "ENEMA", "ENEMY", "ENJOY", "ENNUI", "ENOKI", "ENROL", "ENSUE", "ENTER", "ENTRY", "ENVOY", "EOSIN", "EPICS", "EPOCH", "EPOXY", "EQUAL", "EQUIP", "ERASE", "ERECT", "ERGOT", "ERODE", "ERRED", "ERROR", "ERUPT", "ESSAY", "ETHER", "ETHIC", "ETHOS", "ETHYL", "ETUDE", "EUROS", "EVADE", "EVENS", "EVENT", "EVERY", "EVICT", "EVILS", "EVOKE", "EWERS", "EXACT", "EXALT", "EXAMS", "EXCEL", "EXECS", "EXERT", "EXILE", "EXIST", "EXITS", "EXPAT", "EXPEL", "EXPOS", "EXTOL", "EXTRA", "EXUDE", "EXULT", "EXURB", "EYING", "EYRIE", "FABLE", "FACED", "FACER", "FACES", "FACET", "FACIA", "FACTS", "FADED", "FADER", "FADES", "FAERY", "FAILS", "FAINT", "FAIRS", "FAIRY", "FAITH", "FAKED", "FAKER", "FAKES", "FAKIE", "FAKIR", "FALLS", "FAMED", "FANCY", "FANGS", "FANNY", "FARCE", "FARED", "FARES", "FARMS", "FARTS", "FASTS", "FATAL", "FATED", "FATES", "FATSO", "FATTY", "FATWA", "FAULT", "FAUNA", "FAUNS", "FAVAS", "FAVES", "FAVOR", "FAWNS", "FAXED", "FAXES", "FAZED", "FAZES", "FEARS", "FEAST", "FEATS", "FECAL", "FECES", "FEEDS", "FEELS", "FEIGN", "FEINT", "FELLA", "FELLS", "FELON", "FELTS", "FEMME", "FEMUR", "FENCE", "FENDS", "FERAL", "FERIA", "FERNS", "FERNY", "FERRY", "FESTS", "FETAL", "FETCH", "FETED", "FETES", "FETID", "FETUS", "FEUDS", "FEVER", "FEWER", "FIATS", "FIBER", "FIBRE", "FICHE", "FICUS", "FIEFS", "FIELD", "FIEND", "FIERY", "FIFES", "FIFTH", "FIFTY", "FIGHT", "FILCH", "FILED", "FILER", "FILES", "FILET", "FILLS", "FILLY", "FILMS", "FILMY", "FILTH", "FINAL", "FINCA", "FINCH", "FINDS", "FINED", "FINER", "FINES", "FINIS", "FINKS", "FIORD", "FIRED", "FIRES", "FIRMS", "FIRST", "FISHY", "FISTS", "FITLY", "FIVER", "FIVES", "FIXED", "FIXER", "FIXES", "FIZZY", "FJORD", "FLACK", "FLAGS", "FLAIL", "FLAIR", "FLAKE", "FLAKY", "FLAME", "FLANK", "FLANS", "FLAPS", "FLARE", "FLASH", "FLASK", "FLATS", "FLAWS", "FLAYS", "FLEAS", "FLECK", "FLEES", "FLEET", "FLESH", "FLICK", "FLIER", "FLIES", "FLING", "FLOAT", "FLOOD", "FLOOR", "FLOUR", "FLOWN", "FLOWS", "FLUID", "FLYER", "FOCAL", "FOCUS", "FOLKS", "FONTS", "FOODS", "FORCE", "FORMS", "FORTH", "FORTY", "FORUM", "FOUND", "FRAME", "FRAUD", "FRESH", "FRIED", "FRIES", "FRONT", "FROST", "FRUIT", "FUELS", "FULLY", "FUNDS", "FUNNY", "GAINS", "GAMES", "GAMMA", "GASES", "GATES", "GAUGE", "GEARS", "GENES", "GENRE", "GHOST", "GIANT", "GIFTS", "GIRLS", "GIVEN", "GIVES", "GLAND", "GLASS", "GLOBE", "GLORY", "GLOSS", "GLOVE", "GLUED", "GOALS", "GOATS", "GOING", "GOODS", "GRACE", "GRADE", "GRAIN", "GRAMS", "GRAND", "GRANT", "GRAPE", "GRAPH", "GRASP", "GRASS", "GRAVE", "GREAT", "GREEK", "GREEN", "GREET", "GRIEF", "GRILL", "GRIND", "GRIPS", "GROSS", "GROUP", "GROVE", "GROWN", "GROWS", "GUARD", "GUESS", "GUEST", "GUIDE", "GUILD", "GUILT", "HABIT", "HAIRS", "HALLS", "HANDS", "HANDY", "HANGS", "HAPPY", "HARSH", "HATED", "HATES", "HAVEN", "HAWKS", "HEADS", "HEARD", "HEART", "HEAVY", "HEDGE", "HEELS", "HELLO", "HELPS", "HENCE", "HERBS", "HIGHS", "HILLS", "HINTS", "HIRED", "HOBBY", "HOLDS", "HOLES", "HOLLY", "HOMES", "HONEY", "HONOR", "HOOKS", "HOPED", "HOPES", "HORNS", "HORSE", "HOSTS", "HOTEL", "HOURS", "HOUSE", "HOVER", "HUMAN", "HUMOR", "HURTS", "ICONS", "IDEAL", "IDEAS", "IDIOT", "IMAGE", "IMPLY", "INBOX", "INCUR", "INDEX", "INDIE", "INNER", "INPUT", "INTRO", "ISSUE", "ITEMS", "JEANS", "JELLY", "JEWEL", "JOINS", "JOINT", "JOKES", "JUDGE", "JUICE", "JUICY", "JUMPS", "KEEPS", "KICKS", "KILLS", "KINDA", "KINDS", "KINGS", "KNEES", "KNIFE", "KNOCK", "KNOTS", "KNOWN", "KNOWS", "LABEL", "LABOR", "LACKS", "LAKES", "LAMPS", "LANDS", "LANES", "LARGE", "LASER", "LASTS", "LATER", "LAUGH", "LAYER", "LEADS", "LEAKS", "LEARN", "LEASE", "LEAST", "LEAVE", "LEGAL", "LEMON", "LEVEL", "LEVER", "LIGHT", "LIKED", "LIKES", "LIMBS", "LIMIT", "LINED", "LINEN", "LINER", "LINES", "LINKS", "LIONS", "LISTS", "LIVED", "LIVER", "LIVES", "LOADS", "LOANS", "LOBBY", "LOCAL", "LOCKS", "LODGE", "LOGIC", "LOGOS", "LOOKS", "LOOPS", "LOOSE", "LORDS", "LOSES", "LOVED", "LOVER", "LOVES", "LOWER", "LOYAL", "LUCKY", "LUNAR", "LUNCH", "LUNGS", "LYING", "MACRO", "MAGIC", "MAJOR", "MAKER", "MAKES", "MALES", "MAPLE", "MARCH", "MARKS", "MARRY", "MASKS", "MATCH", "MATES", "MATHS", "MATTE", "MAYBE", "MAYOR", "MEALS", "MEANS", "MEANT", "MEATS", "MEDAL", "MEDIA", "MEETS", "MELEE", "MENUS", "MERCY", "MERGE", "MERIT", "MERRY", "MESSY", "METAL", "METER", "METRO", "MICRO", "MIDST", "MIGHT", "MILES", "MINDS", "MINES", "MINOR", "MINUS", "MIXED", "MIXER", "MIXES", "MODEL", "MODEM", "MODES", "MOIST", "MONEY", "MONTH", "MORAL", "MOTOR", "MOUNT", "MOUSE", "MOUTH", "MOVED", "MOVES", "MOVIE", "MUSIC", "MYTHS", "NAILS", "NAKED", "NAMED", "NAMES", "NASAL", "NASTY", "NAVAL", "NEEDS", "NERVE", "NEVER", "NEWER", "NEWLY", "NEXUS", "NICER", "NICHE", "NIGHT", "NINJA", "NINTH", "NOBLE", "NODES", "NOISE", "NOISY", "NORMS", "NORTH", "NOTCH", "NOTED", "NOTES", "NOVEL", "NURSE", "NYLON", "OASIS", "OCCUR", "OCEAN", "OFFER", "OFTEN", "OLDER", "OLIVE", "OMEGA", "ONION", "ONSET", "OPENS", "OPERA", "OPTED", "OPTIC", "ORBIT", "ORDER", "ORGAN", "OTHER", "OUGHT", "OUNCE", "OUTER", "OWNED", "OWNER", "OXIDE", "PACKS", "PAGES", "PAINS", "PAINT", "PAIRS", "PANEL", "PANIC", "PANTS", "PAPER", "PARKS", "PARTS", "PARTY", "PASTA", "PASTE", "PATCH", "PATHS", "PATIO", "PAUSE", "PEACE", "PEACH", "PEAKS", "PEARL", "PEDAL", "PEERS", "PENIS", "PENNY", "PERKS", "PESTS", "PETTY", "PHASE", "PHONE", "PHOTO", "PIANO", "PICKS", "PIECE", "PILES", "PILLS", "PILOT", "PINCH", "PIPES", "PITCH", "PIXEL", "PIZZA", "PLACE", "PLAIN", "PLANE", "PLANS", "PLANT", "PLATE", "PLAYS", "PLAZA", "PLOTS", "PLUGS", "POEMS", "POINT", "POKER", "POLAR", "POLES", "POLLS", "POOLS", "PORCH", "PORES", "PORTS", "POSED", "POSES", "POSTS", "POUCH", "POUND", "POWER", "PRESS", "PRICE", "PRIDE", "PRIME", "PRINT", "PRIOR", "PRIZE", "PROBE", "PROMO", "PRONE", "PROOF", "PROPS", "PROUD", "PROVE", "PROXY", "PSALM", "PULLS", "PULSE", "PUMPS", "PUNCH", "PUPIL", "PUPPY", "PURSE", "QUEEN", "QUERY", "QUEST", "QUEUE", "QUICK", "QUIET", "QUILT", "QUITE", "QUOTE", "RACES", "RACKS", "RADAR", "RADIO", "RAILS", "RAINY", "RAISE", "RALLY", "RANCH", "RANGE", "RANKS", "RAPID", "RATED", "RATES", "RATIO", "RAZOR", "REACH", "REACT", "READS", "READY", "REALM", "REBEL", "REFER", "REIGN", "RELAX", "RELAY", "RENAL", "RENEW", "REPLY", "RESET", "RESIN", "RETRO", "RIDER", "RIDES", "RIDGE", "RIFLE", "RIGHT", "RIGID", "RINGS", "RINSE", "RISEN", "RISES", "RISKS", "RISKY", "RIVAL", "RIVER", "ROADS", "ROBOT", "ROCKS", "ROCKY", "ROGUE", "ROLES", "ROLLS", "ROMAN", "ROOMS", "ROOTS", "ROPES", "ROSES", "ROUGH", "ROUND", "ROUTE", "ROYAL", "RUGBY", "RUINS", "RULED", "RULER", "RULES", "RURAL", "SADLY", "SAFER", "SALAD", "SALES", "SALON", "SANDY", "SATIN", "SAUCE", "SAVED", "SAVES", "SCALE", "SCALP", "SCANS", "SCARE", "SCARF", "SCARY", "SCENE", "SCENT", "SCOOP", "SCOPE", "SCORE", "SCOUT", "SCRAP", "SCREW", "SEALS", "SEAMS", "SEATS", "SEEDS", "SEEKS", "SEEMS", "SELLS", "SENDS", "SENSE", "SERUM", "SERVE", "SETUP", "SEVEN", "SEWER", "SHADE", "SHAFT", "SHAKE", "SHALL", "SHAME", "SHAPE", "SHARE", "SHARK", "SHARP", "SHEEP", "SHEER", "SHEET", "SHELF", "SHELL", "SHIFT", "SHINE", "SHINY", "SHIPS", "SHIRT", "SHOCK", "SHOES", "SHOOK", "SHOOT", "SHOPS", "SHORE", "SHORT", "SHOTS", "SHOWN", "SHOWS", "SIDES", "SIEGE", "SIGHT", "SIGMA", "SIGNS", "SILLY", "SINCE", "SITES", "SIXTH", "SIZED", "SIZES", "SKIES", "SKILL", "SKINS", "SKIRT", "SKULL", "SLATE", "SLAVE", "SLEEK", "SLEEP", "SLEPT", "SLICE", "SLIDE", "SLOPE", "SLOTS", "SMALL", "SMART", "SMELL", "SMILE", "SMOKE", "SNACK", "SNAKE", "SNEAK", "SOCKS", "SOILS", "SOLAR", "SOLID", "SOLVE", "SONGS", "SONIC", "SORRY", "SORTS", "SOULS", "SOUND", "SOUTH", "SPACE", "SPARE", "SPARK", "SPEAK", "SPECS", "SPEED", "SPELL", "SPEND", "SPENT", "SPERM", "SPICE", "SPICY", "SPIKE", "SPINE", "SPITE", "SPLIT", "SPOKE", "SPOON", "SPORT", "SPOTS", "SPRAY", "SPURS", "SQUAD", "STACK", "STAFF", "STAGE", "STAIN", "STAKE", "STAMP", "STAND", "STARK", "STARS", "START", "STATE", "STATS", "STAYS", "STEAK", "STEAL", "STEAM", "STEEL", "STEEP", "STEER", "STEMS", "STEPS", "STICK", "STIFF", "STILL", "STOCK", "STOLE", "STONE", "STOOD", "STOOL", "STOPS", "STORE", "STORM", "STORY", "STOVE", "STRAP", "STRAW", "STRIP", "STUCK", "STUDY", "STUFF", "STYLE", "SUCKS", "SUGAR", "SUITE", "SUITS", "SUNNY", "SUPER", "SURGE", "SUSHI", "SWEAR", "SWEAT", "SWEET", "SWEPT", "SWIFT", "SWING", "SWISS", "SWORD", "SYRUP", "TABLE", "TAKEN", "TAKES", "TALES", "TALKS", "TANKS", "TAPES", "TASKS", "TASTE", "TASTY", "TAXES", "TEACH", "TEAMS", "TEARS", "TEENS", "TEETH", "TELLS", "TEMPO", "TENDS", "TENTH", "TENTS", "TERMS", "TESTS", "TEXTS", "THANK", "THEFT", "THEIR", "THEME", "THERE", "THESE", "THICK", "THIEF", "THIGH", "THING", "THINK", "THIRD", "THOSE", "THREE", "THREW", "THROW", "THUMB", "TIGER", "TIGHT", "TILES", "TIMER", "TIMES", "TIRED", "TIRES", "TITLE", "TOAST", "TODAY", "TOKEN", "TONES", "TOOLS", "TOOTH", "TOPIC", "TORCH", "TOTAL", "TOUCH", "TOUGH", "TOURS", "TOWEL", "TOWER", "TOWNS", "TOXIC", "TRACE", "TRACK", "TRACT", "TRADE", "TRAIL", "TRAIN", "TRAIT", "TRANS", "TRAPS", "TRASH", "TREAT", "TREES", "TREND", "TRIAL", "TRIBE", "TRICK", "TRIED", "TRIES", "TRIPS", "TROUT", "TRUCK", "TRULY", "TRUMP", "TRUNK", "TRUST", "TRUTH", "TUBES", "TUMOR", "TUNED", "TUNES", "TURBO", "TURNS", "TUTOR", "TWEET", "TWICE", "TWINS", "TWIST", "TYPES", "TYRES", "ULTRA", "UNCLE", "UNDER", "UNION", "UNITE", "UNITS", "UNITY", "UNTIL", "UPPER", "UPSET", "URBAN", "URGED", "URINE", "USAGE", "USERS", "USING", "USUAL", "VAGUE", "VALID", "VALUE", "VALVE", "VAPOR", "VAULT", "VEGAN", "VEINS", "VENTS", "VENUE", "VERSE", "VIDEO", "VIEWS", "VILLA", "VINYL", "VIRAL", "VIRUS", "VISAS", "VISIT", "VITAL", "VIVID", "VOCAL", "VODKA", "VOICE", "VOLTS", "VOTED", "VOTER", "VOTES", "WAGES", "WAGON", "WAIST", "WALKS", "WALLS", "WANTS", "WARNS", "WASTE", "WATCH", "WATER", "WATTS", "WAVES", "WEARS", "WEEDS", "WEEKS", "WEIGH", "WEIRD", "WELLS", "WELSH", "WHALE", "WHEAT", "WHEEL", "WHERE", "WHICH", "WHILE", "WHITE", "WHOLE", "WHOSE", "WIDER", "WIDOW", "WIDTH", "WINDS", "WINES", "WINGS", "WIPED", "WIRED", "WIRES", "WITCH", "WIVES", "WOMAN", "WOMEN", "WOODS", "WORDS", "WORKS", "WORLD", "WORMS", "WORRY", "WORSE", "WORST", "WORTH", "WOULD", "WOUND", "WRATH", "WRIST", "WRITE", "WRONG", "WROTE", "YACHT", "YARDS", "YEARS", "YEAST", "YIELD", "YOUNG", "YOURS", "YOUTH", "YUMMY", "ZONES"]
    
    
    var isActualWord: Bool = false
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    var firstGuessedLet: String!
    var secondGuessedLet: String!
    var thirdGuessedLet: String!
    var fourthGuessedLet: String!
    var fifthGuessedLet: String!
    var otherLet: String!
    
    var targetWord: String = "HI"
    var firstTargetLet: String!
    var secondTargetLet: String!
    var thirdTargetLet: String!
    var fourthTargetLet: String!
    var fifthTargetLet: String!
    var allTargetLets:[String]!
    
    var guessedWord: String!
    var guessedWordWSpace: String!
    
    var numOfGuesses: Int = 0
    
    var didWin: String = "n"
    
    @IBOutlet weak var scrollLabel: UILabel!
    
    
    @IBOutlet weak var allGuessesText: UITextView!
    
    var lastGuessedWord: String!
    
    var allGuessedWords: String!
    
    var myMutableString = NSMutableAttributedString()
    
    
    @IBOutlet weak var compactView: UIView!
    
    
    @IBOutlet weak var swipeUpLabel: UILabel!
    
    
    override func viewDidLoad() {
        keyButtons = [AKey, BKey, CKey, DKey, EKey, FKey, GKey, HKey, IKey, JKey, KKey, LKey, MKey, NKey, OKey, PKey, QKey, RKey, SKey, TKey, UKey, VKey, WKey, XKey, YKey, ZKey]
        letterLabels = [firstLetLabel, secondLetLabel, thirdLetLabel, fourthLetLabel, fifthLetLabel]
        currentLabel = firstLetLabel
        roundObjects()
        if targetWord == "HI" {
            targetWord = wordOptions.randomElement() ?? ""
        }
        errorLabel.text = ""
        
        allGuessesText.text = ""
        allGuessedWords = ""
        scrollLabel.text = ""
        
        var numOfLetters: Int = 0
        
        super.viewDidLoad()
        
        if presentationStyle == .compact {
            compactView.backgroundColor = .white
            swipeUpLabel.text = "Swipe Up to Start Word Guess!"
            swipeUpLabel.textColor = UIColor.black
        }
        if presentationStyle == .expanded {
            compactView.isHidden = true
            swipeUpLabel.isHidden = true
        }
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
        if (didWin == "n") {
        setLabel(letter: "Q")
        }
    }
    @IBAction func WTap(_ sender: Any) {
        if (didWin == "n") {
        setLabel(letter: "W")
        }
    }
    @IBAction func ETap(_ sender: Any) {
        if (didWin == "n") {
        setLabel(letter: "E")
        }
    }
    @IBAction func RTap(_ sender: Any) {
        if (didWin == "n") {
        setLabel(letter: "R")
        }
    }
    @IBAction func TTap(_ sender: Any) {
        if (didWin == "n") {
        setLabel(letter: "T")
        }
    }
    @IBAction func YTap(_ sender: Any) {
        if (didWin == "n") {
        setLabel(letter: "Y")
        }
    }
    @IBAction func UTap(_ sender: Any) {
        if (didWin == "n") {
        setLabel(letter: "U")
        }
    }
    @IBAction func ITap(_ sender: Any) {
        if (didWin == "n") {
        setLabel(letter: "I")
        }
    }
    @IBAction func OTap(_ sender: Any) {
        if (didWin == "n") {
        setLabel(letter: "O")
        }
    }
    @IBAction func PTap(_ sender: Any) {
        if (didWin == "n") {
        setLabel(letter: "P")
        }
    }
    @IBAction func ATap(_ sender: Any) {
        if (didWin == "n") {
        setLabel(letter: "A")
        }
    }
    @IBAction func STap(_ sender: Any) {
        if (didWin == "n") {
        setLabel(letter: "S")
        }
    }
    @IBAction func DTap(_ sender: Any) {
        if (didWin == "n") {
        setLabel(letter: "D")
        }
    }
    @IBAction func FTap(_ sender: Any) {
        if (didWin == "n") {
        setLabel(letter: "F")
        }
    }
    @IBAction func GTap(_ sender: Any) {
        if (didWin == "n") {
        setLabel(letter: "G")
        }
    }
    @IBAction func HTap(_ sender: Any) {
        if (didWin == "n") {
        setLabel(letter: "H")
        }
    }
    @IBAction func JTap(_ sender: Any) {
        if (didWin == "n") {
        setLabel(letter: "K")
        }
    }
    @IBAction func KTap(_ sender: Any) {
        if (didWin == "n") {
        setLabel(letter: "K")
        }
    }
    @IBAction func LTap(_ sender: Any) {
        if (didWin == "n") {
        setLabel(letter: "L")
        }
    }
    @IBAction func ZTap(_ sender: Any) {
        if (didWin == "n") {
        setLabel(letter: "Z")
        }
    }
    @IBAction func XTap(_ sender: Any) {
        if (didWin == "n") {
        setLabel(letter: "X")
        }
    }
    @IBAction func CTap(_ sender: Any) {
        if (didWin == "n") {
        setLabel(letter: "C")
        }
    }
    @IBAction func VTap(_ sender: Any) {
        if (didWin == "n") {
        setLabel(letter: "V")
        }
    }
    @IBAction func BTap(_ sender: Any) {
        if (didWin == "n") {
        setLabel(letter: "B")
        }
    }
    @IBAction func NTap(_ sender: Any) {
        if (didWin == "n") {
        setLabel(letter: "N")
        }
    }
    @IBAction func MTap(_ sender: Any) {
        if (didWin == "n") {
        setLabel(letter: "M")
        }
    }
    
    func setAllKeyColors() {
        
        var c = 0
        
        for button in keyButtons {
            
            if keyColors[c] == "b" {
                button.backgroundColor = UIColor(named: "customGreen")
            } else if keyColors[c] == "y" {
                button.backgroundColor = UIColor(named: "customYellow")
            } else if keyColors[c] == "d"{
                button.backgroundColor = UIColor.darkGray
            }
            
            c = c+1
        }
        
    }
    

    
    
    @IBAction func BackTap(_ sender: Any) {
        if firstLetLabel.text != "" {
        isActualWord = false
        errorLabel.text = ""
            if secondLetLabel.text == "" {
                firstLetLabel.text = ""
            } else if thirdLetLabel.text == "" {
                secondLetLabel.text = ""
            } else if fourthLetLabel.text == "" {
                thirdLetLabel.text = ""
            } else if fifthLetLabel.text == "" {
                fourthLetLabel.text = ""
            } else {
                fifthLetLabel.text = ""
            }
        }

    }
    
    @IBAction func GoTap(_ sender: Any) {
        if (fifthLetLabel.text != "" && didWin == "n") {
            
            guessedWord = firstGuessedLet + secondGuessedLet + thirdGuessedLet + fourthGuessedLet + fifthGuessedLet
            guessedWordWSpace = firstGuessedLet + " " + secondGuessedLet + " " + thirdGuessedLet + " " + fourthGuessedLet + " " + fifthGuessedLet
            
            
            for word in wordOptions {
                if word == guessedWord {
                    isActualWord = true
                }
            }
            
            if isActualWord {
                
                setLabelColors()
                if guessedWord == targetWord {
                    allGuessesText.text = "YOU WIN!"
                    allGuessesText.textColor = UIColor.black
                    didWin = "y"
                }
                let url = prepareURL()
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.8){
                    self.prepareMessage(url)
                }
                
            } else {
                errorLabel.text = "Word not found in word list"
            }
            
        } else {
        errorLabel.text = "Word must be 5 letters long"
        }
    }
    
    
    
    func setLabel(letter: String) {
        if firstLetLabel.text == "" {
            firstLetLabel.text = letter
            firstGuessedLet = letter
        } else if secondLetLabel.text == "" {
            secondLetLabel.text = letter
            secondGuessedLet = letter
        } else if thirdLetLabel.text == "" {
            thirdLetLabel.text = letter
            thirdGuessedLet = letter
        } else if fourthLetLabel.text == "" {
            fourthLetLabel.text = letter
            fourthGuessedLet = letter
        } else if fifthLetLabel.text == "" {
            fifthLetLabel.text = letter
            fifthGuessedLet = letter
        }
    }
    
    
//    func setLabelColors() {
//
//        firstTargetLet = getWordLetter(num: 0, word: targetWord)
//        secondTargetLet = getWordLetter(num: 1, word: targetWord)
//        thirdTargetLet = getWordLetter(num: 2, word: targetWord)
//        fourthTargetLet = getWordLetter(num: 3, word: targetWord)
//        fifthTargetLet = getWordLetter(num: 4, word: targetWord)
//        allTargetLets = [firstTargetLet, secondTargetLet, thirdTargetLet, fourthTargetLet, fifthTargetLet]
//
//        var i:Int = 0
//
//        if (firstLetLabel.text == allTargetLets[i]) {
//            firstLetLabel.backgroundColor = UIColor(named: "customGreen")
//            setKeyColor(keyLetter: firstLetLabel.text ?? "", color: 1)
//            allTargetLets.remove(at: i)
//            i = i-1
//        }
//        if (secondLetLabel.text == allTargetLets[i+1]) {
//            secondLetLabel.backgroundColor = UIColor(named: "customGreen")
//            setKeyColor(keyLetter: secondLetLabel.text ?? "", color: 1)
//            allTargetLets.remove(at: i+1)
//            i = i-1
//        }
//        if (thirdLetLabel.text == allTargetLets[i+2]) {
//            thirdLetLabel.backgroundColor = UIColor(named: "customGreen")
//            setKeyColor(keyLetter: thirdLetLabel.text ?? "", color: 1)
//            allTargetLets.remove(at: i+2)
//            i = i-1
//        }
//        if (fourthLetLabel.text == allTargetLets[i+3]) {
//            fourthLetLabel.backgroundColor = UIColor(named: "customGreen")
//            setKeyColor(keyLetter: fourthLetLabel.text ?? "", color: 1)
//            allTargetLets.remove(at: i+3)
//            i = i-1
//        }
//        if (fifthLetLabel.text == allTargetLets[i+4]) {
//            fifthLetLabel.backgroundColor = UIColor(named: "customGreen")
//            setKeyColor(keyLetter: fifthLetLabel.text ?? "", color: 1)
//            allTargetLets.remove(at: i+4)
//            i = i-1
//        }
//
//
//        var m:Int = 0
//        var n:Int = allTargetLets.count
//
//        while (m<=n){
//            if (firstLetLabel.text == allTargetLets[m] && firstLetLabel.text != firstTargetLet){
//                firstLetLabel.backgroundColor = UIColor(named: "customYellow")
//                setKeyColor(keyLetter: firstLetLabel.text ?? "", color: 2)
//                allTargetLets.remove(at: m)
//                n = n-1
//                m = m-1
//            } else if (secondLetLabel.text == allTargetLets[m] && secondLetLabel.text != secondTargetLet){
//                secondLetLabel.backgroundColor = UIColor(named: "customYellow")
//                setKeyColor(keyLetter: secondLetLabel.text ?? "", color: 2)
//                allTargetLets.remove(at: m)
//                n = n-1
//                m = m-1
//            } else if (thirdLetLabel.text == allTargetLets[m] && thirdLetLabel.text != thirdTargetLet){
//                thirdLetLabel.backgroundColor = UIColor(named: "customYellow")
//                setKeyColor(keyLetter: thirdLetLabel.text ?? "", color: 2)
//                allTargetLets.remove(at: m)
//                n = n-1
//                m = m-1
//            } else if (fourthLetLabel.text == allTargetLets[m] && fourthLetLabel.text != fourthTargetLet){
//                fourthLetLabel.backgroundColor = UIColor(named: "customYellow")
//                setKeyColor(keyLetter: fourthLetLabel.text ?? "", color: 2)
//                allTargetLets.remove(at: m)
//                n = n-1
//                m = m-1
//            } else if (fifthLetLabel.text == allTargetLets[m]  && fifthLetLabel.text != fifthTargetLet){
//                secondLetLabel.backgroundColor = UIColor(named: "customYellow")
//                setKeyColor(keyLetter: secondLetLabel.text ?? "", color: 2)
//                allTargetLets.remove(at: m)
//                n = n-1
//                m = m-1
//            }
//            m = m+1
//        }
        
        
        
        
        
        
    func setLabelColors() {
        
            firstTargetLet = getWordLetter(num: 0, word: targetWord)
            secondTargetLet = getWordLetter(num: 1, word: targetWord)
            thirdTargetLet = getWordLetter(num: 2, word: targetWord)
            fourthTargetLet = getWordLetter(num: 3, word: targetWord)
            fifthTargetLet = getWordLetter(num: 4, word: targetWord)
            allTargetLets = [firstTargetLet, secondTargetLet, thirdTargetLet, fourthTargetLet, fifthTargetLet]
        
        setOneLabelColor(targetLet: firstTargetLet, letterLabel: firstLetLabel)
        setOneLabelColor(targetLet: secondTargetLet, letterLabel: secondLetLabel)
        setOneLabelColor(targetLet: thirdTargetLet, letterLabel: thirdLetLabel)
        setOneLabelColor(targetLet: fourthTargetLet, letterLabel: fourthLetLabel)
        setOneLabelColor(targetLet: fifthTargetLet, letterLabel: fifthLetLabel)
        
    }
        
        func setOneLabelColor(targetLet: String, letterLabel: UILabel) {
            
            
            if (letterLabel.text == targetLet) {
                letterLabel.backgroundColor = UIColor(named: "customGreen")
                setKeyColor(keyLetter: letterLabel.text ?? "", color: 1)
            } else if (letterLabel.text != firstTargetLet && letterLabel.text != secondTargetLet && letterLabel.text != thirdTargetLet && letterLabel.text != fourthTargetLet && letterLabel.text != fifthTargetLet) {
                letterLabel.backgroundColor = UIColor.darkGray
                setKeyColor(keyLetter: letterLabel.text ?? "", color: 3)
            } else if (letterLabel.text == firstTargetLet && firstLetLabel.text != firstTargetLet) {
                letterLabel.backgroundColor = UIColor(named: "customYellow")
                setKeyColor(keyLetter: letterLabel.text ?? "", color: 2)
            } else if (letterLabel.text == secondTargetLet && secondLetLabel.text != secondTargetLet) {
                letterLabel.backgroundColor = UIColor(named: "customYellow")
                setKeyColor(keyLetter: letterLabel.text ?? "", color: 2)
            } else if (letterLabel.text == thirdTargetLet && thirdLetLabel.text != thirdTargetLet) {
                letterLabel.backgroundColor = UIColor(named: "customYellow")
                setKeyColor(keyLetter: letterLabel.text ?? "", color: 2)
            } else if (letterLabel.text == fourthTargetLet && fourthLetLabel.text != fourthTargetLet) {
                letterLabel.backgroundColor = UIColor(named: "customYellow")
                setKeyColor(keyLetter: letterLabel.text ?? "", color: 2)
            } else if (letterLabel.text == fifthTargetLet && fifthLetLabel.text != fifthTargetLet) {
                letterLabel.backgroundColor = UIColor(named: "customYellow")
                setKeyColor(keyLetter: letterLabel.text ?? "", color: 2)
            } else {
                letterLabel.backgroundColor = UIColor.darkGray
                setKeyColor(keyLetter: letterLabel.text ?? "", color: 3)
            }
                
                
            
        }
    
    func setKeyColor(keyLetter: String, color: Int) {
        
        var b = 0
         
         for button in keyButtons {
             if button.titleLabel?.text == keyLetter {
                 if (color == 2 && keyColors[b] != "b") {
                     button.backgroundColor = UIColor(named: "customYellow")
                     keyColors[b] = "y"
                 } else if color == 1{
                     button.backgroundColor = UIColor(named: "customGreen")
                     keyColors[b] = "b"
                 } else if (keyColors[b] != "y" && keyColors[b] != "b"){
                     button.backgroundColor = UIColor.darkGray
                     keyColors[b] = "d"
                 }
             }
             b = b+1
         }
         
     }
    
    func getWordLetter(num: Int, word: String) -> String {
        let start = word.index(word.startIndex, offsetBy: num)
        let end = word.index(word.startIndex, offsetBy: num)
        let range = start...end

        return String(word[range])
    }
    
    func getFiveLetterWord(num: Int, word: String) -> String {
        let start = word.index(word.startIndex, offsetBy: num)
        let end = word.index(word.startIndex, offsetBy: num+4)
        let range = start...end

        return String(word[range])
    }
    
    func checkWordLetter(num: Int, word: String) -> String {
        let start = word.index(word.startIndex, offsetBy: num)
        let end = word.index(word.startIndex, offsetBy: num)
        let range = start...end

        return String(word[range])
    }
    
    func getAttributedString(string: String) -> String {
        
        let attributedString = NSMutableAttributedString(string: string)
        attributedString.addAttribute(.backgroundColor, value: UIColor.red, range: NSRange(location: 0, length: 1))
        attributedString.addAttribute(.backgroundColor, value: UIColor.green, range: NSRange(location: 1, length: 1))
        attributedString.addAttribute(.backgroundColor, value: UIColor.gray, range: NSRange(location: 2, length: 1))
        
        return attributedString.string
        
    }
   
    
    
    func prepareURL() -> URL {
        
            allGuessedWords = (allGuessedWords ?? "") + "\n\n" + (guessedWordWSpace ?? "")
            numOfGuesses+=1
   
           var urlComponents = URLComponents()
           urlComponents.scheme = "https";
           urlComponents.host = "www.ebookfrenzy.com";
           let guessQuery = URLQueryItem(name: "lastGuess", value: guessedWord)
           let targetQuery = URLQueryItem(name: "targetWord", value: targetWord)
           let allWordsQuery = URLQueryItem(name: "allWords", value: allGuessedWords)
           let guessNumQuery = URLQueryItem(name: "guessNum", value: String(numOfGuesses))
           let didWinQuery = URLQueryItem(name: "didWin", value: didWin)
        let aKeyQuery = URLQueryItem(name: "aKeyColor", value: keyColors[0])
        let bKeyQuery = URLQueryItem(name: "bKeyColor", value: keyColors[1])
        let cKeyQuery = URLQueryItem(name: "cKeyColor", value: keyColors[2])
        let dKeyQuery = URLQueryItem(name: "dKeyColor", value: keyColors[3])
        let eKeyQuery = URLQueryItem(name: "eKeyColor", value: keyColors[4])
        let fKeyQuery = URLQueryItem(name: "fKeyColor", value: keyColors[5])
        let gKeyQuery = URLQueryItem(name: "gKeyColor", value: keyColors[6])
        let hKeyQuery = URLQueryItem(name: "hKeyColor", value: keyColors[7])
        let iKeyQuery = URLQueryItem(name: "iKeyColor", value: keyColors[8])
        let jKeyQuery = URLQueryItem(name: "jKeyColor", value: keyColors[9])
        let kKeyQuery = URLQueryItem(name: "kKeyColor", value: keyColors[10])
        let lKeyQuery = URLQueryItem(name: "lKeyColor", value: keyColors[11])
        let mKeyQuery = URLQueryItem(name: "mKeyColor", value: keyColors[12])
        let nKeyQuery = URLQueryItem(name: "nKeyColor", value: keyColors[13])
        let oKeyQuery = URLQueryItem(name: "oKeyColor", value: keyColors[14])
        let pKeyQuery = URLQueryItem(name: "pKeyColor", value: keyColors[15])
        let qKeyQuery = URLQueryItem(name: "qKeyColor", value: keyColors[16])
        let rKeyQuery = URLQueryItem(name: "rKeyColor", value: keyColors[17])
        let sKeyQuery = URLQueryItem(name: "sKeyColor", value: keyColors[18])
        let tKeyQuery = URLQueryItem(name: "tKeyColor", value: keyColors[19])
        let uKeyQuery = URLQueryItem(name: "uKeyColor", value: keyColors[20])
        let vKeyQuery = URLQueryItem(name: "vKeyColor", value: keyColors[21])
        let wKeyQuery = URLQueryItem(name: "wKeyColor", value: keyColors[22])
        let xKeyQuery = URLQueryItem(name: "xKeyColor", value: keyColors[23])
        let yKeyQuery = URLQueryItem(name: "yKeyColor", value: keyColors[24])
        let zKeyQuery = URLQueryItem(name: "zKeyColor", value: keyColors[25])
        urlComponents.queryItems = [guessQuery, targetQuery, allWordsQuery, guessNumQuery, didWinQuery, aKeyQuery, bKeyQuery, cKeyQuery, dKeyQuery, eKeyQuery, fKeyQuery, gKeyQuery, hKeyQuery, iKeyQuery, jKeyQuery, kKeyQuery, lKeyQuery, mKeyQuery, nKeyQuery, oKeyQuery, pKeyQuery, qKeyQuery, rKeyQuery, sKeyQuery, tKeyQuery, uKeyQuery, vKeyQuery, wKeyQuery, xKeyQuery, yKeyQuery, zKeyQuery]
           return urlComponents.url!
   
       }
    
    func prepareMessage(_ url: URL) {
    
            let layout = MSMessageTemplateLayout()
        
            
    
            if didWin == "y" {
                layout.image = UIImage(named: "gameOverImage")
                layout.caption = "Game Over!"
            } else {
                layout.image = UIImage(named: "normalImage")
                layout.caption = "Let's Play Word Guess!"
            }
    
            let message = MSMessage()
            message.layout = layout
            message.url = url
        
            activeConversation?.insert(message, completionHandler: nil)
    
//            let conversation = self.activeConversation
//
//            conversation?.insert(message, completionHandler: {(error) in
//                if let error = error {
//                    print(error)
//                }
//            })
    
            self.dismiss()
    
        }
    
    
    func decodeURL(_ url: URL) {

            let components = URLComponents(url: url, resolvingAgainstBaseURL: false)

            for (index, queryItem) in (components?.queryItems?.enumerated())! {
                if queryItem.name == "lastGuess" {
                    lastGuessedWord = queryItem.value ?? ""
                   // allGuessesLabel.text = (allGuessesLabel.text ?? "Last guesses: ") + "\n" + lastGuessedWord
                }
                if queryItem.name == "targetWord" {
                    targetWord = queryItem.value ?? ""
                }
                if queryItem.name == "allWords" {
                    allGuessedWords = queryItem.value ?? "hello"
                }
                if queryItem.name == "guessNum" {
                    numOfGuesses = Int(queryItem.value ?? "2") ?? 1
                }
                if queryItem.name == "didWin" {
                    didWin = queryItem.value ?? "n"
                }
                if queryItem.name == "aKeyColor" {
                    keyColors[0] = queryItem.value ?? "g"
                } else if queryItem.name == "bKeyColor" {
                    keyColors[1] = queryItem.value ?? "g"
                } else if queryItem.name == "cKeyColor" {
                    keyColors[2] = queryItem.value ?? "g"
                } else if queryItem.name == "dKeyColor" {
                    keyColors[3] = queryItem.value ?? "g"
                } else if queryItem.name == "eKeyColor" {
                    keyColors[4] = queryItem.value ?? "g"
                } else if queryItem.name == "fKeyColor" {
                    keyColors[5] = queryItem.value ?? "g"
                } else if queryItem.name == "gKeyColor" {
                    keyColors[6] = queryItem.value ?? "g"
                } else if queryItem.name == "hKeyColor" {
                    keyColors[7] = queryItem.value ?? "g"
                } else if queryItem.name == "iKeyColor" {
                    keyColors[8] = queryItem.value ?? "g"
                } else if queryItem.name == "jKeyColor" {
                    keyColors[9] = queryItem.value ?? "g"
                } else if queryItem.name == "kKeyColor" {
                    keyColors[10] = queryItem.value ?? "g"
                } else if queryItem.name == "lKeyColor" {
                    keyColors[11] = queryItem.value ?? "g"
                } else if queryItem.name == "mKeyColor" {
                    keyColors[12] = queryItem.value ?? "g"
                } else if queryItem.name == "nKeyColor" {
                    keyColors[13] = queryItem.value ?? "g"
                } else if queryItem.name == "oKeyColor" {
                    keyColors[14] = queryItem.value ?? "g"
                } else if queryItem.name == "pKeyColor" {
                    keyColors[15] = queryItem.value ?? "g"
                } else if queryItem.name == "qKeyColor" {
                    keyColors[16] = queryItem.value ?? "g"
                } else if queryItem.name == "rKeyColor" {
                    keyColors[17] = queryItem.value ?? "g"
                } else if queryItem.name == "sKeyColor" {
                    keyColors[18] = queryItem.value ?? "g"
                } else if queryItem.name == "tKeyColor" {
                    keyColors[19] = queryItem.value ?? "g"
                } else if queryItem.name == "uKeyColor" {
                    keyColors[20] = queryItem.value ?? "g"
                } else if queryItem.name == "vKeyColor" {
                    keyColors[21] = queryItem.value ?? "g"
                } else if queryItem.name == "wKeyColor" {
                    keyColors[22] = queryItem.value ?? "g"
                } else if queryItem.name == "xKeyColor" {
                    keyColors[23] = queryItem.value ?? "g"
                } else if queryItem.name == "yKeyColor" {
                    keyColors[24] = queryItem.value ?? "g"
                } else if queryItem.name == "zKeyColor" {
                    keyColors[25] = queryItem.value ?? "g"
                }


            }
        
        if numOfGuesses > 4 {
            scrollLabel.text = "Scroll up to see more previous guesses^^"
        }
        
        setAllKeyColors()
        
        if (didWin == "y") {
            
            gameWon()
            
        } else {

        setGuessLabels()
        //allGuessesLabel.text = allGuessedWords
            //allGuessesLabel.textColor = UIColor.black
        
        }

        }
    
    func gameWon() {
        
        
        allGuessesText.text = "YOU LOST! \n\n the word was:"
        allGuessesText.textColor = UIColor.black
        
        firstLetLabel.text = getWordLetter(num: 0, word: targetWord)
        secondLetLabel.text = getWordLetter(num: 1, word: targetWord)
        thirdLetLabel.text = getWordLetter(num: 2, word: targetWord)
        fourthLetLabel.text = getWordLetter(num: 3, word: targetWord)
        fifthLetLabel.text = getWordLetter(num: 4, word: targetWord)
        
    }
    
    
    
    func setGuessLabels() {
        
        
        myMutableString = NSMutableAttributedString(string: allGuessedWords)
        
        var j:Int = numOfGuesses - 1
        
        while j >= 0 {
        
        var i:Int = 0
        
        while i < 5 {
            
        if (getWordLetter(num: ((i*2)+2) + (j*11), word: allGuessedWords) == getWordLetter(num: i, word: targetWord)){
            myMutableString.addAttribute(.backgroundColor, value: UIColor(named: "customGreen"), range: NSRange(location: ((i*2)+2) + (j*11), length: 1))
        }
        else if (getWordLetter(num: ((i*2)+2) + (j*11), word: allGuessedWords) == getWordLetter(num: 0, word: targetWord)) && (getWordLetter(num: 2 + (j*11), word: allGuessedWords) != getWordLetter(num: 0, word: targetWord)){
            myMutableString.addAttribute(.backgroundColor, value: UIColor(named: "customYellow"), range: NSRange(location: ((i*2)+2) + (j*11), length: 1))
        }
        else if (getWordLetter(num: ((i*2)+2) + (j*11), word: allGuessedWords) == getWordLetter(num: 1, word: targetWord)) && (getWordLetter(num: 4 + (j*11), word: allGuessedWords) != getWordLetter(num: 1, word: targetWord)){
            myMutableString.addAttribute(.backgroundColor, value: UIColor(named: "customYellow"), range: NSRange(location: ((i*2)+2) + (j*11), length: 1))
        }
        else if (getWordLetter(num: ((i*2)+2) + (j*11), word: allGuessedWords) == getWordLetter(num: 2, word: targetWord)) && (getWordLetter(num: 6 + (j*11), word: allGuessedWords) != getWordLetter(num: 2, word: targetWord)){
            myMutableString.addAttribute(.backgroundColor, value: UIColor(named: "customYellow"), range: NSRange(location: ((i*2)+2) + (j*11), length: 1))
        }
        else if (getWordLetter(num: ((i*2)+2) + (j*11), word: allGuessedWords) == getWordLetter(num: 3, word: targetWord)) && (getWordLetter(num: 8 + (j*11), word: allGuessedWords) != getWordLetter(num: 3, word: targetWord)){
            myMutableString.addAttribute(.backgroundColor, value: UIColor(named: "customYellow"), range: NSRange(location: ((i*2)+2) + (j*11), length: 1))
        }
        else if (getWordLetter(num: ((i*2)+2) + (j*11), word: allGuessedWords) == getWordLetter(num: 4, word: targetWord)) && (getWordLetter(num: 10 + (j*11), word: allGuessedWords) != getWordLetter(num: 4, word: targetWord)){
            myMutableString.addAttribute(.backgroundColor, value: UIColor(named: "customYellow"), range: NSRange(location: ((i*2)+2) + (j*11), length: 1))
        }
        else {
            myMutableString.addAttribute(.backgroundColor, value: UIColor.darkGray, range: NSRange(location: ((i*2)+2) + (j*11), length: 1))
        }
         
            i = i+1
            
        }
            j = j-1
        }
        
        myMutableString.addAttribute(.foregroundColor, value: UIColor.white, range: NSMakeRange(0, myMutableString.length))
        myMutableString.addAttribute(.font, value: UIFont(name: "Helvetica Neue", size: 32), range: NSMakeRange(0, myMutableString.length))
        let paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .center
        myMutableString.addAttribute(.paragraphStyle, value: paragraph, range: NSMakeRange(0, myMutableString.length))
        
        allGuessesText.attributedText = myMutableString
        
        let range = NSRange(location: allGuessesText.text.count - 1, length: 1)
        allGuessesText.scrollRangeToVisible(range)
        
    }
   
    
    
    
    // MARK: - Conversation Handling
    
    override func willBecomeActive(with conversation: MSConversation) {
        
        if let messageURL = conversation.selectedMessage?.url {
            decodeURL(messageURL)
        }
       
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
        
        
                let layout = MSMessageTemplateLayout()
            
                
        
                if didWin == "y" {
                    layout.image = UIImage(named: "gameOverImage")
                    layout.caption = "You Lost!"
                } else {
                    layout.image = UIImage(named: "normalImage")
                    layout.caption = "Let's Play Word Guess!"
                }
                message.layout = layout
            
                activeConversation?.insert(message, completionHandler: nil)
        
        
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
        
        if presentationStyle == .expanded {
            compactView.isHidden = true
            swipeUpLabel.isHidden = true
        }
    
        // Use this method to finalize any behaviors associated with the change in presentation style.
    }


}
