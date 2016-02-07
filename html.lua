--[[ TODO
- scores
- difficulty levels
- better win lose screens
]]

------------------------------------------------------------------------------------
dict = { -- the dictionary text file wouldn't load when exporting as a html game
"aardvark", "abacus", "abase", "abate", "abattoir", "abbacy", "abbess", 
"abbey", "abbot", "abbreviate", "abc", "abdicate", "abdomen", "abduct", 
"angus", "aberration", "abet", "abeyance", "abhor", "abhorrence", "abide", 
"ability", "abjection", "abjure", "seaman", "ablution", "abnegate", "abnegation", 
"abolish", "abolition", "bomb", "snowman", "abominate", "aborigine", "abort", 
"abortion", "aborigine", "abort", "abortion", "abound", "face", "abrade", 
"abrasion", "abridge", "abrogate", "abruptness", "abscess", "absence", "absentee", 
"landlord", "mindedness", "absinth", "majority", "pitch", "zero", "absolution", 
"absolutism", "absolve", "absorb", "absorption", "abstain", "abstention", "abstinence", 
"absurdity", "abundance", "abundance", "abuser", "abut", "abutment", "abyss", 
"acacia", "academia", "academy", "acanthus", "accede", "accelerate", "accentuate", 
"accept", "acceptance", "accessory", "road", "time", "accident", "accolade", 
"address", "accompany", "accomplice", "accomplish", "accordance", "accordion", "accost", 
"accessory", "road", "time", "accident", "accolade", "address", "accompany", 
"accomplice", "accomplish", "accordance", "accordion", "accost", "accountant", "accredit", 
"accretion", "accrue", "accumulate", "accuracy", "accusation", "accuse", "accustom", 
"acerbity", "acetate", "acid", "acetone", "acetylene", "achieve", "heel", 
"tendon", "acidify", "house", "rain", "test", "acme", "acne", 
"acolyte", "aconite", "acorn", "acoustics", "acquaint", "acquiesce", "acquire", 
"taste", "acquit", "acre", "acreage", "acridity", "acrimony", "acrobat", 
"acrobatics", "acronym", "acropolis", "acrostic", "acid", "actinism", "actinium", 
"action", "point", "replay", "stations", "activate", "service", "activism", 
"activity", "actor", "actress", "actuality", "actuary", "actuate", "acuity", 
"acumen", "accent", "adage", "adam", "apple", "adapt", "adaptor", 
"add", "addendum", "adder", "addict", "addiction", "addition", "additive", 
"addle", "addressee", "adduce", "adenoids", "adequacy", "adhere", "adherence", 
"adhesion", "adiposity", "adjacency", "adjective", "adjoin", "adjourn", "adjudge", 
"adjudicate", "adjunct", "adjure", "adjust", "adjutant", "admin", "administer", 
"admiral", "admiralty", "admiration", "admire", "admission", "admit", "admittance", 
"admixture", "admonish", "ado", "adobe", "adonis", "adopt", "adore", 
"adorn", "adrenalin", "adsorb", "adulation", "adulthood", "adulterate", "adulterer", 
"adultery", "adumbrate", "level", "advent", "adventist", "playground", "adventurer", 
"adverb", "adversary", "adversity", "advert", "advertise", "advice", "advise", 
"adviser", "advocaat", "advocacy", "adz", "adze", "aegis", "harp", 
"aeon", "aerate", "aerobatics", "aerobics", "aerodrome", "aerofoil", "aeroplane", 
"aerosol", "aerospace", "aesthete", "aesthete", "aetiology", "affability", "affair", 
"affect", "affection", "affidavit", "order", "affinity", "affirm", "afflict", 
"affliction", "affluence", "afford", "afforest", "affray", "hound", "aficionado", 
"elephant", "violet", "afrikaans", "afrikaner", "afterbirth", "care", "effect", 
"afterglow", "afterlife", "aftermath", "afternoon", "afterpains", "afters", "aftershave", 
"aftertaste", "agaric", "agate", "agate", "agave", "ageism", "agency", 
"agenda", "agent", "consent", "aggrandize", "aggravate", "aggression", "aggressor", 
"aggro", "agility", "agitate", "agnail", "agonize", "agony", "aunt", 
"column", "agree", "agreement", "agrimony", "agronomy", "ague", "aide", 
"camp", "aids", "ail", "aileron", "ailment", "airbase", "bed", 
"brick", "airbus", "marshal", "commodore", "aircraft", "carrier", "aircrew", 
"cushion", "airedale", "airer", "airfield", "force", "airgun", "airhead", 
"hostess", "letter", "airline", "airliner", "airlock", "airmail", "airman", 
"marshal", "airplane", "pocket", "airport", "raid", "rifle", "graces", 
"airscrew", "airship", "airspace", "speed", "airstrip", "terminal", "controller", 
"marshal", "airwaves", "airway", "airwoman", "aisle", "aitch", "aitchbone", 
"akela", "alacrity", "clock", "alarmist", "alb", "albatross", "albino", 
"album", "albumen", "albumin", "alchemy", "alcohol", "alcoholism", "alcove", 
"aldehyde", "aldehyde", "alder", "alderman", "ale", "alehouse", "alembic", 
"level", "technique", "alfalfa", "alga", "algebra", "algol", "algorithm", 
"alibi", "alienate", "align", "canal", "alimony", "alkali", "alkalinity", 
"alkaloid", "alkane", "alkene", "alkyne", "allah", "allay", "clear", 
"comers", "allegation", "allege", "allegiance", "allegory", "key", "screw", 
"allergy", "alleviate", "alley", "alliance", "alligator", "wrestling", "allocate", 
"allot", "allotment", "allotropy", "allow", "allowance", "rounder", "day", 
"day", "allspice", "allude", "allurement", "allusion", "key", "screw", 
"allergy", "alleviate", "alley", "alliance", "alligator", "wrestling", "allocate", 
"allot", "allotment", "allotropy", "allow", "allowance", "rounder", "day", 
"day", "allspice", "allude", "allurement", "allusion", "alluvium", "mater", 
"almanac", "almond", "almoner", "alms", "almshouse", "aloe", "alp", 
"alpaca", "alpha", "alphabet", "particle", "alsatian", "ran", "altar", 
"altarpiece", "alter", "altercate", "ego", "ego", "angles", "current", 
"alternator", "altimeter", "altitude", "alto", "altruism", "alum", "alumina", 
"aluminium", "aluminize", "aluminum", "alumnus", "alyssum", "disease", "amalgam", 
"amalgamate", "amanuensis", "amaranth", "amaryllis", "amass", "amateur", "amaze", 
"amazon", "ambassador", "ambergris", "ambience", "ambiguity", "ambit", "ambition", 
"ambrosia", "ambulance", "ambuscade", "ameliorate", "amend", "amendment", "amends", 
"amenity", "dream", "football", "americium", "amethyst", "amine", "acid", 
"amity", "ammeter", "ammo", "ammonia", "ammonite", "ammunition", "amnesia", 
"amnion", "amoeba", "amortize", "amour", "propre", "ampelopsis", "amperage", 
"ampere", "ampersand", "amphora", "amplifier", "amplify", "amplitude", "modulation", 
"ampoule", "ampulla", "amputate", "amulet", "amuse", "amusement", "arcade", 
"anabaptist", "steroid", "anabolism", "anaconda", "anaemia", "anagram", "analgesia", 
"analog", "analogize", "analogue", "analogy", "analogy", "analyse", "analysis", 
"analyst", "analyze", "anapaest", "anarchism", "anarchist", "anarchy", "anathema", 
"anatomy", "ancestor", "ancestry", "anchorage", "anchorite", "anchorman", "anchovy", 
"gime", "andiron", "andiron", "android", "anecdote", "anemia", "anemometer", 
"anemone", "anesthesia", "aneurysm", "angel", "cake", "fish", "angelica", 
"angelus", "angina", "angiosperm", "angle", "angler", "anglicism", "anglicize", 
"anglophile", "angora", "angostura", "angst", "angstrom", "anguish", "angularity", 
"aniline", "animadvert", "animalism", "animality", "animalize", "animation", "animism", 
"animosity", "animus", "anion", "anise", "aniseed", "ankle", "anklet", 
"ankylosis", "annals", "annatto", "anneal", "annelid", "annex", "annexe", 
"annihilate", "annotate", "announce", "announcer", "annoy", "annuity", "annul", 
"eclipse", "anode", "anodize", "anoint", "anomaly", "anonymity", "anorak", 
"anorexia", "machine", "ant", "antagonism", "antagonist", "antagonize", "circle", 
"anteater", "antedate", "antelope", "antenna", "room", "anthem", "anther", 
"anthill", "anthology", "anthracite", "anthrax", "antibody", "antic", "antichrist", 
"anticipate", "anticlimax", "antidote", "antifreeze", "antigen", "hero", "antiknock", 
"antilog", "antimatter", "antimony", "antinomy", "antinovel", "antipathy", "antiphon", 
"antipodes", "antipope", "antiquary", "antiquity", "semite", "antiserum", "antithesis", 
"antitoxin", "antitrades", "antler", "antonym", "antrum", "anus", "anvil", 
"anxiety", "anybody", "aorta", "apache", "apartheid", "apartment", "apathy", 
"apeman", "aperitif", "aperture", "apex", "apex", "aphasia", "aphelion", 
"aphid", "antitrades", "antler", "antonym", "antrum", "anus", "anvil", 
"anxiety", "anybody", "aorta", "apache", "apartheid", "apartment", "apathy", 
"apeman", "aperitif", "aperture", "apex", "apex", "aphasia", "aphelion", 
"aphid", "aphis", "aphorism", "aphorism", "apiary", "apiculture", "aplomb", 
"apocalypse", "apocrypha", "apogee", "apologia", "apologist", "apologize", "apology", 
"apophthegm", "apoplexy", "apostasy", "apostate", "apostle", "apostolate", "succession", 
"apostrophe", "measure", "apothecary", "apotheosis", "appal", "apparatus", "apparel", 
"apparition", "appear", "appearance", "appease", "appellant", "append", "appendage", 
"appendix", "appertain", "appetite", "appetizer", "applaud", "applause", "apple", 
"bed", "order", "appliance", "applicant", "applicator", "apply", "apply", 
"appoint", "apportion", "apposition", "appraisal", "appraise", "appreciate", "apprehend", 
"apprise", "appro", "approval", "approve", "april", "fool", "apron", 
"apse", "apsis", "aptitude", "aqua", "fortis", "aqualung", "regia", 
"aquarelle", "aquarium", "aquarius", "aquatint", "vitae", "aqueduct", "humour", 
"aquilegia", "arabesque", "numeral", "arachnid", "araldite", "arbiter", "arbitrate", 
"arbitrator", "arbor", "arboretum", "vitae", "arbour", "arbutus", "arcade", 
"archaism", "archangel", "archbishop", "archdeacon", "numeral", "arachnid", "araldite", 
"arbiter", "arbitrate", "arbitrator", "arbor", "arboretum", "vitae", "arbour", 
"arbutus", "arcade", "archaism", "archangel", "archbishop", "archdeacon", "archduke", 
"enemy", "archeology", "archer", "archery", "archetype", "architect", "architrave", 
"archivist", "archway", "lamp", "circle", "welding", "ardor", "ardour", 
"area", "arena", "areola", "argent", "argon", "argosy", "argot", 
"argue", "argue", "argument", "argus", "bargy", "aria", "aridity", 
"aries", "arise", "aristocrat", "mean", "ark", "covenant", "armful", 
"armada", "armadillo", "armageddon", "armament", "armature", "armband", "armchair", 
"armhole", "armhole", "armistice", "day", "armlet", "armourer", "armoury", 
"armpit", "armrest", "race", "wrestling", "army", "arnica", "aroma", 
"arouse", "arpeggio", "arrack", "arraign", "arrange", "arras", "arrears", 
"arrester", "arris", "arrival", "arrive", "arriviste", "arrogance", "arrogate", 
"arrow", "arrowhead", "arrowroot", "arse", "arsehole", "arsenal", "arson", 
"art", "deco", "artefact", "artery", "well", "arthritis", "arthropod", 
"arthropod", "artichoke", "clerk", "lorry", "artifice", "artificer", "artillery", 
"artisan", "artist", "artiste", "nouveau", "artwork", "arum", "asafetida", 
"asafoetida", "asbestos", "ascend", "ascendancy", "ascension", "ascent", "ascertain", 
"asceticism", "acid", "ascribe", "asepsis", "ashcan", "ashcan", "ashkenazi", 
"ashlar", "ashram", "ashtray", "asininity", "ask", "asp", "asparagus", 
"aspect", "aspen", "asperity", "aspersion", "asphodel", "asphyxia", "asphyxiate", 
"aspic", "aspidistra", "aspiration", "aspirator", "aspire", "aspirin", "ass", 
"assail", "assassin", "assegai", "assemblage", "assemble", "assembler", "assembly", 
"line", "assenter", "assert", "assertion", "assess", "assessor", "asset", 
"stripping", "asseverate", "asshole", "assiduity", "assigner", "assignee", "assignment", 
"assimilate", "assist", "assistant", "assizes", "football", "assonance", "assort", 
"assortment", "assuage", "assume", "assumption", "assurance", "assure", "astatine", 
"aster", "asteroid", "asthma", "astonish", "astound", "astrakhan", "astrolabe", 
"astrology", "astronaut", "astronaut", "astronomy", "astuteness", "asylum", "asymmetry", 
"atavism", "ataxia", "atelier", "atheism", "athlete", "foot", "athletics", 
"home", "atlas", "atmosphere", "atoll", "atom", "atom", "bomb", 
"bomb", "energy", "mass", "unit", "number", "theory", "weight", 
"atomize", "atomizer", "atonality", "atone", "atonement", "atrium", "atrocity", 
"atropine", "attach", "case", "attachment", "attacker", "attain", "attainment", 
"attar", "attend", "attendance", "attendee", "attendee", "attention", "attenuate", 
"attest", "attic", "attitude", "attorney", "general", "attract", "attraction", 
"attrition", "attune", "aubergine", "aubrietia", "bridge", "auctioneer", "audacity", 
"audibility", "audience", "audio", "frequency", "audiotape", "audiotape", "typist", 
"auditor", "auditorium", "auger", "aught", "augment", "augury", "august", 
"auk", "syne", "aunt", "auntie", "sally", "pair", "aura", 
"aureole", "auricle", "auricula", "aurochs", "aurora", "auspice", "austerity", 
"autarchy", "autarky", "author", "authority", "authorize", "version", "authorship", 
"autism", "auto", "autobahn", "autoclave", "autocracy", "autocrat", "autocross", 
"autocue", "automat", "automate", "pilot", "automation", "automatism", "automaton", 
"automobile", "autonomy", "autopilot", "autopsy", "autoroute", "autostrada", "suggestion", 
"autumn", "equinox", "auxin", "avalanche", "avarice", "avatar", "ave", 
"avenge", "avenue", "aver", "aversion", "avert", "avesta", "aviary", 
"aviation", "aviator", "avidity", "avionics", "avocado", "avocet", "avocet", 
"avoid", "avow", "await", "awaken", "awareness", "awl", "awn", 
"awning", "axil", "axiom", "axis", "axis", "axle", "axolotl", 
"ayatollah", "azalea", "azimuth", "babe", "babel", "baboon", "babyhood", 
"boom", "buggy", "carriage", "grand", "babygro", "babysit", "baccarat", 
"baccy", "bachelor", "girl", "bacillus", "backer", "backache", "bencher", 
"backbiting", "boiler", "backbone", "burner", "backchat", "backcloth", "backcomb", 
"crawl", "backdate", "door", "backdrop", "backfire", "formation", "backgammon", 
"background", "backhander", "backing", "track", "backlash", "backlist", "backlog", 
"number", "backpacker", "passage", "backrest", "room", "seat", "driver", 
"backside", "slang", "backslide", "backspace", "backspin", "backstitch", "stop", 
"backstroke", "backtrack", "backup", "backwash", "backwater", "backwoods", "backyard", 
"bacon", "bacterium", "blood", "breath", "debt", "baddy", "faith", 
"badge", "badinage", "lot", "badminton", "mouth", "news", "bafflement", 
"bagful", "bagatelle", "bagel", "baggage", "bagginess", "bagpipe", "baguette", 
"bailey", "bridge", "bailiff", "bailiwick", "marie", "bairn", "baize", 
"bake", "beans", "bakelite", "baker", "day", "dozen", "bakery", 
"tart", "powder", "soda", "baklava", "baksheesh", "balaclava", "balalaika", 
"payments", "power", "trade", "sheet", "balcony", "baldness", "balderdash", 
"baleen", "ballad", "balladry", "joint", "bearing", "ballboy", "ballcock", 
"ballerina", "ballet", "dancer", "game", "ballista", "missile", "ballistics", 
"balloonist", "box", "paper", "ballpark", "point", "ballroom", "dancing", 
"ballyhoo", "balm", "balminess", "balsa", "balsam", "baluster", "balustrade", 
"bamboo", "shoot", "bamboozle", "banality", "banana", "republic", "bandanna", 
"bandbox", "bandeau", "banderole", "bandicoot", "bandit", "bandmaster", "bandog", 
"bandolier", "saw", "bandsman", "bandstand", "bandwagon", "bandwidth", "bane", 
"banger", "bangle", "banish", "banister", "banjo", "banknote", "bankruptcy", 
"banksia", "banner", "headline", "bannock", "banns", "banquette", "banshee", 
"bantam", "bantustan", "banyan", "baobab", "bap", "baptism", "fire", 
"baptist", "baptistery", "baptize", "barathea", "barbarism", "barbarity", "wire", 
"barbel", "barbell", "barber", "barberry", "shop", "pole", "barbican", 
"barbie", "billiards", "acid", "barbour", "barcarole", "code", "bard", 
"bargeboard", "bargee", "bargepole", "baritone", "barium", "meal", "barker", 
"barley", "sugar", "water", "barm", "barmaid", "barman", "mitzvah", 
"barn", "barnacle", "goose", "dance", "barney", "owl", "barnstorm", 
"barnyard", "barograph", "barometer", "baron", "baroness", "baronet", "beef", 
"barony", "person", "barque", "barracouta", "barracuda", "barrage", "balloon", 
"barratry", "barre", "organ", "barrenness", "barrier", "cream", "reef", 
"barrister", "sinister", "bartender", "baryon", "baryta", "barytes", "basalt", 
"baseball", "baseline", "basement", "rate", "basic", "slag", "basil", 
"basilica", "basilisk", "basin", "basis", "bask", "basket", "basketball", 
"basketry", "weave", "basketwork", "shark", "relief", "bassist", "clef", 
"basset", "guitar", "bassinet", "basso", "bassoon", "bast", "bastardy", 
"bastardize", "bastion", "bun", "chair", "cube", "bathhouse", "costume", 
"bathos", "bathrobe", "bathroom", "salts", "batik", "batiste", "batman", 
"baton", "round", "batsman", "battalion", "battenberg", "batterer", "ram", 
"battery", "battleaxe", "battlebus", "cruiser", "cry", "battledore", "battlement", 
"royal", "battleship", "bauble", "bauxite", "house", "bawl", "bayberry", 
"leaf", "rum", "window", "bazaar", "bazooka", "bdellium", "gear", 
"beverage", "bevy", "bewail", "beware", "bewilder", "bewitch", "bezel", 
"bezique", "bhang", "binding", "biathlon", "bib", "cock", "bible", 
"bashing", "bicarb", "biceps", "bicker", "bidder", "bidding", "biddy", 
"bide", "bidet", "bier", "bigamy", "apple", "theory", "brother", 
"end", "head", "bight", "money", "noise", "bigot", "stick", 
"time", "top", "wheel", "bigwig", "biker", "bikini", "bilberry", 
"bile", "bilge", "bilharzia", "bilk", "bill", "billabong", "billboard", 
"doux", "billhook", "billiards", "exchange", "fare", "lading", "billposter", 
"bimbo", "bin", "star", "system", "binder", "bindery", "bindweed", 
"bine", "end", "bingo", "liner", "binman", "binnacle", "binoculars", 
"theorem", "bint", "biogenesis", "biography", "clock", "warfare", "biology", 
"bionics", "biophysics", "biopsy", "biorhythm", "biosphere", "biotin", "biplane", 
"bird", "bath", "birdbrain", "birdcage", "birdie", "birdlime", "nesting", 
"paradise", "passage", "prey", "birdseed", "view", "birdsong", "table", 
"watcher", "biretta", "biro", "birth", "control", "birthday", "pool", 
"birthmark", "birthplace", "rate", "birthright", "birthstone", "biscuit", "bisect", 
"bishop", "bishopric", "bismuth", "bison", "bister", "bistre", "bistro", 
"bitchiness", "side", "part", "bitterness", "bittern", "bitumen", "coal", 
"biz", "blab", "art", "blackball", "beetle", "belt", "blackberry", 
"blackbird", "blackboard", "box", "blackcap", "country", "death", "economy", 
"blacken", "eye", "flag", "blackfly", "gateau", "friar", "blackguard", 
"blackhead", "hole", "ice", "blacking", "blackjack", "blacklead", "magic", 
"maria", "mark", "market", "mass", "blackout", "pepper", "power", 
"pudding", "rod", "sheep", "blackshirt", "blacksmith", "spot", "tea", 
"blackthorn", "tie", "velvet", "watch", "widow", "bladder", "blade", 
"blanch", "blancmange", "blandness", "blandish", "blankness", "cheque", "bath", 
"stitch", "verse", "blaspheme", "blasphemy", "furnace", "off", "blazer", 
"blazonment", "bleeder", "bleeper", "blench", "blender", "blenny", "bless", 
"blessing", "blighter", "blighty", "blimp", "blindness", "alley", "date", 
"buff", "spot", "blindworm", "bliss", "blitzkrieg", "blizzard", "bloat", 
"bloater", "blob", "bloc", "blockage", "tackle", "capitals", "blockhead", 
"blockhouse", "vote", "bloke", "bank", "bath", "count", "donor", 
"group", "heat", "bloodhound", "letting", "money", "orange", "poisoning", 
"pressure", "relation", "bloodshed", "sport", "bloodstain", "sugar", "test", 
"vessel", "mary", "bloomers", "blotter", "paper", "blouson", "blower", 
"blowfly", "hole", "job", "blowlamp", "out", "blowpipe", "blowtorch", 
"blub", "baby", "bluebell", "blueberry", "blood", "book", "bluebottle", 
"cheese", "boy", "funk", "bluegrass", "pencil", "peter", "blueprint", 
"rinse", "blues", "tit", "whale", "bluntness", "blurb", "blurt", 
"blusher", "bmx", "boa", "boar", "boarder", "game", "house", 
"school", "boardroom", "boater", "hook", "house", "boating", "boatman", 
"people", "boatswain", "train", "bobbin", "bobble", "bobby", "sled", 
"bobtail", "boche", "bod", "bode", "bodega", "bodice", "bodkin", 
"body", "blow", "building", "bodyguard", "language", "odour", "politic", 
"shop", "stocking", "bodysuit", "bodywork", "boffin", "bogeyman", "boggle", 
"bogie", "boiler", "room", "suit", "point", "boldness", "bole", 
"bolero", "boll", "bollard", "bollocking", "bollocks", "boloney", "bolshevism", 
"hole", "bombard", "bombardier", "bombast", "duck", "bombazine", "bomber", 
"jacket", "bombshell", "site", "bonanza", "bon", "bondage", "paper", 
"bondsman", "china", "marrow", "meal", "contention", "boneshaker", "bonfire", 
"bongo", "bonhomie", "mot", "bonnet", "bonsai", "bonus", "vivant", 
"boniness", "booby", "prize", "trap", "boodle", "boogie", "woogie", 
"bookbinder", "bookcase", "club", "end", "bookie", "booking", "hall", 
"bookkeeper", "booklet", "bookmaker", "bookmark", "plate", "bookseller", "bookshop", 
"bookstall", "token", "bookworm", "logic", "boor", "booster", "bootblack", 
"bootee", "booth", "bootlegger", "bootlicker", "boots", "bootstrap", "booty", 
"boozer", "bopper", "acid", "borage", "borax", "bordeaux", "collie", 
"borderer", "borderland", "terrier", "boredom", "acid", "boron", "borough", 
"borrow", "borstal", "bortsch", "borzoi", "bosh", "bosom", "friend", 
"nova", "bossiness", "botany", "bank", "feed", "bottleneck", "dolphin", 
"party", "drawer", "line", "botulism", "boudoir", "bough", "bouillon", 
"boulder", "boule", "boulevard", "bouncer", "boundary", "duty", "bounder", 
"bounty", "bouquet", "garni", "bourbon", "bourn", "bourse", "bout", 
"boutique", "bouzouki", "bowdlerize", "bowel", "bower", "bowerbird", "bowie", 
"bowlful", "legs", "bowline", "bowling", "alley", "green", "bowman", 
"bowsprit", "bowstring", "tie", "window", "cox", "camera", "boxer", 
"shorts", "girder", "boxing", "day", "glove", "junction", "number", 
"office", "pleat", "boxroom", "spring", "boxwood", "boyhood", "boyfriend", 
"boyo", "scout", "bra", "bit", "bracelet", "bracken", "bract", 
"brad", "bradawl", "brae", "brahma", "brahman", "braiding", "brainchild", 
"death", "drain", "brainpower", "brainstorm", "trust", "brainwash", "brainwave", 
"braise", "drum", "horsepower", "lining", "shoe", "bramble", "brambling", 
"bran", "brandish", "brandy", "butter", "snap", "tub", "brashness", 
"band", "brasserie", "brassica", "monkey", "rubbing", "tacks", "brat", 
"bravado", "braveness", "bravura", "brawn", "braze", "brazil", "promise", 
"peace", "breadboard", "breadcrumb", "breadfruit", "breadline", "sauce", "breadth", 
"breakage", "breakaway", "dancing", "breakdown", "breaker", "entering", "point", 
"out", "breakup", "breakwater", "bream", "breastbone", "feed", "stroke", 
"breastwork", "breath", "breathe", "breather", "space", "test", "breech", 
"birth", "breeches", "buoy", "breeder", "reactor", "breeding", "block", 
"bren", "brent", "breve", "breviary", "brevity", "brewer", "brewery", 
"bribery", "brac", "brickbat", "brickie", "bricklayer", "brickwork", "brickyard", 
"bride", "bridegroom", "bridesmaid", "bridgehead", "roll", "bridgework", "loan", 
"path", "brie", "briefness", "briefcase", "brigade", "brigadier", "brigand", 
"brigantine", "brightness", "brighten", "disease", "brilliance", "brimstone", "brine", 
"bring", "sale", "brink", "briquette", "briskness", "brisket", "brisling", 
"brit", "britannia", "metal", "briticism", "english", "legion", "time", 
"unit", "briton", "disease", "broadness", "bean", "broadcloth", "broaden", 
"gauge", "broadsheet", "broadside", "broadsword", "broccoli", "brochure", "anglaise", 
"broil", "broiler", "home", "broker", "brokerage", "brolly", "bromide", 
"bromine", "bronchitis", "bronchus", "bronco", "age", "medal", "brooch", 
"broom", "broomstick", "broth", "brothel", "brother", "law", "brouhaha", 
"brow", "browbeat", "bear", "coal", "brownie", "point", "browning", 
"owl", "rice", "sugar", "bruiser", "bruit", "brunch", "brunette", 
"brunt", "off", "brushwood", "brushwork", "sprout", "brutality", "brutalize", 
"bryony", "squeak", "bath", "car", "gum", "bubo", "plague", 
"buccaneer", "seat", "shop", "buckler", "buckram", "fizz", "buckshot", 
"buckskin", "buckthorn", "tooth", "buckwheat", "buddha", "buddhism", "buddleia", 
"budge", "budgerigar", "budgie", "buffalo", "state", "car", "buffoon", 
"bugbear", "buggery", "buggy", "bugler", "bugloss", "builder", "building", 
"society", "bulb", "bulimia", "buying", "bulkhead", "bulkiness", "bulldog", 
"clip", "bulldoze", "bulldozer", "bullet", "bulletin", "bullfight", "bullfinch", 
"bullfrog", "headed", "bullion", "bullock", "bullring", "eye", "terrier", 
"bulrush", "bulwark", "bag", "bumble", "bee", "bumf", "bumper", 
"car", "bumpkin", "bun", "fight", "bungalow", "bungee", "jumping", 
"bunion", "bed", "bunker", "bunkum", "bunny", "burner", "buoyancy", 
"bur", "burble", "burbot", "proof", "burdock", "bureau", "bureaucrat", 
"buret", "burette", "burgeon", "burger", "burgher", "burglar", "burglary", 
"burgle", "burgundy", "burial", "burin", "burner", "glass", "burnish", 
"burnous", "out", "ochre", "offering", "bursar", "bursary", "burton", 
"bury", "busby", "baby", "bushel", "bushfire", "bushman", "telegraph", 
"business", "park", "person", "busk", "lane", "busman", "holiday", 
"shelter", "station", "stop", "bustard", "buster", "bustier", "busybody", 
"lizzie", "butane", "butchery", "butler", "bean", "cream", "buttercup", 
"butterfat", "fingers", "butterfly", "nut", "stroke", "icing", "buttermilk", 
"muslin", "buttock", "mushroom", "butty", "butyl", "buyer", "market", 
"buyout", "buzzard", "buzzer", "word", "election", "law", "byline", 
"byplay", "product", "byre", "byroad", "byroad", "byssinosis", "bystander", 
"byte", "byway", "byword", "cab", "cabal", "cabaret", "cabbage", 
"white", "cabby", "caber", "cabin", "boy", "cruiser", "cabinet", 
"maker", "car", "cablegram", "television", "cabman", "caboodle", "caboose", 
"cabriole", "cabriolet", "cacao", "cachet", "cachou", "cacophony", "cactus", 
"cad", "cadaver", "fly", "worm", "cadence", "cadenza", "cadet", 
"cadge", "cadi", "cadmium", "cadre", "caecum", "caerphilly", "caesar", 
"caesura", "cafeteria", "caffeine", "caftan", "caginess", "cagoule", "cahoots", 
"cain", "cairn", "cairngorm", "caisson", "cajole", "cakewalk", "calabash", 
"calabrese", "calamine", "calamity", "calciferol", "calcify", "calcine", "calcite", 
"calcium", "carbide", "carbonate", "hydroxide", "oxide", "calculate", "calculator", 
"calculus", "caledonia", "year", "calends", "calendula", "love", "calfskin", 
"caliber", "calibrate", "calibre", "caliph", "box", "caller", "girl", 
"calling", "calliper", "callosity", "callus", "calmness", "calomel", "gas", 
"calorie", "calibre", "caliph", "box", "caller", "girl", "calling", 
"calliper", "callosity", "callus", "calmness", "calomel", "gas", "calorie", 
"calumniate", "calumny", "calvados", "calve", "calvinism", "calx", "calypso", 
"calyx", "cam", "cambric", "camcorder", "camel", "hair", "camellia", 
"camembert", "cameo", "camera", "cameraman", "camisole", "camomile", "campaigner", 
"campanile", "campanula", "bed", "camper", "follower", "camphor", "camphorate", 
"campion", "campsite", "campus", "camshaft", "goose", "canaille", "canal", 
"canalize", "canard", "canary", "canasta", "cancan", "cancel", "cancer", 
"candela", "candidness", "candida", "candidate", "candle", "candlemas", "candlewick", 
"candor", "candour", "candyfloss", "candytuft", "sugar", "canister", "canna", 
"cannabis", "cannelloni", "cannery", "cannibal", "ball", "fodder", "cannot", 
"canniness", "canoeist", "canon", "canonist", "canonize", "law", "canoodle", 
"cantaloup", "cantata", "canteen", "canticle", "cantilever", "bridge", "canto", 
"cantonment", "cantor", "canvasser", "canyon", "capability", "capacitor", "capacity", 
"action", "gain", "goods", "capitalism", "capitalize", "levy", "sum", 
"tax", "tax", "capitation", "capitulate", "capo", "capon", "cappuccino", 
"caprice", "capricorn", "capsicum", "capsize", "capstan", "lathe", "capsule", 
"capsulize", "captaincy", "captivate", "captivity", "captor", "capuchin", "capybara", 
"car", "carafe", "caramel", "carapace", "carat", "caravanner", "caravel", 
"caraway", "seed", "carb", "carbide", "carbine", "carbolic", "soap", 
"bomb", "carbon", "copy", "dating", "dioxide", "fibre", "acid", 
"carbonize", "monoxide", "paper", "sale", "carboy", "carbuncle", "carcass", 
"carcinogen", "carcinoma", "cardamom", "cardboard", "city", "game", "cardigan", 
"number", "points", "virtues", "index", "cardiogram", "cardiology", "cardoon", 
"cardphone", "sharp", "table", "vote", "careen", "careerist", "carer", 
"caret", "caretaker", "cargo", "caribou", "caries", "carillon", "carioca", 
"carnage", "carnality", "carnet", "carnival", "carnivore", "carob", "carotene", 
"carousal", "carousel", "carper", "carper", "park", "carpel", "carpentry", 
"bag", "bagger", "carpeting", "slipper", "sweeper", "phone", "carport", 
"carpus", "carrageen", "carrel", "carriage", "clock", "carrier", "bag", 
"pigeon", "wave", "carrion", "crow", "carrot", "blanche", "cartel", 
"horse", "cartilage", "carton", "cartoon", "cartouche", "cartridge", "belt", 
"paper", "cartwheel", "wright", "carve", "carver", "carvery", "carving", 
"knife", "casanova", "cascara", "harden", "history", "casein", "law", 
"casemate", "casement", "casework", "carry", "book", "cashcard", "crop", 
"desk", "dispenser", "cashew", "flow", "cashmere", "delivery", "cashpoint", 
"register", "casing", "casino", "cask", "casket", "cassata", "cassava", 
"cassette", "cassia", "cassis", "cassock", "cassoulet", "cassowary", "castanet", 
"caste", "casteism", "castigate", "casting", "vote", "iron", "castor", 
"oil", "sugar", "castrate", "castrato", "casualness", "casualty", "department", 
"casuist", "cat", "catabolism", "cataclysm", "catacomb", "catafalque", "catalepsy", 
"catalpa", "catalyse", "catalysis", "catalyst", "converter", "catalyze", "catamaran", 
"catamite", "cataract", "catarrh", "catatonia", "burglar", "all", "can", 
"catchline", "catchment", "area", "phrase", "catchword", "catechism", "catechist", 
"catechize", "catechumen", "categorize", "category", "cater", "caterer", "catfish", 
"flap", "catgut", "catharsis", "cathedral", "wheel", "catheter", "cathode", 
"ray", "tube", "cation", "catkin", "catlick", "catmint", "catnip", 
"tails", "cradle", "eye", "eye", "paw", "catsuit", "cattery", 
"cattle", "grid", "cattiness", "catwalk", "caucus", "caul", "cauldron", 
"ear", "caulk", "causality", "causation", "bre", "causerie", "causeway", 
"causticity", "soda", "cauterize", "cavalcade", "cavalry", "caveat", "emptor", 
"caveman", "cavern", "caviar", "caviare", "cavity", "wall", "cavort", 
"cavy", "cayenne", "cayman", "video", "fire", "cecum", "cedar", 
"cede", "cedilla", "ceefax", "ceilidh", "ceiling", "celandine", "celebrant", 
"celebrate", "celebrity", "celeriac", "celerity", "celery", "celesta", "equator", 
"sphere", "celibacy", "cell", "cello", "cellophane", "cellphone", "radio", 
"cellulite", "celluloid", "cellulose", "celt", "cemetery", "cenobite", "cenotaph", 
"censer", "censorship", "census", "cent", "centaur", "centenary", "centerfold", 
"centigram", "centiliter", "centilitre", "centime", "centimeter", "centimetre", "centipede", 
"centrality", "bank", "heating", "centralism", "centralize", "system", "processor", 
"back", "centrefold", "forward", "half", "gravity", "piece", "spread", 
"force", "centrifuge", "force", "centrist", "centurion", "century", "cephalopod", 
"ceramics", "cerebellum", "palsy", "cerebrum", "ceremony", "cerise", "cerium", 
"cert", "cert", "certainty", "education", "cheque", "certify", "certitude", 
"screening", "smear", "cervix", "cesium", "cessation", "cession", "cesspit", 
"cetane", "chablis", "cha", "chaconne", "chaffinch", "dish", "gang", 
"mail", "reaction", "saw", "smoke", "store", "lift", "chairman", 
"chaise", "longue", "chalcedony", "chalet", "chalice", "chalkiness", "challenger", 
"chamber", "commerce", "pot", "chameleon", "chamois", "champagne", "champers", 
"chancel", "chancellor", "exchequer", "chancery", "chandelier", "chandler", "changeling", 
"clothes", "heart", "over", "chanter", "chantry", "chaos", "chaparral", 
"chapatti", "chapel", "chaplain", "chaplet", "chapman", "chappie", "chapter", 
"verse", "accidents", "charabanc", "character", "charade", "charcoal", "capping", 
"card", "affaires", "charger", "chariot", "charioteer", "charisma", "charity", 
"charlady", "charlatan", "charleston", "charlotte", "charmer", "house", "flight", 
"chartism", "chartreuse", "charwoman", "chaser", "chasm", "chassis", "chasteness", 
"chasten", "chastise", "chastity", "chasuble", "teau", "chatelaine", "chatline", 
"show", "chattel", "chatterbox", "chattiness", "chauvinism", "chauvinist", "cheapness", 
"cheapen", "cheapskate", "checkout", "checkpoint", "cheddar", "bone", "cheekiness", 
"leader", "cheeriness", "cheese", "cheesecake", "plant", "cheetah", "chef", 
"bun", "pensioner", "warfare", "chemise", "chemist", "chemistry", "chenille", 
"cheque", "book", "card", "card", "cherish", "cheroot", "cherub", 
"chervil", "cheshire", "chess", "chessboard", "chessman", "chest", "drawers", 
"chestiness", "glass", "chevalier", "chevron", "gum", "chewiness", "chi", 
"chianti", "chicanery", "chick", "feed", "chickenpox", "wire", "pea", 
"chickweed", "chicle", "chicory", "chide", "constable", "staff", "chieftain", 
"chiffchaff", "chiffon", "chignon", "chihuahua", "chilblain", "child", "abuse", 
"benefit", "childbirth", "care", "childhood", "minder", "play", "chilli", 
"carne", "hundreds", "chimera", "chimney", "breast", "pot", "stack", 
"sweep", "chimp", "chimpanzee", "chin", "clay", "chinaman", "chinchilla", 
"lantern", "leaf", "chink", "wonder", "chintz", "chipboard", "chipmunk", 
"chipolata", "chiromancy", "chiropody", "chirpiness", "chat", "chivalry", "chive", 
"chivvy", "chloral", "chloride", "chlorinate", "chlorine", "choc", "ice", 
"choir", "choirboy", "choker", "choler", "cholera", "chomp", "choose", 
"choosiness", "chopper", "choppiness", "chopstick", "chopsuey", "chorale", "chore", 
"chorister", "chough", "pastry", "chow", "mein", "christen", "era", 
"name", "science", "christmas", "box", "eve", "pudding", "rose", 
"tree", "chromatin", "chrome", "chromite", "chromium", "plate", "chromosome", 
"chronology", "chrysalis", "chrysolite", "chub", "chubb", "chuff", "boot", 
"chukker", "chum", "chump", "chunk", "chunkiness", "chunter", "church", 
"churchgoer", "churchman", "england", "churchyard", "churl", "chutney", "chutzpah", 
"chyle", "chyme", "cicada", "cicatrice", "cicely", "cicerone", "cider", 
"cigar", "cigarette", "cilium", "cinch", "cinchona", "cincture", "cinder", 
"cinderella", "cinema", "cineraria", "cinnabar", "cinnamon", "cinque", "cinquefoil", 
"ports", "circlet", "circuit", "breaker", "circuitry", "saw", "circulate", 
"circumcise", "circumflex", "circumvent", "circus", "cirrhosis", "cirrus", "cistern", 
"cistus", "citadel", "citation", "cite", "citizen", "band", "citrate", 
"acid", "citron", "citronella", "citrus", "city", "state", "civet", 
"centre", "civics", "defence", "engineer", "civility", "civilize", "liberty", 
"list", "marriage", "rights", "servant", "service", "war", "civvies", 
"street", "cladding", "cladistics", "claimant", "clamminess", "down", "clan", 
"clanger", "clangor", "clangour", "clansman", "clapper", "claptrap", "claque", 
"claret", "clarify", "clarinet", "clarion", "clarity", "knife", "classicism", 
"classify", "classmate", "classroom", "classiness", "clause", "clavichord", "clavicle", 
"back", "hammer", "hammer", "clay", "claymore", "pigeon", "health", 
"cleaner", "cleanse", "sheet", "clearness", "clearance", "clearing", "bank", 
"house", "out", "clearway", "cleat", "cleavage", "cleaver", "clef", 
"palate", "clematis", "clemency", "clementine", "clerestory", "clergy", "clergyman", 
"cleric", "collar", "clerihew", "cleverness", "client", "clientele", "cliff", 
"hanger", "climate", "climber", "down", "frame", "clime", "clincher", 
"cling", "film", "clinic", "death", "clinker", "clipboard", "joint", 
"clipper", "clipping", "clique", "clitoris", "cloakroom", "cloche", "clockwork", 
"clod", "clodhopper", "clump", "closeness", "book", "shop", "harmony", 
"season", "shave", "closure", "cloth", "clothe", "clothes", "horse", 
"line", "peg", "clothier", "clothing", "cream", "cloudburst", "chamber", 
"land", "cloudiness", "hitch", "hoof", "clover", "cloy", "class", 
"foot", "foot", "clubhouse", "clubland", "root", "sandwich", "clumsiness", 
"bag", "coachload", "coachman", "coachwork", "coagulate", "coal", "coalesce", 
"coalface", "coalfield", "gas", "coalition", "coalman", "coalman", "coalmine", 
"scuttle", "tar", "tit", "coaming", "coarseness", "fish", "coarsen", 
"coaster", "coastguard", "coastline", "coating", "arms", "mail", "tail", 
"coax", "cob", "cobalt", "cobber", "cobbler", "cobol", "cobra", 
"cobweb", "coca", "cocaine", "coccyx", "cochineal", "cockade", "doo", 
"leekie", "story", "cockatoo", "cockchafer", "crow", "cocker", "cockerel", 
"fight", "cockle", "cockpit", "cockroach", "cockscomb", "cocktail", "dress", 
"stick", "cockiness", "coco", "cocoa", "bean", "butter", "coconut", 
"matting", "shy", "cocotte", "coda", "coddle", "codeine", "codex", 
"codfish", "codger", "codicil", "codify", "oil", "codpiece", "codswallop", 
"coelacanth", "disease", "coenobite", "coerce", "coexist", "coffee", "bar", 
"mill", "morning", "shop", "table", "book", "coffer", "dam", 
"coffin", "cog", "cogency", "cogitate", "cognac", "object", "cognition", 
"cognizance", "cognomen", "wheel", "cohabit", "cohere", "coherence", "cohesion", 
"cohort", "coif", "coiff", "coiffeur", "coiffure", "coinage", "box", 
"coincide", "coir", "coition", "coitus", "col", "cola", "colander", 
"coldness", "chisel", "comfort", "cream", "feet", "frame", "fusion", 
"sore", "storage", "sweat", "table", "turkey", "war", "cole", 
"coleslaw", "coleus", "coley", "colic", "colitis", "collage", "collagen", 
"bone", "collate", "collation", "colleague", "collection", "bargaining", "farm", 
"noun", "ownership", "collector", "item", "colleen", "college", "church", 
"collide", "collie", "collier", "colliery", "collision", "collocate", "colloid", 
"colloquium", "colloquy", "collude", "cologne", "colonel", "colonist", "colonize", 
"colonnade", "colony", "colophon", "beetle", "coloration", "coloratura", "coloring", 
"colossus", "colostomy", "bar", "blindness", "colouring", "scheme", "sergeant", 
"supplement", "colposcopy", "colt", "colter", "coltsfoot", "columbine", "column", 
"columnist", "coma", "lock", "combings", "form", "combo", "combustion", 
"comeback", "comecon", "comedian", "comedienne", "comedown", "comedy", "manners", 
"comeliness", "comer", "comet", "comfit", "comforter", "station", "comfrey", 
"strip", "comity", "comma", "commandant", "commandeer", "commander", "chief", 
"module", "commando", "paper", "commence", "commend", "commentary", "commentate", 
"commerce", "traveller", "commie", "commingle", "comminute", "fracture", "commissar", 
"commissary", "agent", "oaths", "commit", "commitment", "committal", "committee", 
"stage", "commode", "commodity", "commodore", "commonalty", "commoner", "ground", 
"law", "husband", "market", "noun", "noun", "room", "commons", 
"sense", "time", "commotion", "cord", "satellite", "communion", "communism", 
"party", "community", "centre", "charge", "charge", "home", "service", 
"singing", "spirit", "commute", "commuter", "disc", "companion", "way", 
"company", "comparison", "compass", "compassion", "leave", "compatriot", "compel", 
"compendium", "compensate", "compete", "competence", "competitor", "compile", "compiler", 
"complain", "complaint", "medicine", "complexity", "complexion", "compliance", "complicate", 
"complicity", "compline", "comply", "comport", "compose", "composer", "compositor", 
"composure", "compote", "fracture", "interest", "comprehend", "compressor", "comprise", 
"compulsion", "purchase", "compute", "computer", "science", "virus", "comrade", 
"concavity", "conceal", "concede", "conceit", "conceive", "camp", "concept", 
"conception", "concert", "concerto", "pitch", "concession", "conch", "conchology", 
"concierge", "conciliate", "conclave", "conclude", "conclusion", "concoct", "concord", 
"concordat", "concourse", "concretion", "concubine", "concur", "concuss", "concussion", 
"condemn", "condense", "milk", "condenser", "condescend", "condiment", "reflex", 
"condole", "condolence", "condom", "condone", "condor", "conduce", "conduction", 
"conductor", "conduit", "cone", "confection", "states", "confer", "conference", 
"conferment", "confess", "confession", "confessor", "confetti", "confidant", "confide", 
"confidence", "trick", "confirm", "confiscate", "conflate", "confluence", "conform", 
"conformism", "conformity", "confront", "confuse", "confusion", "confute", "congeal", 
"conger", "congeries", "congest", "congestion", "congregate", "congress", "congruence", 
"congruity", "conifer", "conjoin", "conjure", "conjuror", "conker", "man", 
"conn", "connect", "rod", "connection", "connector", "tower", "connive", 
"connote", "conquer", "conquest", "conscience", "money", "objector", "consecrate", 
"consensus", "energy", "party", "consider", "consign", "consist", "consistory", 
"prize", "consonance", "consortium", "conspiracy", "silence", "conspire", "constable", 
"constancy", "constipate", "constitute", "constrain", "constraint", "constrict", "construe", 
"consul", "consulate", "consult", "consultant", "consume", "consumer", "durable", 
"goods", "lens", "contagion", "contain", "container", "contempt", "contend", 
"contention", "contestant", "context", "contiguity", "continence", "breakfast", "quilt", 
"shelf", "continue", "continuity", "continuo", "assessment", "continuum", "contort", 
"contra", "bridge", "contractor", "contradict", "contraflow", "contralto", "contravene", 
"contribute", "contrition", "contrive", "controller", "tower", "controvert", "contumacy", 
"contumely", "contuse", "conundrum", "convalesce", "convection", "convector", "convene", 
"convener", "food", "convent", "convention", "converge", "conversion", "convexity", 
"convey", "conveyance", "conveyor", "belt", "conviction", "convince", "convoke", 
"convulse", "convulsion", "cony", "cooee", "cookbook", "cooker", "cookery", 
"book", "cookie", "coolness", "coolant", "bag", "cooler", "coolie", 
"period", "tower", "coomb", "coon", "cooper", "cooperate", "opt", 
"coot", "copal", "copartner", "copeck", "system", "copier", "copilot", 
"coping", "saw", "stone", "out", "beech", "copperhead", "coppice", 
"copra", "copse", "copt", "copula", "copulate", "copybook", "copycat", 
"copyist", "typist", "copywriter", "vin", "coquette", "coracle", "island", 
"anglais", "corbel", "cordiality", "cordite", "sanitaire", "corduroy", "corer", 
"respondent", "corgi", "coriander", "corkage", "corker", "corm", "cormorant", 
"cob", "corncrake", "dolly", "cornea", "cornelian", "cornet", "cornflake", 
"cornflour", "cornflower", "cornice", "pasty", "cob", "cornucopia", "corniness", 
"corolla", "corollary", "corona", "artery", "thrombosis", "coronation", "coroner", 
"coronet", "punishment", "corps", "ballet", "corpse", "corpulence", "corpus", 
"corpuscle", "correction", "correspond", "course", "corridor", "power", "corrode", 
"corrosion", "corrugate", "corsage", "corsair", "corselette", "corset", "cortex", 
"cortisone", "corundum", "coruscate", "corvette", "corymb", "cosecant", "signatory", 
"cosine", "rays", "cosmogony", "cosmology", "cosmonaut", "cosmos", "cossack", 
"cosset", "costing", "costliness", "living", "price", "jewellery", "costumier", 
"cosiness", "cotangent", "death", "cote", "coterie", "cottage", "cheese", 
"industry", "pie", "cottager", "cotter", "cotton", "wool", "cotyledon", 
"couchette", "potato", "cougar", "mixture", "coulomb", "coulter", "council", 
"councillor", "tax", "counsellor", "perfection", "counselor", "countdown", "counteract", 
"espionage", "revolution", "tenor", "countess", "country", "western", "club", 
"dance", "countryman", "music", "council", "court", "town", "coup", 
"tat", "coupe", "couplet", "coupling", "coupon", "courage", "courgette", 
"courier", "courser", "card", "courtesan", "courtesy", "light", "house", 
"courtier", "order", "courtroom", "courtship", "shoe", "courtyard", "couscous", 
"cousin", "remove", "couture", "couturier", "coven", "coventry", "coverage", 
"coverall", "charge", "girl", "letter", "coverlet", "note", "point", 
"story", "covet", "covey", "coward", "cowardice", "cowbell", "cowboy", 
"cower", "cowherd", "cowhide", "cowl", "lick", "cowling", "worker", 
"parsley", "pat", "cowpox", "cowrie", "write", "cowslip", "coxcomb", 
"coyness", "coyote", "coypu", "cozen", "cosiness", "crabbiness", "down", 
"cracker", "crackling", "cracknel", "snatcher", "song", "craftsman", "craftiness", 
"crag", "cragginess", "crake", "cram", "crammer", "crampon", "crampoon", 
"cranberry", "fly", "cranesbill", "cranium", "crankcase", "crankpin", "crankshaft", 
"crankiness", "cranny", "crape", "craps", "crapulence", "barrier", "helmet", 
"land", "crassness", "cravat", "crave", "craving", "craw", "crawfish", 
"crayfish", "craziness", "creakiness", "cheese", "creamer", "creamery", "tartar", 
"soda", "tea", "creaminess", "create", "creation", "creator", "creature", 
"comforts", "che", "credence", "credential", "gap", "card", "note", 
"creditor", "rating", "credo", "credulity", "creed", "creek", "creel", 
"creeper", "creepiness", "crawly", "cremate", "caramel", "cassis", "menthe", 
"crenelate", "crenellate", "chine", "paper", "suzette", "cress", "cretin", 
"cretonne", "crevasse", "crevice", "cut", "crewel", "work", "neck", 
"cribbage", "cricketer", "crier", "crime", "crimplene", "cringe", "crinoline", 
"crisis", "crispness", "crispbread", "crispiness", "criterion", "critic", "path", 
"criticism", "criticize", "critique", "croakiness", "crockery", "crocodile", "tears", 
"crocus", "croesus", "crofter", "disease", "croissant", "cromlech", "crone", 
"crony", "crooner", "circle", "cropper", "croquette", "crosier", "crossness", 
"crossbar", "bench", "crossbill", "crossbow", "saw", "dressing", "crosse", 
"examine", "fertilize", "crossfire", "grain", "hatch", "crossing", "crosspatch", 
"crosspiece", "question", "refer", "crossroad", "section", "stitch", "crosstalk", 
"crosswind", "crossword", "crotch", "crotchet", "croupier", "ton", "crowbar", 
"colony", "court", "derby", "glass", "jewels", "prince", "princess", 
"wheel", "foot", "nest", "cru", "crucible", "crucifix", "crucify", 
"crud", "crudeness", "cruelness", "cruet", "missile", "cruiser", "crumminess", 
"crumpet", "crupper", "crusader", "cruse", "crustiness", "crutch", "crux", 
"cruzado", "cruzeiro", "baby", "cryogenics", "crypt", "cryptogam", "cryptogram", 
"ball", "gazing", "gas", "hole", "root", "cubicle", "cubism", 
"cubit", "cuckoldry", "clock", "pint", "spit", "cucumber", "cud", 
"ball", "link", "cuirass", "cuisine", "sac", "culminate", "culottes", 
"culprit", "cult", "cultivar", "cultivate", "cultivator", "pearl", "shock", 
"vulture", "culvert", "cumin", "cummerbund", "cumulus", "cunt", "cupboard", 
"love", "final", "cupful", "cupid", "cupidity", "bow", "cupola", 
"cuppa", "nickel", "tie", "cur", "curability", "curacy", "curare", 
"curate", "egg", "curator", "curd", "cheese", "curdle", "all", 
"curettage", "curfew", "curia", "curie", "curio", "curiosity", "curium", 
"curler", "curlew", "curlicue", "curling", "curliness", "kale", "curmudgeon", 
"currant", "currency", "account", "curriculum", "vitae", "comb", "powder", 
"cursor", "curtness", "curtail", "call", "raiser", "curtilage", "curvature", 
"curviness", "cusp", "cussedness", "custard", "custodian", "custody", "custom", 
"customer", "house", "customize", "thrust", "back", "cuteness", "glass", 
"cuticle", "cutis", "cutlass", "cutler", "cutlery", "cutlet", "off", 
"out", "cutter", "cut", "cuttlefish", "cutwater", "cwm", "acid", 
"cyanide", "cyanogen", "cyanosis", "cyberpunk", "cycad", "cyclamate", "cyclamen", 
"track", "cyclist", "cyclist", "cyclone", "cyclotron", "cygnet", "cylinder", 
"cymbal", "cyme", "cynic", "cynosure", "cypress", "cyst", "fibrosis", 
"cystitis", "cytology", "cytoplasm", "dabble", "dabchick", "hand", "dace", 
"dacha", "dachshund", "dactyl", "dad", "dada", "daddy", "legs", 
"dado", "daff", "daffodil", "dagger", "dago", "dahlia", "bread", 
"daintiness", "daiquiri", "dairy", "dairying", "dairymaid", "dairyman", "dais", 
"daisy", "wheel", "lama", "dale", "dally", "dalmatian", "rose", 
"dame", "school", "dampness", "course", "dampen", "damper", "squib", 
"damsel", "damselfly", "damson", "dan", "dancer", "dancehall", "dandelion", 
"dander", "dandify", "dandle", "dandruff", "brush", "dane", "list", 
"money", "dangle", "blue", "pastry", "dankness", "daphne", "grey", 
"joan", "club", "dariole", "darkness", "darken", "glasses", "horse", 
"darkroom", "darky", "darnel", "darner", "darning", "dartboard", "darwinism", 
"damn", "dashboard", "data", "bank", "database", "capture", "processing", 
"line", "daughter", "law", "daunt", "dauphin", "davenport", "davit", 
"davy", "jones", "daw", "dawdle", "chorus", "day", "bed", 
"boy", "daybreak", "care", "centre", "dreamer", "daylight", "robbery", 
"saving", "nursery", "off", "reckoning", "release", "return", "room", 
"school", "daytime", "trip", "day", "deacon", "deactivate", "beat", 
"duck", "deaden", "end", "heat", "language", "letter", "deadline", 
"loss", "nightshade", "handle", "march", "reckoning", "set", "shot", 
"weight", "wood", "alphabet", "deafen", "mute", "dealer", "dealings", 
"deanery", "dearie", "dearth", "death", "deathbed", "deathblow", "duty", 
"mask", "penalty", "rate", "rattle", "row", "squad", "trap", 
"warrant", "watch", "wish", "deb", "debacle", "cle", "debag", 
"debar", "debark", "debase", "debauchee", "debauchery", "debenture", "debilitate", 
"debility", "debouch", "debrief", "debris", "debt", "honour", "debtor", 
"debug", "debunk", "debut", "but", "debutante", "butante", "decade", 
"decadence", "decagon", "decahedron", "decaliter", "decalitre", "decalogue", "decameter", 
"decametre", "decamp", "decant", "decanter", "decapitate", "decapod", "decathlon", 
"deceit", "deceive", "decelerate", "december", "decency", "deception", "decibel", 
"decide", "decider", "decigram", "deciliter", "decilitre", "fraction", "decimalize", 
"point", "decimate", "decimeter", "decimetre", "decipher", "decision", "chair", 
"hand", "declaim", "declare", "declassify", "declension", "years", "declivity", 
"declutch", "decoction", "decode", "colletage", "decompose", "decompress", "chamber", 
"sickness", "cor", "decorate", "style", "decoration", "decorator", "decorum", 
"absolute", "nisi", "decretal", "decry", "dedicate", "dedication", "deduce", 
"deduct", "deduction", "dee", "deed", "box", "covenant", "poll", 
"deem", "deemster", "breathing", "deepen", "fry", "deer", "deerskin", 
"escalate", "deface", "defalcate", "defame", "defaulter", "defeatism", "defecate", 
"defection", "defence", "mechanism", "defend", "defendant", "defense", "deferment", 
"deference", "payment", "defiance", "deficiency", "disease", "deficit", "defilement", 
"define", "definition", "deflate", "deflation", "deflect", "deflower", "defoliate", 
"deforest", "deform", "deformity", "defraud", "defray", "defrock", "defrost", 
"deftness", "defuse", "defy", "degeneracy", "degrade", "degree", "dehisce", 
"dehumanize", "dehydrate", "ice", "deify", "deign", "deism", "deity", 
"deject", "dekko", "delegation", "delete", "delft", "deli", "delicacy", 
"delimit", "delineate", "deliquesce", "delirium", "tremens", "deliver", "delivery", 
"dell", "delouse", "delphinium", "delta", "wing", "delude", "delusion", 
"delve", "demagog", "demagogue", "feeding", "demean", "demeanor", "demeanour", 
"dementia", "praecox", "demerara", "demerger", "demerit", "demesne", "demigod", 
"demijohn", "monde", "demist", "demo", "demobilize", "democracy", "democrat", 
"party", "demodulate", "demography", "demolish", "demon", "demonetize", "demonism", 
"demonology", "demoralize", "demote", "demotivate", "demureness", "demurrer", "demystify", 
"den", "denarius", "denature", "dendrology", "dene", "dengue", "denial", 
"denier", "denigrate", "denim", "denizen", "denominate", "denote", "denouement", 
"denounce", "denseness", "density", "floss", "surgeon", "dentifrice", "dentin", 
"dentine", "dentist", "dentition", "denture", "denude", "deny", "deodar", 
"deodorant", "deodorize", "depart", "department", "store", "departure", "depend", 
"dependant", "dependence", "dependency", "depict", "depilate", "deplete", "deplore", 
"deploy", "depopulate", "deport", "deportee", "deportment", "depose", "account", 
"depositary", "deposition", "depositor", "depository", "depot", "deprave", "depravity", 
"deprecate", "depreciate", "depress", "area", "depression", "deprive", "depth", 
"charge", "deputation", "depute", "deputize", "deputy", "derail", "derange", 
"derby", "deregulate", "derestrict", "deride", "derivation", "derive", "dermatitis", 
"dermis", "derogate", "derrick", "derris", "derv", "dervish", "desalinate", 
"descale", "descend", "descendant", "descent", "describe", "descry", "desecrate", 
"deselect", "deserter", "boot", "island", "deserve", "desiccate", "designer", 
"drug", "desist", "desk", "desktop", "publishing", "desolation", "desperado", 
"despise", "despoil", "despot", "despotism", "res", "dessert", "destine", 
"destiny", "destroy", "destroyer", "desuetude", "detach", "detachment", "detain", 
"detainee", "detect", "detection", "detective", "tente", "detention", "centre", 
"deter", "determine", "deterrence", "detest", "dethrone", "detonate", "detonator", 
"detour", "detoxify", "detract", "detractor", "detriment", "detritus", "machina", 
"deuterium", "devalue", "devastate", "develop", "country", "area", "deviance", 
"deviate", "device", "devilment", "devilry", "advocate", "horseback", "devise", 
"devolution", "devolve", "devote", "devotee", "devotion", "devour", "devoutness", 
"dew", "dewberry", "claw", "dewdrop", "system", "dewlap", "point", 
"dexterity", "dextrin", "dextrose", "dhal", "dharma", "dhoti", "diabetes", 
"diabolism", "diaconate", "diacritic", "diadem", "diaeresis", "diagnose", "diagnosis", 
"diagram", "dialect", "dialectic", "dialectics", "tone", "dialog", "dialogue", 
"dialysis", "diameter", "diamond", "wedding", "dianthus", "diapason", "diaper", 
"diaphragm", "diarist", "diarrhea", "diarrhoea", "diary", "diaspora", "diastase", 
"diatom", "diatribe", "diazepam", "dichotomy", "dickens", "dickhead", "bird", 
"bow", "dictaphone", "dictation", "dictator", "diction", "dictionary", "dictum", 
"diddle", "didgeridoo", "casting", "hard", "dieresis", "diesel", "oil", 
"sinker", "stamping", "dieter", "dietetics", "dietitian", "differ", "difference", 
"calculus", "gear", "difficulty", "diffidence", "diffract", "diffusion", "digestion", 
"digger", "digit", "tape", "digitalis", "digitize", "dignify", "dignitary", 
"dignity", "digraph", "digress", "dig", "diktat", "dilatation", "dilate", 
"dildo", "dilemma", "dilettante", "diligence", "dill", "dally", "dilution", 
"dimness", "dime", "diminish", "diminution", "dimmer", "wit", "din", 
"dinar", "dine", "diner", "dinette", "dingbat", "dong", "dinghy", 
"dingle", "dingo", "dinginess", "car", "room", "dinner", "dance", 
"jacket", "lady", "service", "dinosaur", "diocese", "diode", "diopter", 
"dioptre", "diorama", "dioxide", "diphtheria", "diphthong", "diplodocus", "diploma", 
"diplomacy", "diplomat", "bag", "immunity", "service", "dipole", "dipper", 
"dipso", "dipsomania", "dipstick", "switch", "diptych", "directness", "current", 
"debit", "school", "direction", "object", "director", "general", "directory", 
"enquiries", "directress", "speech", "tax", "dirge", "dirham", "dirk", 
"dirndl", "dirt", "dirtiness", "look", "man", "weekend", "word", 
"work", "disability", "disable", "disabuse", "disagree", "disallow", "disappear", 
"disappoint", "disapprove", "disarm", "disarrange", "disaster", "disavow", "disband", 
"disbar", "disbelieve", "disburse", "disc", "discard", "brake", "discern", 
"disciple", "jockey", "disclaim", "disclaimer", "disclose", "discolor", "discolour", 
"discomfit", "discompose", "music", "disconcert", "disconnect", "discord", "que", 
"discourage", "discover", "discovery", "discretion", "discus", "discuss", "disease", 
"disembark", "disembowel", "disenchant", "disfigure", "disgorge", "disharmony", "dishcloth", 
"dishearten", "dishonesty", "dishwasher", "disincline", "disinfect", "disinherit", "disinter", 
"disinvest", "disjoint", "drive", "diskette", "dislocate", "dislodge", "disloyalty", 
"dismantle", "dismember", "dismiss", "dismount", "disobey", "disoblige", "disorder", 
"disorient", "disown", "disparage", "disparity", "box", "rider", "dispel", 
"dispensary", "dispense", "dispenser", "disperse", "dispersion", "dispirit", "displace", 
"person", "displease", "disport", "income", "disposal", "dispose", "dispossess", 
"disproof", "disprove", "disputant", "disqualify", "disrepair", "disrepute", "disrespect", 
"disrobe", "disrupt", "dissatisfy", "dissect", "dissemble", "dissension", "dissenter", 
"disservice", "dissidence", "dissipate", "dissociate", "dissolve", "dissonance", "dissuade", 
"distaff", "side", "distaste", "distend", "distich", "distil", "distill", 
"distiller", "distillery", "distort", "distract", "distrain", "distraint", "area", 
"distribute", "district", "attorney", "nurse", "disturb", "disunion", "disunite", 
"disyllable", "ditherer", "dithyramb", "ditto", "marks", "ditty", "diva", 
"divan", "bomb", "diver", "diverge", "diversify", "diversion", "diversity", 
"divert", "divest", "dividend", "divider", "divination", "diviner", "bell", 
"board", "suit", "rod", "divinity", "division", "sign", "divisor", 
"divorcee", "divot", "divulge", "diwali", "dixie", "dixie", "dixieland", 
"dizziness", "djellaba", "layer", "notice", "doe", "doer", "doff", 
"dogcart", "collar", "days", "doge", "end", "dogfight", "dogfish", 
"doggedness", "doggerel", "bag", "paddle", "doghouse", "manger", "dogma", 
"dogmatism", "dogmatize", "gooder", "rose", "dogsbody", "breakfast", "life", 
"star", "tooth", "dogtrot", "dogwatch", "dogwood", "doh", "doily", 
"over", "dolby", "doldrums", "dollar", "dolly", "bird", "dolma", 
"sleeve", "dolmen", "dolomite", "dolor", "dolour", "dolphin", "dolt", 
"dom", "domain", "science", "dominance", "dominate", "domineer", "dominion", 
"domino", "effect", "donate", "donation", "kebab", "donjon", "juan", 
"donkey", "jacket", "years", "work", "donna", "donor", "card", 
"donut", "doomsday", "door", "doorbell", "keeper", "doorknob", "doorman", 
"doormat", "doorpost", "doorstop", "doorway", "dopiness", "nger", "effect", 
"dorado", "dormancy", "dormer", "dormitory", "dormobile", "dormouse", "dory", 
"dosage", "dosh", "doss", "dosser", "house", "dossier", "dotage", 
"dotard", "dote", "line", "dotterel", "dottle", "dottiness", "act", 
"agent", "bass", "bluff", "book", "check", "chin", "cream", 
"crosser", "decker", "dutch", "eagle", "entendre", "entry", "feature", 
"figures", "glazing", "helix", "negative", "park", "pneumonia", "standard", 
"doublet", "take", "talk", "think", "time", "doubloon", "dough", 
"doughnut", "douse", "dove", "dovecote", "dowager", "dowdiness", "dowelling", 
"dower", "house", "index", "out", "downer", "downfall", "downgrade", 
"downland", "payment", "downpipe", "downpour", "syndrome", "downturn", "dowry", 
"dowser", "rod", "doxology", "doyen", "dozen", "drabness", "drachm", 
"drachma", "draftsman", "draggle", "net", "dragon", "dragonfly", "queen", 
"drainage", "board", "drainpipe", "drake", "dralon", "dram", "drama", 
"dramatics", "personae", "dramatist", "dramatize", "draper", "drapery", "draught", 
"beer", "horse", "drawback", "drawbridge", "drawer", "drawing", "board", 
"pin", "room", "drawstring", "dray", "dreadlocks", "dreamer", "dreamboat", 
"dreamland", "dreaminess", "dreariness", "dregs", "dressage", "circle", "coat", 
"dressing", "down", "gown", "room", "table", "dressmaker", "rehearsal", 
"shield", "shirt", "dressiness", "drey", "driblet", "drabs", "drifter", 
"net", "driftwood", "drinker", "driver", "dripping", "driver", "driveway", 
"licence", "test", "wheel", "drollery", "dromedary", "drool", "droplet", 
"curtain", "kick", "out", "dropper", "droppings", "scone", "shot", 
"dropsy", "drosophila", "dross", "drought", "drover", "drown", "drowse", 
"drowsiness", "drub", "drudgery", "drugget", "druggist", "drugstore", "druid", 
"drumbeat", "brake", "drumhead", "kit", "machine", "major", "majorette", 
"drummer", "drumstick", "drunkard", "drupe", "dryness", "dryad", "battery", 
"clean", "dock", "ice", "land", "measure", "rot", "run", 
"duality", "control", "dubbin", "dubiety", "ducat", "duchess", "potatoes", 
"duchy", "duckbill", "duckboard", "duckling", "drakes", "duckweed", "ducky", 
"ductility", "gland", "dude", "dudgeon", "duellist", "duenna", "duet", 
"duffer", "duffle", "bag", "coat", "dugong", "dugout", "duke", 
"dulcimer", "dullness", "dullard", "bell", "dumbfound", "dumbo", "show", 
"waiter", "dumdum", "run", "dumpling", "dumps", "truck", "dumpiness", 
"dunce", "cap", "dunderhead", "dune", "dungaree", "beetle", "dungeon", 
"dunghill", "dunk", "dunlin", "dunnock", "duo", "duodenum", "duologue", 
"time", "duplicator", "duplicity", "durability", "mater", "duration", "duress", 
"durex", "dusk", "duskiness", "dustbin", "bowl", "dustcart", "cover", 
"duster", "jacket", "dustman", "dustpan", "sheet", "dustiness", "answer", 
"dutch", "auction", "barn", "cap", "courage", "disease", "dutchman", 
"oven", "treat", "uncle", "duty", "shop", "duvet", "dwell", 
"dwelling", "dwindle", "dyer", "dynamics", "dynamism", "dynamo", "dynast", 
"dynasty", "dyne", "dysentery", "dyslexia", "dyspepsia", "dysphasia", "dysprosium", 
"dystrophy", "eagerness", "beaver", "eagle", "eye", "eaglet", "earache", 
"eardrum", "earful", "earl", "marshal", "earliness", "bird", "days", 
"earn", "earnings", "earphone", "earpiece", "earplug", "earring", "earshot", 
"earthling", "mother", "earthquake", "sciences", "earthwork", "earthworm", "earthiness", 
"trumpet", "earwig", "easel", "easement", "end", "easter", "egg", 
"church", "easterner", "east", "east", "easiness", "chair", "street", 
"eater", "cologne", "eaves", "eavesdrop", "ebonite", "ebullience", "cake", 
"echelon", "echidna", "echinoderm", "chamber", "sounder", "clair", "eclampsia", 
"clat", "ecliptic", "eclogue", "ecology", "economics", "economist", "economize", 
"economy", "class", "ecosystem", "ecstasy", "ectomorph", "ectoplasm", "ecu", 
"ecumenism", "eczema", "edam", "edelweiss", "edema", "eden", "edging", 
"edginess", "edibility", "edict", "edifice", "edify", "edit", "edition", 
"editor", "educate", "education", "educe", "eel", "eeriness", "efface", 
"effeminacy", "effervesce", "effeteness", "efficacy", "efficiency", "effigy", "effloresce", 
"effluence", "effluvium", "effort", "effrontery", "effulgence", "effuse", "effusion", 
"eft", "efta", "eggcup", "flip", "egghead", "eggplant", "white", 
"eglantine", "ego", "egoism", "egotism", "trip", "egress", "egret", 
"egyptology", "eider", "eiderdown", "eightsome", "eisteddfod", "ejaculate", "eject", 
"ejector", "seat", "eke", "lan", "eland", "elapse", "elasticity", 
"band", "elastomer", "elate", "grease", "room", "elderberry", "statesman", 
"eldorado", "elecampane", "election", "elector", "electorate", "blanket", "chair", 
"eel", "eye", "fire", "guitar", "shock", "electrify", "electrode", 
"force", "electron", "mail", "tagging", "lens", "microscope", "elegance", 
"elegy", "element", "particle", "elephant", "elevate", "elevation", "elevator", 
"plus", "elevenses", "elf", "elicit", "elide", "elegance", "elegy", 
"element", "particle", "elephant", "elevate", "elevation", "elevator", "plus", 
"elevenses", "elf", "elicit", "elide", "eliminate", "elision", "lite", 
"litism", "elixir", "elk", "ell", "ellipse", "ellipsis", "ellipsoid", 
"elm", "elocution", "elongate", "elope", "eloquence", "elucidate", "elude", 
"elver", "elysium", "emaciate", "email", "emanate", "emancipate", "embalm", 
"embankment", "embark", "embarrass", "embassy", "embed", "embellish", "ember", 
"days", "embezzle", "embitter", "emblazon", "emblem", "embody", "embolden", 
"embolism", "embolus", "emboss", "embouchure", "embrasure", "embroider", "embroidery", 
"embroil", "embryo", "embryology", "emend", "isle", "emerge", "emergency", 
"emery", "board", "emigrate", "eminence", "grise", "emir", "emirate", 
"emissary", "emit", "emolument", "emote", "emotion", "empanel", "empathize", 
"empathy", "emperor", "penguin", "emphasis", "emphasize", "emphysema", "empire", 
"building", "empiricism", "employer", "employee", "employment", "office", "emporium", 
"empower", "empress", "emptiness", "emu", "emulate", "emulsify", "emulsion", 
"paint", "enable", "enact", "enactment", "enamor", "enamour", "encamp", 
"encase", "enchant", "enchanter", "encircle", "enclave", "enclose", "enclosure", 
"encode", "encomium", "encompass", "encourage", "encroach", "encrust", "encumber", 
"endanger", "species", "endear", "endearment", "ending", "endive", "endomorph", 
"endorse", "endoscope", "endow", "endowment", "mortgage", "endpaper", "product", 
"endue", "endurance", "endure", "enema", "enemy", "energize", "energy", 
"enervate", "terrible", "enfeeble", "enfold", "enforce", "engage", "engagement", 
"engender", "engine", "englishman", "engraft", "engrave", "engraving", "engross", 
"engulf", "enhance", "enigma", "enjoin", "enjoy", "enkephalin", "enkindle", 
"enlarge", "enlarger", "enlighten", "enlist", "enliven", "enmesh", "enmity", 
"ennoble", "ennui", "enormity", "enprint", "enquire", "enquiry", "enrage", 
"enrapture", "enrich", "enrol", "enroll", "ensconce", "ensemble", "enshrine", 
"enshroud", "ensign", "enslave", "ensnare", "ensue", "ensure", "entangle", 
"entente", "cordiale", "enter", "enteritis", "entry", "entryphone", "entwine", 
"number", "enumerate", "enumerator", "enunciate", "enuresis", "envelop", "envelope", 
"environs", "envisage", "envoy", "enwrap", "enzyme", "harp", "epaulet", 
"epaulette", "ephedrine", "ephemera", "epicenter", "epicentre", "epicure", "epidermis", 
"epiglottis", "epigram", "epigraph", "epilepsy", "epilogue", "epiphany", "episcopacy", 
"episcopate", "episiotomy", "episode", "epistle", "epitaph", "epithelium", "epithet", 
"epitome", "epitomize", "epoch", "eponym", "resin", "epsilon", "salts", 
"equality", "equalize", "equalizer", "equanimity", "equate", "equation", "equator", 
"equerry", "equinox", "enterprise", "entertain", "enthral", "enthrall", "enthrone", 
"enthuse", "enthusiasm", "enthusiast", "entice", "entirety", "entitle", "entity", 
"entomb", "entomology", "entourage", "acte", "entrails", "entrant", "entrap", 
"entreat", "entreaty", "entrench", "entropy", "entrust", "equip", "equipage", 
"equipment", "equipoise", "equitation", "equity", "equivocate", "era", "eradicate", 
"erase", "eraser", "erasure", "erbium", "erection", "erg", "ergonomics", 
"ergot", "erin", "ermine", "ernie", "erode", "erotica", "eroticism", 
"err", "errand", "mercy", "errantry", "erratum", "error", "eructation", 
"erudition", "erupt", "erysipelas", "escalate", "escalator", "escalope", "escapade", 
"clause", "escapee", "escapement", "velocity", "escapism", "escapology", "escarpment", 
"eschew", "escritoire", "escudo", "escutcheon", "inhabiting", "esophagus", "espadrille", 
"espalier", "esparto", "esperanto", "espionage", "esplanade", "espousal", "espouse", 
"extend", "family", "extension", "extent", "extenuate", "extinction", "extinguish", 
"extirpate", "extol", "extort", "extortion", "cover", "extraction", "extractor", 
"extradite", "unction", "extremist", "extremity", "extricate", "extrude", "exuberance", 
"exude", "exult", "eyebath", "eyebright", "eyebrow", "eyeful", "eyeglass", 
"eyehole", "eyelash", "eyelet", "eyelid", "liner", "opener", "eyepiece", 
"shade", "shadow", "eyesight", "eyesore", "strain", "tooth", "eyewash", 
"eyewitness", "eyrie", "espresso", "esprit", "espy", "esquire", "essayist", 
"essence", "oil", "establish", "church", "estate", "agent", "car", 
"duty", "ester", "estimator", "estimation", "estrange", "estrogen", "estrus", 
"estuary", "eta", "etch", "etching", "triangle", "eternity", "ring", 
"ethanal", "ethane", "ether", "ethics", "ethnology", "ethos", "ethyl", 
"ethylene", "etiolate", "etiology", "etiquette", "tude", "etymology", "eucalyptus", 
"eucharist", "eugenics", "eukaryote", "eulogize", "eulogy", "eunuch", "euphemism", 
"euphonium", "euphony", "euphoria", "eurodollar", "europium", "tube", "euthanasia", 
"evacuate", "evacuee", "evade", "evaluate", "evanesce", "evangelism", "evangelist", 
"evangelize", "evaporate", "milk", "evasion", "eve", "evenness", "chance", 
"evening", "dress", "primrose", "star", "money", "evens", "evensong", 
"event", "eventide", "eventing", "eventuate", "everyman", "one", "evict", 
"evildoer", "eye", "evince", "eviscerate", "evoke", "evolution", "evolve", 
"ewe", "ewer", "exacerbate", "exactness", "exaction", "exactitude", "science", 
"exaggerate", "exalt", "exam", "examine", "example", "exasperate", "excavate", 
"exceed", "excel", "excellence", "excellency", "exception", "excerption", "baggage", 
"rate", "exchequer", "excision", "excite", "excitement", "exclaim", "mark", 
"exclude", "excoriate", "excrement", "excreta", "excrete", "exculpate", "excursion", 
"execrate", "execute", "execution", "executor", "exegesis", "exemplar", "exemplify", 
"exemption", "exert", "exert", "exeunt", "exfoliate", "exhale", "exhaustion", 
"exhibitor", "exhibition", "exhilarate", "exhort", "exhume", "exigency", "exiguity", 
"exist", "existence", "poll", "exodus", "exonerate", "exorcize", "exordium", 
"exotica", "expand", "expanse", "expansion", "expat", "expatiate", "expect", 
"expectancy", "expedience", "expedite", "expedition", "expel", "expend", "expense", 
"account", "expertise", "expiate", "expire", "expiry", "explain", "expletive", 
"explicate", "explode", "explore", "explosion", "expo", "exponent", "expose", 
"exposition", "exposure", "expound", "expression", "expressway", "expulsion", "expunge", 
"expurgate", "serviceman", "fable", "fabric", "fabricate", "ade", "cloth", 
"flannel", "lift", "pack", "facer", "facet", "value", "facilitate", 
"facility", "facing", "facsimile", "fact", "faction", "life", "factor", 
"factorize", "factory", "farm", "factotum", "figures", "factsheet", "life", 
"faculty", "fad", "faddiness", "faeces", "faff", "end", "faggot", 
"fagot", "fah", "faience", "failure", "faintness", "fairness", "dos", 
"game", "fairground", "fairing", "isle", "play", "sex", "fairway", 
"friend", "fairy", "cake", "godmother", "fairyland", "lights", "ring", 
"story", "accompli", "faith", "fakir", "falcon", "falconry", "fallacy", 
"guy", "star", "tube", "fallout", "deer", "falseness", "alarm", 
"falsehood", "pretences", "falsetto", "falsies", "falsify", "falsity", "falter", 
"fame", "family", "allowance", "credit", "man", "name", "planning", 
"tree", "famine", "famish", "fanaticism", "belt", "fancier", "club", 
"dress", "man", "woman", "fandango", "fanfare", "fang", "jet", 
"fanlight", "mail", "fanny", "fantail", "fantasia", "fantasize", "fantasy", 
"farad", "farce", "east", "stage", "farina", "farming", "farmer", 
"hand", "farmhouse", "farmstead", "farmyard", "farrago", "farrier", "farsi", 
"farthing", "fasces", "fascia", "fascicle", "fascinate", "fascism", "fastback", 
"breeder", "fasten", "fastening", "food", "fastness", "neutron", "worker", 
"fatness", "fatalism", "fatality", "head", "fatherhood", "figure", "law", 
"fatherland", "day", "fatstock", "fatten", "acid", "fatuity", "fatwa", 
"faucet", "finder", "finding", "faultiness", "faun", "fauna", "pas", 
"favoritism", "fay", "faze", "fealty", "feat", "bed", "bed", 
"brain", "feathering", "febrifuge", "february", "feces", "fecundity", "fecundate", 
"federalism", "reserve", "federation", "fee", "feedback", "feeder", "feeler", 
"feign", "feldspar", "felicitate", "felicity", "felinity", "fall", "fellatio", 
"feller", "felloe", "fellow", "feeling", "fellowship", "traveller", "felon", 
"felony", "pen", "felucca", "femininity", "feminism", "fatale", "femur", 
"fen", "fencer", "fencing", "fend", "fender", "fennel", "fenugreek", 
"fermium", "fern", "ferocity", "wheel", "ferrule", "ferryman", "fertility", 
"fertilize", "fertilizer", "fervency", "fervor", "fervour", "fescue", "fester", 
"festival", "festivity", "feta", "fetish", "fetlock", "fettle", "fetus", 
"feudalism", "system", "feverfew", "pitch", "fez", "fiasco", "fiat", 
"fibber", "fiber", "fiberboard", "fiberglass", "fibre", "fibreboard", "fibreglass", 
"optics", "fibril", "fibrosis", "fibrositis", "fibula", "fiche", "fickleness", 
"fiction", "fiddler", "fidelity", "fief", "day", "fielder", "events", 
"fieldfare", "glasses", "marshal", "mouse", "officer", "honour", "rank", 
"fieldsman", "sports", "telegraph", "fieldwork", "fiend", "fierceness", "fieriness", 
"fiesta", "fife", "column", "fighter", "chance", "fit", "leaf", 
"figment", "figuration", "bass", "figurehead", "skating", "figurine", "filament", 
"filbert", "filch", "filigree", "filing", "cabinet", "filler", "filling", 
"station", "filly", "goer", "star", "strip", "filofax", "pastry", 
"paper", "tip", "filth", "filthiness", "lucre", "filtration", "fin", 
"finagle", "cause", "clause", "finale", "finalist", "finality", "finalize", 
"solution", "company", "year", "financier", "finch", "finder", "finding", 
"fineness", "arts", "finery", "herbes", "comb", "tune", "board", 
"bowl", "dry", "fingering", "mark", "fingernail", "plate", "stall", 
"fingertip", "finial", "finis", "school", "touch", "finn", "finnan", 
"fino", "fiord", "fipple", "flute", "fir", "cone", "alarm", 
"brimstone", "firearm", "ball", "bomb", "firebox", "firebrand", "break", 
"brick", "brigade", "fireclay", "firedamp", "firedog", "door", "drill", 
"eater", "engine", "escape", "firefly", "guard", "irons", "firelight", 
"lighter", "fireman", "fireplace", "power", "practice", "raiser", "screen", 
"ship", "fireside", "station", "storm", "trap", "watcher", "water", 
"firewood", "firework", "firing", "line", "squad", "firmness", "firmament", 
"firmware", "aid", "cover", "finger", "floor", "fruit", "lady", 
"light", "mate", "name", "night", "offender", "officer", "post", 
"firth", "year", "bowl", "cake", "fisher", "fisherman", "fishery", 
"lens", "farm", "finger", "hook", "fishing", "line", "rod", 
"kettle", "knife", "meal", "fishmonger", "fishnet", "plate", "slice", 
"fishtail", "fishwife", "fishiness", "bomb", "fist", "fisticuffs", "fistula", 
"fitness", "fitment", "fitter", "shadow", "fiver", "fives", "fivestones", 
"fixate", "fixation", "star", "fixer", "fixings", "fixity", "fixture", 
"fizziness", "flab", "flabbiness", "flaccidity", "day", "flagellate", "flagellum", 
"flageolet", "officer", "truce", "flagon", "pole", "flagrancy", "flagship", 
"flagstaff", "flagstone", "waving", "flair", "flak", "jacket", "pastry", 
"flamenco", "thrower", "flamingo", "flan", "flange", "flapdoodle", "flapjack", 
"flapper", "path", "flashback", "bulb", "cube", "flasher", "gun", 
"flashing", "pan", "lamp", "flashlight", "flashpoint", "flashiness", "flask", 
"flatness", "flatlet", "fish", "foot", "footed", "iron", "flatmate", 
"race", "rate", "spin", "flatten", "flatter", "flattery", "flatulence", 
"flatworm", "flaunt", "flautist", "flavoring", "flavouring", "month", "flax", 
"seed", "flay", "flea", "fleabag", "bite", "market", "pit", 
"flection", "fledge", "fledgling", "flee", "fleming", "flesh", "fleshpots", 
"wound", "fleshiness", "lis", "flews", "flexion", "flexitime", "knife", 
"bag", "deck", "lieutenant", "path", "recorder", "sergeant", "flimsiness", 
"flinch", "flint", "flintlock", "chart", "flop", "flippancy", "flipper", 
"side", "flirtation", "flitch", "flitter", "mouse", "dock", "kidney", 
"rib", "voter", "paper", "floe", "flog", "floodgate", "tide", 
"floorboard", "floorcloth", "flooring", "manager", "plan", "show", "floozie", 
"floppiness", "flora", "floret", "floribunda", "floridness", "florin", "florist", 
"flotation", "flotilla", "flotsam", "jetsam", "flouriness", "chart", "bed", 
"head", "people", "flowerpot", "power", "sulphur", "flu", "fluctuate", 
"flue", "fluency", "fluffiness", "flugelhorn", "ounce", "flummery", "flummox", 
"flunk", "flunkey", "fluoresce", "lamp", "fluoridate", "fluoride", "fluorinate", 
"fluorine", "fluorite", "fluorspar", "fluting", "flux", "flycatcher", "flyer", 
"fish", "half", "boat", "buttress", "doctor", "fish", "fox", 
"officer", "picket", "saucer", "squad", "start", "ointment", "flyleaf", 
"wall", "flyover", "paper", "past", "post", "flysheet", "tip", 
"trap", "flyweight", "flywheel", "number", "distance", "point", "fodder", 
"foe", "foetus", "bank", "fogginess", "foghorn", "lamp", "fogy", 
"foible", "foist", "folder", "foliage", "feed", "foliation", "folk", 
"dance", "folklore", "singer", "song", "folksiness", "tale", "folkweave", 
"follicle", "follow", "follower", "through", "folly", "foment", "fondness", 
"fondant", "fondle", "fondue", "fontanel", "fontanelle", "food", "additive", 
"chain", "foodie", "poisoning", "processor", "foodstuff", "value", "foolery", 
"foolscap", "paradise", "footage", "disease", "football", "pool", "footbrake", 
"footbridge", "footfall", "fault", "foothill", "foothold", "footing", "footle", 
"footlights", "footman", "footmark", "footnote", "footpad", "footpath", "footplate", 
"footprint", "footrest", "footsie", "footsie", "footstep", "footstool", "footway", 
"footwear", "footwork", "fop", "cap", "forbid", "degrees", "fruit", 
"labour", "landing", "march", "feed", "majeure", "forcemeat", "forceps", 
"forebear", "forebode", "foreboding", "forecaster", "forecastle", "foreclose", "forecourt", 
"forefather", "forefinger", "forefoot", "forefront", "conclusion", "foreground", "forehand", 
"forehead", "office", "foreigner", "legion", "minister", "office", "foreknow", 
"foreland", "foreleg", "forelimb", "forelock", "foreman", "foremast", "forename", 
"forenoon", "foreordain", "forepaw", "foreplay", "forerunner", "foresail", "foresee", 
"foreshadow", "foreshore", "foresight", "foreskin", "forestall", "forester", "forestry", 
"foretaste", "foretell", "forewarn", "forewoman", "foreword", "forfeiture", "forgather", 
"forger", "forgery", "forget", "not", "forgive", "forgo", "truck", 
"hope", "formalin", "formalism", "formality", "formalize", "formation", "forme", 
"formica", "acid", "formula", "formulary", "formulate", "fornicate", "forsake", 
"forswear", "forsythia", "fort", "fortify", "fortitude", "fortnight", "fortran", 
"fortress", "fortune", "teller", "winks", "forum", "fosse", "fossilize", 
"fuel", "foulness", "play", "founder", "founder", "foundation", "stone", 
"founder", "father", "foundling", "foundry", "fountain", "head", "pen", 
"hand", "word", "poster", "foursome", "estate", "drive", "foxglove", 
"foxhole", "foxhound", "hunting", "terrier", "foxiness", "foyer", "fracas", 
"fraction", "fragility", "fragrance", "frailness", "frailty", "reference", "framework", 
"franc", "francium", "franglais", "frank", "frankness", "fraternity", "fraternize", 
"fratricide", "frau", "fraud", "ulein", "freebie", "freeboard", "freebooter", 
"church", "freedman", "freedom", "fighter", "enterprise", "fall", "fight", 
"freefone", "all", "hand", "freeholder", "house", "kick", "freeloader", 
"love", "freeman", "market", "freemason", "port", "freepost", "radical", 
"freesia", "speech", "spirit", "freestyle", "trade", "vote", "freeway", 
"wheel", "wheel", "will", "world", "dry", "freezer", "point", 
"freighter", "frenchness", "bean", "bread", "canadian", "chalk", "dressing", 
"potatoes", "horn", "frenchify", "kiss", "leave", "letter", "frenchman", 
"polish", "window", "frequency", "modulation", "fresco", "freshness", "freshen", 
"fresher", "freshet", "freshman", "fretsaw", "fretwork", "slip", "friability", 
"friar", "balsam", "friary", "friction", "fridge", "freezer", "friend", 
"match", "society", "friendship", "friesian", "frieze", "frig", "frigate", 
"fright", "frighten", "frigidity", "benefit", "frippery", "frisbee", "friskiness", 
"frisson", "fritillary", "frivolity", "frock", "coat", "frogman", "frogmarch", 
"spawn", "frais", "frond", "frontage", "bench", "bencher", "frontier", 
"line", "runner", "frostbite", "frosting", "frostiness", "fructify", "fructose", 
"frugality", "cake", "cocktail", "fruiterer", "fruition", "juice", "machine", 
"sugar", "fruitiness", "frump", "frustrate", "frustum", "fryer", "pan", 
"fuchsia", "fucker", "cell", "fug", "fugue", "hrer", "fulcrum", 
"fulfil", "fulfill", "back", "board", "fuller", "house", "moon", 
"fullness", "stop", "term", "timer", "fulmar", "fulminate", "fumigate", 
"note", "particle", "raiser", "director", "parlour", "funfair", "fungicide", 
"fungus", "funniness", "bone", "run", "furbelow", "furbish", "furcation", 
"furl", "furlong", "furnace", "furnish", "furnisher", "furniture", "furor", 
"furore", "furrier", "education", "fury", "furze", "fuselage", "fusibility", 
"fusil", "fusilier", "fusillade", "fusion", "fusspot", "fussiness", "fustiness", 
"futility", "futon", "perfect", "futurism", "futurity", "futurology", "fuzz", 
"fuzziness", "gab", "gabardine", "gable", "gad", "gadabout", "gadfly", 
"gadget", "gadolinium", "gadwall", "gael", "gaffe", "gaffer", "gaggle", 
"gaiety", "gainsay", "gait", "gaiter", "gal", "gala", "galantine", 
"galaxy", "gale", "bladder", "galleon", "galleria", "gallery", "galley", 
"slave", "gallicism", "gallium", "gallivant", "gallon", "gallows", "gallstone", 
"poll", "galosh", "galumph", "galvanize", "gambit", "gambler", "gamboge", 
"gamecock", "gamekeeper", "gamelan", "gamester", "gamete", "gamin", "gamine", 
"gamma", "radiation", "gammon", "gamut", "gander", "gang", "ganger", 
"ganglion", "gangplank", "gangrene", "gangster", "gangue", "gangway", "gannet", 
"gantry", "gap", "garbage", "garble", "gardening", "centre", "city", 
"gardener", "gardenia", "party", "garfish", "gargoyle", "garibaldi", "garishness", 
"garlic", "garment", "garnet", "garret", "garrulity", "garter", "stitch", 
"gasbag", "chamber", "fire", "gasholder", "gasify", "gasket", "gaslight", 
"gasman", "mask", "gasoline", "gasometer", "ring", "flu", "juice", 
"gastritis", "enteritis", "gastronome", "gastronomy", "gastropod", "gasworks", "gateau", 
"gatehouse", "gateleg", "gatepost", "gateway", "gallantry", "gathering", "gaucheness", 
"gaucherie", "gaucho", "gaudiness", "gaul", "gauntness", "gauss", "gauze", 
"gavel", "gavotte", "gawkiness", "gawp", "gayness", "gayety", "gazebo", 
"gazelle", "gazetteer", "gazpacho", "gazump", "gazunder", "gearbox", "gearing", 
"lever", "gearwheel", "gecko", "gee", "geezer", "counter", "geisha", 
"gelatin", "geld", "gelding", "gelignite", "gemination", "gemini", "gemma", 
"gemstone", "gendarme", "gender", "gene", "genealogy", "education", "education", 
"election", "generality", "generalize", "meeting", "practice", "staff", "strike", 
"generate", "generation", "gap", "generator", "generosity", "genesis", "therapy", 
"code", "genetics", "geniality", "genie", "genitalia", "genius", "genocide", 
"genome", "genre", "gent", "gentian", "gentility", "gentleness", "gentlefolk", 
"gentleman", "agreement", "gentry", "genuflect", "genus", "geode", "line", 
"geodesy", "mile", "geography", "geology", "geometry", "geophysics", "geordie", 
"cross", "georgette", "geranium", "gerbil", "geriatrics", "germ", "germander", 
"germanium", "measles", "measles", "shepherd", "silver", "germicide", "germinate", 
"warfare", "gerund", "gesso", "gestapo", "gestation", "get", "getaway", 
"out", "together", "geyser", "ghee", "gherkin", "ghetto", "blaster", 
"ghosting", "town", "train", "writer", "ghoul", "gibber", "gibberish", 
"gibbon", "giblets", "giddiness", "gift", "gab", "token", "wrap", 
"gigolo", "gillie", "gimbals", "gimlet", "eye", "gimmick", "gimp", 
"ale", "beer", "group", "nut", "gingham", "gingivitis", "ginkgo", 
"rummy", "ginseng", "tummy", "giraffe", "gird", "girder", "girl", 
"friday", "girlfriend", "scout", "girth", "gismo", "gist", "git", 
"away", "gizzard", "icing", "period", "glaciation", "glacier", "gladness", 
"gladden", "glade", "eye", "hand", "gladiator", "gladiolus", "rags", 
"bag", "glair", "glamor", "glamorize", "glamour", "gland", "glanders", 
"fever", "glasnost", "glassful", "blowing", "fibre", "glasshouse", "paper", 
"glassware", "wool", "glaucoma", "glazier", "glean", "gleanings", "glebe", 
"glee", "glen", "glengarry", "glibness", "path", "glider", "glissando", 
"glitch", "glitterati", "glitz", "gloaming", "glob", "warming", "globe", 
"artichoke", "trotter", "globule", "globulin", "gloom", "gloominess", "glorify", 
"hole", "glossary", "glossiness", "stop", "glottis", "gloucester", "puppet", 
"glover", "worm", "gloxinia", "glucose", "ear", "sniffing", "glumness", 
"glutamate", "acid", "gluten", "glutton", "punishment", "gluttony", "glycerin", 
"glycerine", "glycerol", "glycogen", "glycolysis", "man", "gnash", "gnat", 
"gnaw", "gneiss", "gnome", "gnomon", "gnosticism", "gnu", "goal", 
"goalie", "goalkeeper", "goalpost", "goat", "goatee", "goatherd", "goatskin", 
"gobbet", "between", "goblet", "goblin", "stopper", "goby", "cart", 
"god", "godchild", "daughter", "goddess", "godfather", "godhead", "godliness", 
"godmother", "godparent", "godsend", "godson", "goer", "getter", "box", 
"concern", "over", "goiter", "goitre", "kart", "goldcrest", "digger", 
"dust", "age", "eagle", "handshake", "jubilee", "mean", "retriever", 
"rod", "rule", "wedding", "field", "goldfinch", "goldfish", "foil", 
"leaf", "medal", "mine", "plate", "plate", "rush", "goldsmith", 
"standard", "golfer", "ball", "club", "course", "golliwog", "gonad", 
"gondola", "gondolier", "goner", "gong", "gonorrhea", "gonorrhoea", "goo", 
"book", "faith", "friday", "humour", "goody", "job", "goodliness", 
"nature", "goodwill", "will", "works", "googly", "goon", "goose", 
"gooseberry", "flesh", "step", "gopher", "gorgon", "gorgonzola", "gorilla", 
"gorse", "gorsedd", "goriness", "goshawk", "gosling", "slow", "gospel", 
"column", "goth", "goth", "gouache", "gouda", "goulash", "gourd", 
"gourmand", "gourmet", "gout", "govern", "governance", "governess", "government", 
"governor", "general", "gown", "goy", "note", "living", "gradate", 
"gradation", "gradient", "gradualism", "graduation", "graffiti", "grail", "gram", 
"grammar", "grammarian", "school", "gramophone", "record", "grampus", "gran", 
"granadilla", "granary", "grandness", "grandad", "grandchild", "grandee", "grandeur", 
"clock", "jury", "grandma", "mal", "master", "national", "opera", 
"grandpa", "piano", "prix", "grandsire", "slam", "grandson", "grandstand", 
"total", "tour", "grange", "granite", "granny", "flat", "knot", 
"grantor", "granulate", "granule", "grape", "grapefruit", "hyacinth", "grapeshot", 
"grapevine", "hyacinth", "grapeshot", "grapevine", "arts", "novel", "graphics", 
"graphite", "graphology", "paper", "grapnel", "iron", "grassland", "roots", 
"snake", "widow", "gratify", "grating", "gratitude", "gratuity", "accent", 
"image", "graves", "gravestone", "graveyard", "gravimeter", "gravimetry", "gravitate", 
"gravity", "gravy", "boat", "train", "greyness", "grayling", "grazier", 
"grazing", "greaser", "greasiness", "greatness", "circle", "greatcoat", "dane", 
"deal", "tit", "war", "greave", "grebe", "nose", "greed", 
"greediness", "cross", "belt", "card", "greenery", "greenfinch", "fingers", 
"greenfly", "greengage", "greenhorn", "greenhouse", "effect", "gas", "light", 
"paper", "pound", "revolution", "room", "fracture", "greenstuff", "greensward", 
"tea", "time", "greenwood", "greeting", "card", "calendar", "chant", 
"gremlin", "grenade", "grenadier", "greyness", "area", "friar", "greyhound", 
"greylag", "matter", "squirrel", "grid", "griddle", "gridiron", "grief", 
"grievance", "grieve", "harm", "griffin", "griffon", "grille", "grilse", 
"grimness", "griminess", "grinder", "grindstone", "water", "grisliness", "grist", 
"gristle", "gritter", "grits", "grizzle", "groat", "groats", "grocer", 
"grocery", "grog", "grogginess", "groin", "grommet", "grosgrain", "point", 
"grossness", "product", "product", "grotto", "earth", "control", "cover", 
"elder", "floor", "frost", "glass", "grounding", "groundnut", "plan", 
"rent", "groundsel", "groundsman", "speed", "swell", "groundwork", "captain", 
"groupie", "therapy", "grove", "grovel", "grow", "grower", "pains", 
"growth", "industry", "groyne", "grubbiness", "gruel", "gruffness", "grumbler", 
"grumpiness", "string", "suit", "guano", "guarantor", "guaranty", "guardhouse", 
"guardian", "guardroom", "guardsman", "guava", "rose", "guernsey", "guerrilla", 
"guesswork", "guest", "house", "guestimate", "guff", "guidance", "guidebook", 
"missile", "dog", "guideline", "guider", "guild", "guilder", "guildhall", 
"guile", "guillemot", "guilt", "guiltiness", "guinea", "fowl", "pig", 
"guipure", "guise", "guitar", "gulch", "gulf", "stream", "gullet", 
"gully", "arabic", "gumboil", "gumboot", "gumdrop", "gumption", "tree", 
"gunboat", "diplomacy", "carriage", "cotton", "dog", "gunfight", "gunfire", 
"gunman", "metal", "gunner", "gunnery", "gunny", "gunpoint", "gunpowder", 
"gunrunner", "gunshot", "gunslinger", "gunsmith", "gunwale", "guppy", "gurkha", 
"gurnard", "guru", "gusher", "gusset", "gusto", "percha", "guttering", 
"press", "guv", "guzzle", "gybe", "gym", "gymkhana", "gymnasium", 
"gymnast", "gymnastics", "gymnosperm", "gymslip", "gynae", "gynecology", "gypsum", 
"gypsy", "gyrate", "gyrfalcon", "gyro", "gyroscope", "corpus", "habiliment", 
"habit", "habitat", "habitation", "habituate", "cek", "hachures", "hacienda", 
"hacker", "hackle", "hackney", "carriage", "hacksaw", "haddock", "hades", 
"haematite", "hafnium", "haft", "hag", "haggis", "hagiology", "hahnium", 
"haiku", "mary", "hailstone", "hailstorm", "hair", "hairbrush", "haircloth", 
"haircut", "hairdo", "drier", "hairgrip", "hairline", "hairnet", "dog", 
"hairpiece", "hairpin", "bend", "breadth", "shirt", "slide", "hairspray", 
"hairspring", "hairstyle", "trigger", "hairiness", "hajj", "hajji", "haka", 
"hake", "halal", "halberd", "back", "board", "breed", "brother", 
"caste", "crown", "dozen", "duplex", "hitch", "holiday", "hour", 
"life", "light", "mast", "measures", "moon", "halfpenny", "sister", 
"term", "time", "title", "halftone", "truth", "volley", "house", 
"halfwit", "halibut", "halitosis", "hall", "hallow", "hallway", "halogen", 
"halon", "halter", "halva", "halve", "halyard", "hamburger", "hamlet", 
"hammering", "sickle", "hammerhead", "hammerlock", "toe", "hammock", "hamster", 
"handbag", "handball", "handbell", "handbill", "handbook", "handbrake", "handcart", 
"handclap", "handful", "handgun", "handhold", "handicraft", "handiwork", "handlebar", 
"moustache", "handler", "handmaid", "down", "out", "over", "pick", 
"handrail", "handsaw", "handset", "handshake", "handspring", "handstand", "handwork", 
"handiness", "handyman", "hangar", "hanger", "glider", "hanging", "hangman", 
"hangnail", "out", "hangover", "hank", "hanker", "hanky", "panky", 
"hansard", "disease", "hansom", "hanukkah", "happen", "happening", "happiness", 
"hour", "medium", "kiri", "harass", "harbinger", "master", "hardness", 
"hardboard", "cash", "copy", "hardcore", "core", "disk", "harden", 
"arteries", "headedness", "hardihood", "labour", "line", "luck", "pad", 
"palate", "sell", "hardship", "shoulder", "tack", "hardtop", "hardware", 
"hardwood", "hardiness", "annual", "harebell", "harelip", "harem", "haricot", 
"hark", "harlot", "harmonica", "harmonium", "harmonize", "harmony", "harpist", 
"harpy", "harridan", "harrier", "harry", "harshen", "hart", "hartebeest", 
"harvester", "festival", "moon", "mouse", "been", "hashish", "haslet", 
"hasp", "hassock", "hasten", "hastiness", "hat", "hatband", "hatbox", 
"hatching", "hatchback", "hatchet", "man", "hatchway", "hatpin", "hatred", 
"hatstand", "hatter", "trick", "haulage", "haulier", "haulm", "haunch", 
"couture", "cuisine", "hauteur", "haven", "not", "haver", "haversack", 
"havoc", "hawfinch", "hawker", "hawser", "hawthorn", "service", "visitor", 
"hear", "hearing", "aid", "hearken", "hearsay", "hearse", "heart", 
"heartache", "attack", "heartbeat", "heartbreak", "heartburn", "hearten", "failure", 
"hearth", "hearthrug", "heartland", "machine", "searching", "heartthrob", "heartwood", 
"heartiness", "heater", "heath", "heather", "heating", "shield", "heatwave", 
"heaven", "bodies", "going", "handedness", "hydrogen", "industry", "metal", 
"petting", "water", "hebe", "heckler", "hectare", "hectogram", "hedgehog", 
"hop", "hedgerow", "sparrow", "hedonism", "jeebies", "heelball", "heftiness", 
"hegemony", "hegira", "heifer", "height", "heighten", "heir", "apparent", 
"heirloom", "hele", "helicopter", "heliotrope", "heliport", "helium", "helix", 
"hellebore", "hellene", "hellenism", "fire", "hole", "angel", "helm", 
"helmet", "helmsman", "helot", "helper", "helping", "helpline", "helpmate", 
"man", "hematite", "hematology", "hemisphere", "hemline", "hemlock", "hemoglobin", 
"hemophilia", "hemp", "hen", "henbane", "henchman", "henge", "party", 
"henpeck", "henry", "hepatitis", "heptagon", "heraldry", "herb", "border", 
"herbage", "herbalist", "herbarium", "herbicide", "herbivore", "instinct", "herdsman", 
"heredity", "hereford", "heresy", "heretic", "heritage", "hermit", "hermitage", 
"crab", "hernia", "hero", "heroin", "heroine", "heroism", "heron", 
"herpes", "herr", "herring", "bone", "gull", "hertz", "hesitance", 
"hesitate", "hessian", "heterodoxy", "hew", "hexagon", "hexagram", "hexameter", 
"heyday", "hezbollah", "hiatus", "hibernate", "hibiscus", "hick", "hickory", 
"agenda", "hider", "seek", "hideaway", "hideosity", "out", "place", 
"hierarchy", "hieroglyph", "altar", "highball", "chair", "church", "colour", 
"command", "commission", "court", "day", "animal", "education", "explosive", 
"fidelity", "flyer", "frequency", "gear", "handedness", "heels", "jinks", 
"jump", "highlander", "cattle", "fling", "mindedness", "highness", "point", 
"pressure", "priest", "road", "school", "sea", "season", "spot", 
"street", "table", "tea", "technology", "tension", "tide", "time", 
"treason", "voltage", "water", "mark", "highway", "code", "highwayman", 
"wire", "hijacker", "hiker", "hilarity", "hill", "billy", "hillock", 
"hillside", "hilltop", "hilliness", "hilt", "hindi", "hindrance", "hindsight", 
"hinduism", "hindustani", "hinny", "hinterland", "bath", "bone", "flask", 
"hop", "hippie", "hippo", "pocket", "oath", "hippodrome", "hirer", 
"hireling", "purchase", "histamine", "histogram", "histology", "historian", "history", 
"hitchhike", "list", "man", "parade", "hive", "hives", "headache", 
"headband", "headbanger", "headboard", "headcount", "headdress", "header", "headgear", 
"hunting", "heading", "sand", "headlamp", "headland", "headlight", "headline", 
"headlock", "headman", "headmaster", "headphones", "headrest", "headroom", "headscarf", 
"headset", "headship", "headstall", "start", "headstone", "teacher", "headwaters", 
"headway", "wind", "headword", "headiness", "heal", "health", "centre", 
"farm", "food", "service", "visitor", "hear", "hearing", "aid", 
"hearken", "hearsay", "hearse", "heart", "heartache", "attack", "heartbeat", 
"heartbreak", "heartburn", "hearten", "failure", "hearth", "hearthrug", "heartland", 
"machine", "searching", "heartthrob", "heartwood", "heartiness", "heater", "heath", 
"heather", "heating", "shield", "heatwave", "heaven", "bodies", "heaviness", 
"going", "handedness", "hydrogen", "industry", "metal", "petting", "water", 
"hebe", "heckler", "hectare", "hectogram", "hedgehog", "hop", "hedgerow", 
"sparrow", "hedonism", "jeebies", "heelball", "heftiness", "hegemony", "hegira", 
"heifer", "height", "heighten", "heir", "apparent", "heirloom", "hele", 
"helicopter", "heliotrope", "heliport", "helium", "helix", "hellebore", "hellene", 
"hellenism", "fire", "hole", "angel", "helm", "helmet", "helmsman", 
"helot", "helper", "helping", "helpline", "helpmate", "man", "hematite", 
"hematology", "hemisphere", "hemline", "hemlock", "hemoglobin", "hemophilia", "hemp", 
"hen", "henbane", "henchman", "henge", "party", "henpeck", "henry", 
"hepatitis", "heptagon", "heraldry", "herb", "border", "herbage", "herbalist", 
"herbarium", "herbicide", "herbivore", "instinct", "herdsman", "heredity", "hereford", 
"heresy", "heretic", "heritage", "hermit", "hermitage", "crab", "hernia", 
"hero", "heroin", "hay", "haycock", "fever", "haymaking", "haystack", 
"haze", "hazel", "hazelnut", "haziness", "bomb", "headache", "headband", 
"headbanger", "headboard", "headcount", "headdress", "header", "headgear", "hunting", 
"heading", "sand", "headlamp", "headland", "headlight", "headline", "headlock", 
"headman", "headmaster", "headphones", "headrest", "headroom", "headscarf", "headset", 
"headship", "headstall", "start", "headstone", "teacher", "headwaters", "headway", 
"wind", "headword", "headiness", "heal", "health", "centre", "farm", 
"food", "service", "visitor", "hear", "hearing", "aid", "hearken", 
"hearsay", "hearse", "heart", "heartache", "attack", "heartbeat", "heartbreak", 
"heartburn", "hearten", "failure", "hearth", "hearthrug", "heartland", "machine", 
"searching", "heartthrob", "heartwood", "heartiness", "heater", "heath", "heather", 
"heating", "shield", "heatwave", "heaven", "bodies", "going", "handedness", 
"hydrogen", "industry", "metal", "petting", "water", "hebe", "heckler", 
"hectare", "hectogram", "hedgehog", "hop", "hedgerow", "sparrow", "hedonism", 
"jeebies", "heelball", "heftiness", "hegemony", "hegira", "heifer", "height", 
"heighten", "heir", "apparent", "heirloom", "hele", "helicopter", "heliotrope", 
"heliport", "helium", "helix", "hellebore", "hellene", "hellenism", "fire", 
"hole", "angel", "helm", "helmet", "helmsman", "helot", "helper", 
"helping", "helpline", "helpmate", "man", "hematite", "hematology", "hemisphere", 
"hemline", "hemlock", "hemoglobin", "hemophilia", "hemp", "hen", "henbane", 
"henchman", "henge", "party", "henpeck", "henry", "hepatitis", "heptagon", 
"heraldry", "herb", "border", "herbage", "herbalist", "herbarium", "herbicide", 
"herbivore", "instinct", "herdsman", "heredity", "hereford", "heresy", "heretic", 
"heritage", "hermit", "hermitage", "crab", "hernia", "hero", "heroin", 
"heroine", "heroism", "heron", "herpes", "herr", "herring", "bone", 
"gull", "hertz", "hesitance", "hesitate", "hessian", "heterodoxy", "hew", 
"hexagon", "hexagram", "hexameter", "heyday", "hezbollah", "hiatus", "hibernate", 
"hibiscus", "hick", "hickory", "agenda", "hider", "seek", "hideaway", 
"hideosity", "out", "place", "hierarchy", "hieroglyph", "altar", "highball", 
"chair", "church", "colour", "command", "commission", "court", "day", 
"animal", "education", "explosive", "fidelity", "flyer", "frequency", "gear", 
"handedness", "heels", "jinks", "jump", "highlander", "cattle", "fling", 
"mindedness", "highness", "point", "pressure", "priest", "road", "school", 
"sea", "season", "spot", "street", "table", "tea", "technology", 
"tension", "tide", "time", "treason", "voltage", "water", "mark", 
"highway", "code", "highwayman", "wire", "hijacker", "hiker", "hilarity", 
"hill", "billy", "hillock", "hillside", "hilltop", "hilliness", "hilt", 
"hindi", "hindrance", "hindsight", "hinduism", "hindustani", "hinny", "hinterland", 
"bath", "bone", "flask", "hop", "hippie", "hippo", "pocket", 
"oath", "hippodrome", "hirer", "hireling", "purchase", "histamine", "histogram", 
"histology", "historian", "history", "hitchhike", "list", "man", "parade", 
"hive", "hives", "hoarder", "hoarding", "frost", "hoarseness", "hob", 
"hobby", "horse", "hobgoblin", "hobnail", "hobnob", "hobo", "choice", 
"hockey", "pocus", "hod", "disease", "hogmanay", "hogshead", "hogwash", 
"hoick", "polloi", "hokum", "holdall", "holding", "company", "hole", 
"heart", "camp", "maker", "holiness", "holism", "sauce", "holler", 
"hollowness", "holly", "hollyhock", "holm", "holmium", "holocaust", "hologram", 
"holography", "hols", "holster", "ghost", "land", "holies", "orders", 
"empire", "see", "spirit", "week", "writ", "homage", "homburg", 
"brew", "coming", "counties", "economics", "farm", "guard", "help", 
"homeland", "homeliness", "office", "homeopathy", "rule", "secretary", "homestead", 
"truth", "homework", "homicide", "homily", "homo", "homogenize", "homograph", 
"homology", "homonym", "homophobia", "homophone", "sapiens", "honesty", "honey", 
"bee", "honeydew", "tonk", "honorarium", "hooch", "hoodlum", "hoodoo", 
"hoodwink", "hoof", "hookah", "eye", "hooker", "hookey", "hookworm", 
"hooligan", "hoopoe", "henry", "hooter", "hopscotch", "horde", "horehound", 
"horizon", "hormone", "therapy", "horn", "hornbeam", "hornbill", "hornblende", 
"hornet", "plenty", "hornpipe", "horniness", "horology", "horoscope", "horrify", 
"uvre", "horseback", "horsebox", "brass", "chestnut", "horseflesh", "horsefly", 
"guards", "horsehair", "horseman", "horseplay", "horsepower", "race", "sense", 
"horseshoe", "horsetail", "horsewoman", "hosanna", "hosier", "hosiery", "hospice", 
"hospital", "hostage", "hostel", "hosteling", "hostelling", "hostelry", "hostess", 
"hostility", "hotness", "air", "balloon", "hotbed", "hotchpotch", "bun", 
"dog", "hotel", "hotelier", "gospeller", "hothead", "hothouse", "line", 
"money", "hotplate", "hotpot", "potato", "rod", "seat", "spot", 
"stuff", "hottentot", "water", "bottle", "hour", "hourglass", "houri", 
"agent", "arrest", "houseboat", "housecoat", "housefly", "household", "troops", 
"word", "hunting", "husband", "lights", "housemaid", "knee", "houseman", 
"martin", "music", "cards", "commons", "keys", "lords", "party", 
"plant", "houseroom", "housetop", "warming", "housewife", "housework", "housey", 
"housing", "estate", "hovel", "hovercraft", "hoverport", "howdah", "howitzer", 
"howler", "hoyden", "hub", "bubble", "hubbub", "hubby", "hubris", 
"hue", "cry", "huffiness", "hugeness", "huguenot", "hula", "hoop", 
"hulk", "hullabaloo", "being", "chain", "humaneness", "killer", "humanism", 
"humanity", "humanize", "humankind", "nature", "rights", "shield", "humbleness", 
"humdinger", "humerus", "humidifier", "humidify", "humidity", "humiliate", "humility", 
"hummock", "hummus", "humoresque", "humorist", "humpback", "bridge", "humus", 
"hun", "hunchback", "thousands", "strike", "parliament", "hunk", "hunting", 
"hunter", "moon", "huntsman", "hurdler", "gurdy", "hurley", "burly", 
"hurricane", "lamp", "hurtle", "husbandry", "money", "huskiness", "huss", 
"hussar", "hussy", "hustings", "hustler", "hut", "hutch", "hyacinth", 
"hybridism", "hybridize", "hydra", "hydrangea", "hydrant", "hydration", "hydraulics", 
"hydride", "hydro", "acid", "acid", "hydrofoil", "hydrogen", "bomb", 
"peroxide", "sulphide", "hydrology", "hydrolyse", "hydrolysis", "hydrolyze", "hydrometer", 
"hydropathy", "hydroplane", "hydroxide", "hydroxyl", "hyena", "hygiene", "hygrometer", 
"hygroscope", "hymen", "hymnal", "hymnology", "hyoscine", "hyperbola", "hyperbole", 
"function", "hypermedia", "hypertext", "hyphenate", "hypnosis", "hypnotism", "hypnotize", 
"hypodermic", "hypocaust", "hypocrisy", "hypocrite", "hypotenuse", "hypothesis", "hyssop", 
"hysteresis", "hysteria", "hysteric", "iambus", "ibex", "ibis", "ibo", 
"age", "axe", "iceberg", "lettuce", "icebox", "breaker", "bucket", 
"cap", "cream", "cube", "field", "hockey", "icelander", "lolly", 
"pack", "pick", "plant", "rink", "skater", "ichneumon", "icicle", 
"icing", "sugar", "icon", "iconoclast", "iciness", "idea", "idealism", 
"idealize", "fixe", "parade", "identify", "identikit", "identity", "ideogram", 
"ideograph", "ideologue", "ideology", "ides", "idiocy", "idiom", "idiot", 
"idleness", "idol", "idolater", "idolize", "idyll", "igloo", "ignite", 
"ignition", "ignominy", "ignoramus", "ignorance", "ignore", "iguana", "iguanodon", 
"ikebana", "ileum", "ilex", "ilk", "illegality", "health", "humour", 
"illiteracy", "illness", "treat", "illuminate", "illumine", "use", "illusion", 
"illustrate", "will", "imagery", "imagine", "imago", "imam", "imbalance", 
"imbecility", "imbibe", "imbroglio", "imbue", "imitate", "imitation", "conception", 
"immanence", "immaturity", "immediacy", "immerse", "immersion", "heater", "immigrate", 
"imminence", "immobility", "immobilize", "immodesty", "immolate", "immorality", "immunity", 
"immunize", "immunology", "immure", "imp", "impaction", "impair", "impala", 
"impale", "impart", "impasse", "impasto", "impatiens", "impatience", "impeach", 
"impedance", "impede", "impediment", "impel", "impend", "imperil", "impetigo", 
"impetus", "impiety", "impinge", "impishness", "implicate", "implode", "implore", 
"imply", "importance", "importune", "impose", "imposition", "impostor", "imposture", 
"impotence", "impound", "impoverish", "impregnate", "impresario", "impression", "imprimatur", 
"imprison", "improbity", "fraction", "improve", "improvise", "imprudence", "impudence", 
"impugn", "impulse", "buying", "impulsion", "impunity", "impurity", "impute", 
"inability", "inaccuracy", "inaction", "inactivity", "inadequacy", "inamorato", "inanity", 
"inaptitude", "inaugurate", "inbreeding", "inca", "incandesce", "incapacity", "inception", 
"incest", "inchoation", "incidence", "music", "incinerate", "incise", "incision", 
"incisor", "incite", "incivility", "inclemency", "plane", "include", "income", 
"tax", "incommode", "increment", "incubate", "incubation", "incubator", "incubus", 
"inculcate", "incumbency", "incur", "incursion", "incurve", "indecency", "assault", 
"exposure", "indecision", "article", "indelicacy", "indemnify", "indemnity", "indention", 
"vowel", "indexation", "finger", "indiaman", "corn", "elephant", "file", 
"ink", "summer", "indicate", "indicator", "indict", "indictment", "indigence", 
"indignity", "indigo", "object", "question", "speech", "tax", "indite", 
"indium", "indolence", "induce", "inducement", "induct", "inductance", "induction", 
"inductor", "indulge", "indulgence", "action", "estate", "relations", "industry", 
"inelegance", "ineptitude", "inequality", "inequity", "inertia", "reel", "selling", 
"infamy", "infant", "infanta", "paralysis", "infantry", "infarct", "infatuate", 
"infect", "infection", "infelicity", "infer", "inference", "complex", "inferno", 
"infest", "infidelity", "infield", "infighting", "infilling", "infiltrate", "infinitude", 
"infinity", "infirmary", "infirmity", "infix", "inflame", "inflate", "inflation", 
"inflect", "inflection", "inflict", "inflow", "influenza", "influx", "info", 
"inform", "informant", "retrieval", "technology", "informer", "infraction", "infringe", 
"infuriate", "infuse", "infusion", "nue", "ingenuity", "ingest", "inglenook", 
"ingot", "ingratiate", "ingredient", "ingress", "inhabit", "inhabitant", "inhalant", 
"inhale", "inhaler", "inhere", "inherence", "inherit", "tax", "inhibit", 
"inhibition", "inhumanity", "iniquity", "letter", "initiation", "initiative", "inject", 
"injunction", "injure", "injury", "time", "injustice", "inkling", "inkstand", 
"well", "inkiness", "revenue", "law", "inlet", "inmate", "inn", 
"innards", "city", "man", "tube", "innings", "innkeeper", "innocence", 
"court", "innovate", "innuendo", "innumeracy", "inoculate", "patient", "inquest", 
"inquietude", "inquire", "inquiry", "inquisitor", "inroad", "inrush", "insanity", 
"inscribe", "insect", "insecurity", "inseminate", "insertion", "job", "insider", 
"dealing", "insight", "insignia", "insinuate", "insipidity", "insist", "insistence", 
"insobriety", "insole", "insolence", "insolvency", "insomnia", "insomniac", "inspect", 
"inspector", "taxes", "inspire", "inspirit", "install", "instalment", "instep", 
"instigate", "instil", "instill", "instruct", "instrument", "insularity", "insulate", 
"insulin", "insurance", "insure", "insured", "insurer", "insurgence", "intactness", 
"intaglio", "intake", "integer", "calculus", "integrate", "circuit", "integrity", 
"integument", "intellect", "quotient", "intend", "intensify", "intensity", "care", 
"intentness", "intention", "inter", "interact", "interbreed", "intercede", "intercept", 
"intercom", "interfere", "interferon", "interfuse", "decoration", "design", "interject", 
"interlace", "interlard", "interleave", "interline", "interlink", "interloper", "interlude", 
"intermarry", "interment", "intermezzo", "intermix", "internment", "engine", "evidence", 
"intern", "internee", "interplay", "interpol", "interpose", "interpret", "interrupt", 
"intersect", "interstice", "intertwine", "interval", "intervene", "interweave", "interpose", 
"interpret", "interrupt", "intersect", "interstice", "intertwine", "interval", "intervene", 
"interweave", "intestacy", "intestacy", "intestine", "intifada", "intimacy", "intimation", 
"intimidate", "intonation", "intone", "intoxicate", "tray", "intricacy", "intro", 
"introduce", "introit", "intrude", "intruder", "intrusion", "intuition", "inuit", 
"inundate", "inure", "invade", "invalidism", "invalidity", "invalidate", "invasion", 
"invective", "inveigh", "inveigle", "invent", "invention", "proportion", "inversion", 
"invert", "commas", "invest", "investment", "trust", "inveteracy", "invigilate", 
"invigorate", "inviolacy", "exports", "invitation", "invocation", "invoke", "involution", 
"involve", "iodide", "iodine", "ion", "ionize", "ionizer", "ionosphere", 
"iota", "iou", "irateness", "ire", "iridium", "iris", "bull", 
"coffee", "irishman", "stew", "irishwoman", "irk", "age", "cross", 
"curtain", "ironing", "board", "fire", "lung", "ironmaster", "ironmonger", 
"rations", "ironstone", "ironware", "ironwork", "ironworks", "irony", "irradiate", 
"irrigate", "irritate", "irrupt", "isinglass", "islam", "island", "islander", 
"isle", "islet", "ism", "isobar", "isolate", "isomer", "isotherm", 
"isotope", "isotropy", "israelite", "isthmus", "vermouth", "italicize", "palm", 
"itchiness", "item", "itemize", "iterate", "itinerary", "ivory", "tower", 
"ivy", "jabot", "jacaranda", "jacinth", "jackal", "jackanapes", "jackass", 
"jackboot", "jackdaw", "jacket", "potato", "frost", "box", "trades", 
"lantern", "plane", "plug", "jackpot", "jackrabbit", "russell", "jackstone", 
"tar", "jacobite", "jacquard", "jacuzzi", "jaggedness", "jaguar", "jailbird", 
"jailbreak", "jailer", "jainism", "jalap", "jalopy", "jalousie", "jamb", 
"jamboree", "jamjar", "janitor", "january", "jap", "japonica", "jargon", 
"jasmine", "jasper", "car", "jauntiness", "javelin", "jawbone", "breaker", 
"jay", "jaywalk", "jazzer", "jazzman", "jcb", "jealousy", "jeans", 
"jeep", "jehovah", "witness", "jejunum", "hyde", "jell", "jellify", 
"baby", "jellyfish", "jemmy", "jenny", "wren", "jeopardize", "jeopardy", 
"jerboa", "jeremiad", "jeremiah", "jerkin", "jerkiness", "jeroboam", "jerry", 
"jerry", "builder", "jerrycan", "jersey", "artichoke", "jester", "jesuit", 
"engine", "lag", "plane", "propulsion", "jetsam", "set", "jetty", 
"jew", "jeweler", "jeweller", "jewellery", "jewess", "jewishness", "jewry", 
"harp", "jezebel", "jibber", "jiff", "bag", "jigger", "pokery", 
"jigsaw", "jihad", "jilt", "crow", "jams", "jingo", "jinnee", 
"jiver", "jobber", "jobbery", "jobcentre", "hunt", "lot", "comforter", 
"boys", "sharing", "jobsheet", "jock", "jockstrap", "jocosity", "jocularity", 
"jocundity", "jodhpurs", "bloggs", "jogger", "jogtrot", "john", "bull", 
"dory", "johnny", "lately", "vivre", "joiner", "stock", "company", 
"joist", "jojoba", "jokiness", "joker", "jollify", "jollity", "jolliness", 
"roger", "jonah", "jonquil", "joss", "stick", "jotter", "jotting", 
"joule", "journal", "journalese", "journalism", "journalist", "journeyman", "jouster", 
"jove", "joviality", "joy", "joyrider", "joystick", "jubilance", "jubilee", 
"judaism", "judas", "judgement", "day", "judicature", "judiciary", "judo", 
"jugful", "juggernaut", "juggler", "vein", "juice", "juiciness", "jitsu", 
"jujube", "jukebox", "julep", "calendar", "cap", "july", "sale", 
"jumbo", "bean", "jet", "lead", "off", "suit", "jumpiness", 
"junction", "box", "juncture", "june", "jungle", "room", "juniper", 
"bond", "food", "junkie", "mail", "shop", "junta", "juridical", 
"jurist", "juror", "jury", "box", "justness", "justice", "peace", 
"justify", "jute", "court", "juvenilia", "juxtapose", "kaffir", "kaiser", 
"kale", "kaleyard", "kangaroo", "court", "kaolin", "kapok", "kappa", 
"karabiner", "karakul", "karaoke", "karate", "karma", "kauri", "kayak", 
"kazoo", "kea", "kebab", "kedgeree", "keelhaul", "keelson", "keenness", 
"keeper", "fit", "keeping", "keepsake", "keg", "beer", "kelp", 
"kelpie", "kelt", "kelvin", "scale", "kendo", "kepi", "keratin", 
"kerb", "crawling", "drill", "kerbstone", "kerchief", "kerfuffle", "kermes", 
"kernel", "kerosene", "kestrel", "ketch", "ketchup", "ketone", "kettle", 
"kettledrum", "keyboarder", "keyhole", "surgery", "keynote", "keypad", "ring", 
"signature", "keystone", "keystroke", "keyword", "kgb", "khan", "kibbutz", 
"kibosh", "kickback", "off", "kickstand", "kiddie", "kiddo", "kidnap", 
"kidney", "bean", "machine", "killer", "instinct", "whale", "killjoy", 
"kiln", "kilo", "kilobyte", "kilocycle", "kilogram", "kilohertz", "kilojoule", 
"kiloliter", "kilolitre", "kilometer", "kilometre", "kiloton", "kilovolt", "kilowatt", 
"hour", "kilter", "kimono", "kindle", "kindling", "kindliness", "kindness", 
"spirit", "kinematics", "art", "energy", "kinetics", "king", "spaniel", 
"kingcup", "kingdom", "come", "kingfisher", "arms", "beasts", "birds", 
"kingpin", "post", "counsel", "english", "guide", "highway", "proctor", 
"scout", "kinkiness", "kinsfolk", "kinship", "kinsman", "kiosk", "kir", 
"grip", "kirk", "session", "kirsch", "kismet", "curl", "kisser", 
"death", "life", "kissogram", "kitbag", "kitchen", "garden", "kite", 
"kitemark", "kith", "kitsch", "kittiwake", "kiwi", "fruit", "klaxon", 
"kleenex", "knack", "knapsack", "knapweed", "knave", "knead", "bend", 
"breeches", "jerk", "kneel", "kneeler", "glory", "knickers", "knack", 
"edge", "pleat", "knighthood", "errant", "knit", "knitting", "machine", 
"needle", "knitwear", "knob", "knocker", "shop", "knees", "effect", 
"knockout", "knoll", "knotgrass", "hole", "know", "all", "how", 
"knowledge", "sandwich", "knurl", "koala", "kohl", "kohlrabi", "kolkhoz", 
"kook", "kookaburra", "koppie", "koran", "kraal", "kraut", "kremlin", 
"krill", "krona", "krone", "krugerrand", "krummhorn", "krypton", "kudos", 
"kudu", "klan", "mmel", "kumquat", "kyle", "lab", "labium", 
"laboratory", "laborer", "camp", "day", "labourer", "exchange", "party", 
"labrador", "laburnum", "labyrinth", "lac", "lacerate", "lackey", "lacrosse", 
"lactation", "acid", "lactose", "lacuna", "lad", "back", "lade", 
"man", "lady", "ladybird", "chapel", "day", "waiting", "killer", 
"ladyship", "slipper", "lager", "lout", "laggard", "lagging", "lagoon", 
"lah", "paper", "lair", "laird", "faire", "laity", "district", 
"lakh", "lam", "lama", "lamasery", "lambada", "lambaste", "lambda", 
"lambency", "lambswool", "lameness", "duck", "lamina", "lamination", "lammas", 
"lamp", "lampblack", "lamplight", "lampoonist", "lamppost", "lamprey", "lampshade", 
"corporal", "lancer", "lancet", "arch", "agent", "landau", "landfall", 
"landfill", "girl", "landing", "craft", "gear", "stage", "landlady", 
"line", "landlord", "landlubber", "landmark", "mass", "mine", "landowner", 
"gardening", "landslide", "landslip", "lane", "language", "laboratory", "languish", 
"languor", "lankiness", "lanolin", "lantern", "jaws", "lanthanide", "series", 
"lanthanum", "lanyard", "dog", "lapel", "lazuli", "laplander", "honour", 
"lapp", "lappet", "laptop", "lapwing", "larboard", "larceny", "larch", 
"larder", "cake", "largeness", "largesse", "lariat", "larkspur", "larva", 
"laryngitis", "larynx", "lasagne", "laser", "lashings", "lass", "fever", 
"lassitude", "minute", "name", "post", "rites", "straw", "trump", 
"word", "latchkey", "lateness", "latecomer", "sail", "latency", "heat", 
"thinking", "latex", "lath", "lathe", "america", "latinize", "latitude", 
"latrine", "saints", "lattice", "window", "laudanum", "laughing", "gas", 
"jackass", "stock", "laughter", "launcher", "pad", "launder", "laundress", 
"laundry", "laurel", "lav", "lava", "lavatory", "paper", "lave", 
"lavender", "water", "laver", "law", "lawbreaker", "lawcourt", "lawfulness", 
"lawgiver", "lord", "lawmaker", "lawnmower", "tennis", "lawrencium", "lawsuit", 
"lawyer", "laxity", "layabout", "layette", "figure", "layman", "off", 
"layout", "reader", "laziness", "lazybones", "lea", "leach", "leader", 
"article", "light", "note", "question", "pencil", "poisoning", "leafage", 
"mould", "stalk", "table", "leakage", "leanness", "leaning", "years", 
"year", "learn", "learner", "learning", "leasehold", "multiple", "jacket", 
"taking", "leavings", "lecher", "lechery", "lectern", "lecturer", "lederhosen", 
"ledge", "ledger", "lee", "leech", "leek", "lees", "leeway", 
"bank", "handedness", "hander", "leftism", "luggage", "winger", "lefty", 
"leg", "legacy", "aid", "legalese", "legalism", "legality", "legalize", 
"tender", "legate", "legatee", "legation", "bye", "legend", "line", 
"legging", "legginess", "legibility", "disease", "legislate", "legitimacy", "legitimize", 
"lego", "sleeve", "pull", "room", "legume", "warmer", "lei", 
"leisure", "centre", "leitmotif", "lemming", "lemon", "lemonade", "balm", 
"curd", "geranium", "sole", "lemur", "lend", "length", "lengthen", 
"lenience", "lens", "lent", "lentil", "leo", "leopard", "leotard", 
"leper", "leprechaun", "leprosy", "lesbianism", "majesty", "lesion", "lessee", 
"lessen", "lesson", "lessor", "lea", "down", "lethargy", "out", 
"bomb", "box", "letterhead", "credit", "lettuce", "leucocyte", "leukaemia", 
"leukemia", "levant", "levee", "crossing", "leveler", "headedness", "leveller", 
"pegging", "leverage", "buyout", "leveret", "leviathan", "levis", "levitate", 
"levity", "lexicon", "jar", "liability", "liaise", "liaison", "liana", 
"liar", "lib", "libation", "liberalism", "democrat", "liberalize", "liberate", 
"liberty", "libido", "libra", "librarian", "library", "libretto", "licence", 
"licensee", "licentiate", "lichen", "gate", "promise", "lid", "lido", 
"lied", "detector", "down", "lien", "land", "lieu", "lieutenant", 
"colonel", "life", "assurance", "lifebelt", "lifeblood", "lifeboat", "lifebuoy", 
"cycle", "lifeguard", "guards", "insurance", "jacket", "lifeline", "peer", 
"preserver", "lifer", "sciences", "sentence", "lifestyle", "machine", "lifetime", 
"off", "ligament", "lightness", "bulb", "flyweight", "headedness", "lighthouse", 
"industry", "lighting", "time", "meter", "conductor", "lights", "lightship", 
"year", "lignite", "vitae", "likelihood", "liken", "likeness", "liking", 
"lilo", "lily", "valley", "limekiln", "limelight", "limerick", "limestone", 
"limey", "limitation", "company", "limn", "limo", "limousine", "limpness", 
"limpet", "mine", "limpidity", "linage", "linchpin", "linctus", "linden", 
"lineage", "lineament", "linearity", "lineation", "drawing", "basket", "fire", 
"vision", "out", "printer", "linesman", "linger", "lingerie", "lingo", 
"franca", "linguist", "liniment", "lining", "linkage", "linkman", "links", 
"linnet", "lino", "linocut", "linoleum", "linseed", "oil", "woolsey", 
"lint", "lintel", "lion", "heart", "lionize", "share", "lipid", 
"read", "service", "lipstick", "liquefy", "liqueur", "liquidate", "crystal", 
"display", "liquidity", "liquidize", "liquidizer", "liquor", "liquorice", "lira", 
"lisle", "listen", "listener", "listeria", "price", "litany", "liter", 
"literacy", "literalism", "literati", "literature", "lithium", "litigate", "litmus", 
"paper", "test", "litotes", "litre", "litterbug", "lout", "end", 
"grebe", "people", "woman", "liturgy", "livelihood", "liveliness", "liven", 
"sausage", "liverwort", "livery", "stable", "livestock", "wire", "room", 
"wage", "lizard", "llama", "list", "register", "loach", "loader", 
"line", "loafer", "loam", "shark", "loathe", "lobbyist", "lobe", 
"lobelia", "lobotomy", "lobscouse", "lobster", "pot", "lobworm", "authority", 
"colour", "locale", "government", "locality", "localize", "time", "train", 
"locate", "location", "loch", "locker", "locket", "lockjaw", "keeper", 
"lockout", "locksmith", "locomotion", "tenens", "locus", "classicus", "locust", 
"locution", "lode", "lodestar", "lodestone", "lodger", "lodging", "loess", 
"loftiness", "logan", "loganberry", "logarithm", "logbook", "cabin", "logger", 
"loggerhead", "loggia", "logging", "logic", "logicality", "logistics", "jam", 
"logo", "loin", "loincloth", "loiter", "loll", "lollipop", "man", 
"lollop", "lolly", "londoner", "pride", "hand", "loneliness", "hearts", 
"loner", "wolf", "longboat", "longbow", "division", "longeron", "longevity", 
"face", "longhand", "haul", "longitude", "johns", "jump", "shot", 
"sight", "wave", "loo", "loofah", "alike", "looker", "glass", 
"lookout", "loon", "looniness", "bin", "loophole", "looseness", "cover", 
"loosen", "looter", "lop", "loquacity", "loquat", "chancellor", "justice", 
"lieutenant", "lordliness", "mayor", "seal", "ladies", "day", "lordship", 
"prayer", "spiritual", "supper", "temporal", "lore", "lorgnette", "lorry", 
"lose", "loser", "loss", "leader", "cause", "lot", "lothario", 
"lotion", "lottery", "lotto", "lotus", "eater", "position", "loudness", 
"hailer", "lough", "bar", "suit", "lour", "lousiness", "lout", 
"louvre", "lovage", "lovat", "affair", "bird", "bite", "child", 
"mist", "bleeding", "loveliness", "lovemaking", "nest", "lover", "seat", 
"cup", "church", "comedy", "countries", "case", "class", "house", 
"multiple", "frequency", "gear", "lowlander", "lowliness", "pressure", "season", 
"sunday", "tide", "loyalty", "loyalist", "toast", "lozenge", "plate", 
"lubber", "lubricant", "lubricate", "lubricity", "lucerne", "lucidity", "lucifer", 
"luck", "dip", "lucre", "ludditism", "ludo", "luff", "luggage", 
"lugger", "lughole", "lugsail", "lugworm", "lullaby", "lumbago", "puncture", 
"lumberjack", "jacket", "room", "luminary", "luminosity", "lumpectomy", "sugar", 
"sum", "lumpiness", "lunacy", "module", "month", "asylum", "fringe", 
"lunation", "luncheon", "meat", "voucher", "lung", "lupin", "lupus", 
"lurcher", "lurex", "lurk", "luster", "lustre", "lustiness", "lutenist", 
"lutetium", "lux", "luxuriance", "luxuriate", "luxury", "lychee", "lycra", 
"lye", "lymph", "system", "gland", "lymphoma", "lynch", "law", 
"lynx", "lyre", "bird", "lyricism", "lyricist", "mac", "macadam", 
"macadamia", "macaque", "macaroni", "macaroon", "macaw", "mccoy", "doine", 
"macerate", "mach", "machete", "code", "machinery", "tool", "machinist", 
"machismo", "one", "mackerel", "sky", "mackintosh", "macrocarpa", "macrocosm", 
"macron", "macula", "madness", "madam", "madame", "disease", "madden", 
"madder", "madeira", "madhouse", "madman", "madonna", "madrigal", "madwoman", 
"maelstrom", "maenad", "maestro", "west", "mafia", "mafioso", "mag", 
"magazine", "maggot", "eye", "magician", "lantern", "magistracy", "magistrate", 
"magma", "carta", "magnate", "magnesia", "magnesium", "magnet", "field", 
"mine", "needle", "north", "pole", "storm", "tape", "magnetism", 
"magnetize", "magneto", "magnificat", "magnify", "glass", "magnitude", "magnolia", 
"magnox", "magnum", "opus", "magpie", "magus", "maharaja", "maharanee", 
"maharishi", "mahatma", "jong", "mahogany", "mahonia", "mahout", "maid", 
"maiden", "maidenhair", "maidenhead", "name", "over", "honour", "mailbag", 
"mailbox", "list", "order", "mailshot", "maim", "brace", "chance", 
"mainframe", "mainland", "mainline", "line", "mainmast", "mainsail", "mainspring", 
"mainstay", "mainstream", "maintain", "school", "maintop", "yard", "maiolica", 
"maisonette", "maize", "majesty", "domo", "majorette", "general", "majority", 
"rule", "maker", "makeweight", "making", "malachite", "malady", "malaise", 
"malaria", "malarkey", "malayan", "maleness", "chauvinist", "malefactor", "menopause", 
"malice", "malignity", "malignancy", "malinger", "mall", "mallard", "mallet", 
"mallow", "malmsey", "milk", "cross", "maltose", "maltreat", "whisky", 
"mama", "mamba", "mambo", "mammal", "mammogram", "mammon", "town", 
"manage", "management", "manager", "manageress", "director", "arms", "manatee", 
"mandala", "mandamus", "mandarin", "mandible", "mandolin", "mandrake", "mandrel", 
"mandrill", "mane", "friday", "manganese", "mange", "wurzel", "manger", 
"tout", "mango", "mangrove", "manhandle", "manhole", "manhood", "hour", 
"manhunt", "mania", "manicurist", "manifesto", "manikin", "manila", "street", 
"manipulate", "mankind", "manliness", "manna", "mannequin", "manner", "mannerism", 
"letters", "war", "manor", "manpower", "mansard", "manse", "manservant", 
"mansion", "mantel", "mantilla", "mantis", "mantissa", "mantra", "mantrap", 
"cat", "maoism", "maple", "leaf", "sugar", "syrup", "maquette", 
"maquis", "mar", "marabou", "maraca", "maraschino", "cherry", "marathon", 
"maraud", "cake", "marbling", "marcasite", "march", "marcher", "marcher", 
"hare", "orders", "gras", "nest", "tail", "margarine", "marge", 
"cost", "marginalia", "error", "marguerite", "marigold", "marijuana", "marimba", 
"marina", "marinate", "mariner", "marionette", "marjoram", "down", "man", 
"marker", "marketer", "day", "marketeer", "garden", "place", "price", 
"research", "town", "value", "marking", "marksman", "marlin", "marmalade", 
"marmite", "marmoset", "marmot", "marocain", "marque", "marquee", "marquess", 
"marquetry", "marquis", "marquise", "marram", "marriage", "bureau", "guidance", 
"licence", "lines", "settlement", "marrow", "marrowbone", "marrowfat", "marry", 
"marsala", "marsh", "yard", "force", "gas", "marshland", "mallow", 
"marigold", "mart", "martello", "marten", "arts", "law", "martin", 
"martinet", "martingale", "martini", "martinmas", "martyrdom", "marxism", "leninism", 
"mascara", "mascot", "maser", "masher", "tape", "masochism", "mason", 
"masonry", "masque", "parlour", "masseur", "massif", "media", "noun", 
"production", "master", "mastectomy", "class", "key", "ceremonies", "rolls", 
"stroke", "switch", "mastery", "masthead", "mastic", "masticate", "mastiff", 
"mastitis", "mastodon", "process", "masturbate", "matador", "matchboard", "matchbox", 
"matchmaker", "point", "matchstick", "matchwood", "mater", "riel", "maternity", 
"mateyness", "math", "tables", "maths", "matinee", "coat", "idol", 
"matins", "matriarch", "matriarchy", "matricide", "matrimony", "matrix", "matron", 
"honour", "course", "factness", "death", "matting", "mattock", "mattress", 
"maturate", "maturation", "matureness", "student", "maulstick", "maunder", "maundy", 
"money", "thursday", "mausoleum", "maverick", "maw", "maxi", "maxilla", 
"maxim", "maximize", "may", "may", "maya", "day", "mayday", 
"mayflower", "mayfly", "mayhem", "mayonnaise", "mayor", "mayoralty", "mayoress", 
"maypole", "queen", "maze", "mazurka", "mead", "meadow", "wheels", 
"ticket", "mealtime", "mealiness", "meanness", "meanness", "meanie", "means", 
"level", "measles", "meat", "meatball", "loaf", "safe", "meatiness", 
"mecca", "mechanic", "engineer", "mechanics", "mechanism", "mechanize", "med", 
"medal", "medalist", "medallion", "medallist", "meddle", "media", "mediate", 
"medic", "officer", "medicament", "medicare", "medicate", "medication", "medicine", 
"man", "history", "latin", "mediocrity", "meditate", "and", "wave", 
"medlar", "medley", "medulla", "oblongata", "medusa", "meekness", "meerkat", 
"meerschaum", "meeting", "megabuck", "megabyte", "megadeath", "megahertz", "megalith", 
"megaphone", "megastar", "megaton", "megavolt", "megawatt", "megohm", "meiosis", 
"melamine", "lange", "melanin", "melanoma", "toast", "meld", "melee", 
"mellowness", "melodeon", "melodrama", "melody", "melon", "melt", "meltdown", 
"point", "pot", "member", "membership", "membrane", "memento", "mori", 
"memo", "memoir", "memorandum", "memorize", "memory", "lane", "memsahib", 
"nage", "trois", "menagerie", "mendacity", "mending", "menfolk", "menhir", 
"meninges", "meningitis", "meniscus", "menopause", "menorah", "menses", "rea", 
"cycle", "menstruate", "menswear", "age", "block", "deficiency", "mentality", 
"patient", "menthol", "mentor", "menu", "marine", "projection", "mercer", 
"mercerize", "merchant", "bank", "navy", "ship", "mercury", "merganser", 
"merge", "merger", "meridian", "meringue", "merino", "merlin", "mermaid", 
"merriment", "round", "salliance", "mescal", "buttons", "mescaline", "mesmerize", 
"mesomorph", "meson", "mesosphere", "message", "messenger", "messiah", "kit", 
"messiness", "metabolism", "metabolite", "metabolize", "metacarpus", "detector", "metallize", 
"metalloid", "metallurgy", "metalwork", "metaphor", "metaphysic", "metastasis", "metatarsus", 
"mete", "meteor", "meteorite", "meteoroid", "metreage", "methadone", "methanal", 
"methane", "acid", "methanol", "methinks", "method", "methodism", "meths", 
"methyl", "alcohol", "methylate", "spirit", "tier", "metonymy", "metreage", 
"second", "metricate", "system", "ton", "metro", "metronome", "metropolis", 
"mettle", "mewl", "mews", "methyl", "alcohol", "methylate", "spirit", 
"tier", "metonymy", "metreage", "second", "metricate", "system", "ton", 
"metro", "metronome", "metropolis", "mettle", "mewl", "mews", "mezzanine", 
"mezzotint", "miasma", "mica", "michaelmas", "daisy", "mick", "mickey", 
"finn", "mickle", "micro", "microbe", "microchip", "microcosm", "microdot", 
"microfiche", "microlight", "micromesh", "micrometer", "micron", "organism", "microphone", 
"microscope", "microscopy", "midday", "midden", "age", "ages", "spread", 
"class", "distance", "ear", "east", "english", "game", "middleman", 
"name", "school", "midfield", "midge", "midget", "midi", "system", 
"life", "crisis", "midnight", "sun", "off", "midriff", "midshipman", 
"midsummer", "day", "madness", "midwest", "midwicket", "midwife", "midwinter", 
"mien", "miff", "been", "mightiness", "mignonette", "migraine", "migrate", 
"mikado", "mike", "mil", "milady", "cow", "mildness", "steel", 
"mile", "mileage", "miler", "milestone", "milfoil", "milieu", "militancy", 
"militarism", "militarize", "honours", "police", "militate", "militia", "honey", 
"water", "chocolate", "float", "milkmaid", "milkman", "magnesia", "powder", 
"pudding", "round", "run", "shake", "milksop", "tooth", "milkiness", 
"way", "millennium", "miller", "thumb", "millet", "grass", "milliard", 
"millibar", "milligram", "milliliter", "millilitre", "millimeter", "millimetre", "milliner", 
"million", "millipede", "millpond", "race", "millstone", "wheel", "millworker", 
"millwright", "milometer", "milord", "milt", "mimicry", "mimosa", "minaret", 
"mincer", "mincemeat", "pie", "minder", "read", "mining", "minefield", 
"minelayer", "miner", "mineral", "mineralize", "mineralogy", "water", "minestrone", 
"mineworker", "ming", "mingle", "mini", "minibus", "minicab", "minim", 
"minimalism", "minimize", "wage", "minion", "minipill", "miniseries", "miniskirt", 
"state", "crown", "portfolio", "ministry", "mink", "minnow", "minority", 
"minster", "minstrel", "sign", "steak", "minutiae", "minx", "miracle", 
"play", "mirage", "image", "mirth", "misapply", "misbehave", "justice", 
"miscarry", "miscast", "miscellany", "mischance", "mischief", "misconduct", "miscopy", 
"miscreant", "misdeed", "misdial", "misdirect", "misdoing", "miser", "misericord", 
"misery", "misfit", "misfortune", "misgive", "misgiving", "misgovern", "mishandle", 
"mishap", "mishear", "mishmash", "misinform", "misjudge", "miskey", "mislay", 
"mislead", "mismanage", "misnomer", "misogyny", "misplace", "misprision", "misquote", 
"misread", "missal", "missile", "link", "mission", "position", "missis", 
"missive", "misspell", "misspend", "misstate", "mister", "mistime", "thrush", 
"mistletoe", "mistral", "mistreat", "mistress", "mistrial", "mistiness", "misusage", 
"mitigate", "mitosis", "mitt", "bag", "blessing", "doubles", "economy", 
"farming", "feelings", "grill", "marriage", "metaphor", "mixer", "tap", 
"mixture", "mizen", "mast", "moa", "moaner", "moat", "cap", 
"mobility", "home", "mobilize", "strip", "mobster", "moccasin", "mocha", 
"mocker", "mockery", "orange", "soup", "cons", "mode", "modem", 
"moderation", "moderator", "modernity", "english", "modernism", "modernize", "modesty", 
"modicum", "modify", "modiste", "modulate", "module", "modulus", "operandi", 
"vivendi", "mog", "mogadon", "mogul", "mohair", "moiety", "moire", 
"pattern", "moisten", "moisture", "moisturize", "molasses", "molder", "molding", 
"mouldiness", "weight", "molecule", "molehill", "molest", "moll", "mollify", 
"mollusc", "mollusk", "cocktail", "molybdenum", "mom", "moment", "truth", 
"momentum", "momma", "mommy", "monad", "monarch", "monarchism", "monarchy", 
"monastery", "monetarism", "money", "moneybags", "grubber", "moneymaker", "market", 
"order", "spinner", "monger", "mongolism", "mongoose", "monism", "monk", 
"business", "nut", "puzzle", "tricks", "wrench", "monkshood", "monocle", 
"monody", "monogamy", "monogram", "monograph", "monolith", "monologue", "monomania", 
"monoplane", "monopolist", "monopolize", "monopoly", "monorail", "glutamate", "monotheism", 
"monotony", "monoxide", "monsieur", "monsignor", "monsoon", "monster", "monstrance", 
"montage", "month", "sundays", "monument", "mason", "mooch", "moodiness", 
"moonbeam", "boot", "face", "moonie", "flit", "moonscape", "moonshine", 
"moonshot", "moonstone", "moor", "moorage", "moorhen", "mooring", "moorland", 
"moose", "moped", "moquette", "moraine", "morale", "moralist", "morality", 
"play", "moralize", "law", "philosophy", "victory", "morass", "moratorium", 
"morbidity", "morello", "mores", "morgue", "mormon", "morn", "mornay", 
"morning", "after", "pill", "coat", "dress", "glory", "sickness", 
"star", "morocco", "moron", "moroseness", "morpheme", "morphia", "morphine", 
"morphology", "dance", "morrow", "morsel", "mortality", "sin", "mortgagee", 
"mortgager", "rate", "mortician", "mortify", "lock", "mosaic", "law", 
"moselle", "mosey", "mosque", "mosquito", "net", "moss", "reverend", 
"mot", "mote", "motel", "motet", "moth", "mothball", "motherhood", 
"chicken", "country", "earth", "sunday", "law", "motherland", "pearl", 
"day", "tongue", "motif", "picture", "motivate", "power", "juste", 
"cross", "bike", "boat", "motorcade", "car", "cycle", "motorist", 
"motorize", "motorman", "vehicle", "motorway", "motown", "mottle", "motto", 
"moulder", "moulding", "mouldiness", "mound", "mountain", "ash", "bike", 
"lion", "range", "sickness", "mountebank", "mountie", "mounting", "mourn", 
"mourner", "mourning", "mouser", "mousetrap", "moussaka", "mousse", "moustache", 
"mouthful", "organ", "mouthpiece", "mouthwash", "movement", "mover", "movie", 
"staircase", "mow", "mozzarella", "mrs", "mucilage", "mucker", "muckrake", 
"spreader", "mucosity", "membrane", "mucus", "mud", "muddiness", "mudflap", 
"flat", "mudguard", "pack", "slinger", "muesli", "muezzin", "muffin", 
"muffle", "muffler", "mufti", "mugger", "muggins", "mugginess", "shot", 
"muhammadan", "mujahidin", "mulatto", "mulberry", "muleteer", "mullah", "mullet", 
"mullion", "sign", "table", "multiplier", "multiply", "multitude", "jumbo", 
"mummer", "mummery", "mummify", "mumps", "munch", "mundanity", "mung", 
"muniment", "munition", "muon", "murk", "murkiness", "law", "murrain", 
"muscadet", "muscat", "muscatel", "man", "duck", "dystrophy", "museum", 
"piece", "mush", "cloud", "mushiness", "music", "musicality", "box", 
"chairs", "centre", "hall", "musician", "musicology", "stand", "stool", 
"musk", "deer", "musket", "musketeer", "musketry", "muskrat", "rose", 
"muslin", "musquash", "mussel", "mustache", "mustang", "mustard", "gas", 
"mustiness", "mutability", "mutagen", "mutate", "mutation", "muteness", "button", 
"swan", "mutilate", "mutineer", "mutt", "mutton", "lamb", "head", 
"mutuality", "muzak", "muzziness", "myalgia", "mycology", "myna", "myopia", 
"myrrh", "myrtle", "mystery", "play", "tour", "mysticism", "mystify", 
"mystique", "myth", "mythology", "also", "also", "nab", "nacho", 
"nacre", "nadir", "naevus", "naiad", "file", "polish", "vety", 
"nakedness", "eye", "day", "dropping", "plate", "namesake", "nan", 
"nancy", "nanny", "nape", "naphtha", "napkin", "nappy", "narcissism", 
"narcissus", "narcosis", "narrate", "narrowness", "boat", "mindedness", "narwhal", 
"nasalize", "nascency", "nasturtium", "nastiness", "work", "nation", "anthem", 
"curriculum", "debt", "front", "grid", "health", "insurance", "park", 
"service", "nativity", "natterjack", "gas", "history", "naturalism", "naturalist", 
"naturalize", "law", "number", "resources", "science", "selection", "nature", 
"reserve", "trail", "naturism", "nausea", "nauseate", "mile", "nautilus", 
"navel", "orange", "navigate", "navigation", "navy", "nazism", "neap", 
"nearness", "east", "miss", "nearside", "thing", "neatness", "neaten", 
"nebula", "necessity", "neckband", "necklace", "neckline", "necktie", "necromancy", 
"necropolis", "necrosis", "nectar", "nectarine", "neddy", "needlecord", "point", 
"needlework", "neediness", "wrong", "negate", "negation", "negativity", "negativism", 
"negligence", "negotiate", "negress", "negritude", "watch", "nelson", "nematode", 
"nemesis", "neodymium", "neologism", "neon", "neophyte", "nephew", "nephritis", 
"ultra", "nepotism", "neptunium", "nerd", "nereid", "cell", "centre", 
"gas", "breakdown", "system", "nescience", "egg", "nestle", "nestling", 
"netball", "regions", "profit", "netting", "rash", "neuralgia", "neuritis", 
"neurology", "neuron", "neurosis", "neutrality", "neutralize", "neutrino", "neutron", 
"bomb", "never", "nevus", "newness", "age", "arrival", "broom", 
"newcomer", "newel", "wed", "moon", "potatoes", "news", "newsagent", 
"newscast", "newscaster", "conference", "newsflash", "newsletter", "newspaper", "newspeak", 
"newsprint", "newsreader", "newsreel", "room", "sheet", "stand", "star", 
"style", "vendor", "newt", "testament", "newton", "town", "wave", 
"world", "year", "day", "eve", "kin", "world", "nexus", 
"niacin", "nib", "nibs", "niceness", "nicety", "niche", "nickel", 
"silver", "steel", "nicker", "nicotine", "acid", "nictitate", "membrane", 
"niece", "niff", "niggard", "nigger", "niggle", "night", "nightbird", 
"nightcap", "nightclub", "nightdress", "nightfall", "nightgown", "nightie", "nightjar", 
"life", "light", "nightmare", "safe", "school", "nightshade", "nightshirt", 
"nightspot", "time", "watchman", "nihilism", "index", "nil", "nimbus", 
"nincompoop", "wonder", "ninepin", "ninny", "niobium", "nip", "nipper", 
"nipple", "nirvana", "hut", "nit", "niter", "picking", "nitration", 
"nitre", "acid", "nitride", "nitrify", "nitrite", "nitrogen", "oxide", 
"gritty", "nitwit", "ball", "nobble", "nobelium", "prize", "nobility", 
"nobleness", "gas", "nobleman", "oblige", "noblewoman", "bonus", "nocturne", 
"noddle", "noddy", "node", "nodule", "noel", "noggin", "noh", 
"noisiness", "nomad", "land", "plume", "nomen", "nominalism", "value", 
"nominate", "nominee", "aggression", "nonagon", "alignment", "nonce", "word", 
"com", "combatant", "conductor", "drinker", "driver", "nonentity", "nones", 
"event", "fiction", "member", "observance", "payment", "nonplus", "resistance", 
"nonsense", "sequitur", "smoker", "specialist", "starter", "swimmer", "violence", 
"nook", "noon", "noonday", "one", "jacket", "norm", "normalcy", 
"normalize", "conquest", "french", "norn", "norseman", "country", "east", 
"northerner", "hemisphere", "lights", "northman", "east", "west", "pole", 
"star", "west", "wester", "nosebag", "noseband", "nosebleed", "nosegay", 
"nostalgia", "nostril", "nostrum", "nosiness", "parker", "notability", "notary", 
"notation", "notebook", "notecase", "notelet", "notepaper", "board", "notify", 
"notion", "notoriety", "nougat", "nought", "crosses", "noun", "nourish", 
"nous", "riche", "cuisine", "nova", "novelette", "novelist", "novella", 
"novelty", "november", "novena", "novice", "noviciate", "nowt", "nozzle", 
"nuance", "nub", "nubility", "bomb", "energy", "family", "fission", 
"fuel", "fusion", "physics", "power", "reactor", "weapon", "acid", 
"nucleon", "nucleus", "nudity", "nudist", "nugget", "nuisance", "nullity", 
"nullify", "numbness", "crunching", "plate", "numeracy", "numeration", "numerator", 
"numerology", "numskull", "nun", "nuncio", "nunnery", "nursemaid", "nursery", 
"nurseryman", "rhyme", "school", "slopes", "home", "nursling", "nut", 
"nutcase", "nutcracker", "nuthatch", "nutmeg", "nutria", "nutriment", "nutrition", 
"bolts", "nutshell", "nutter", "nuttiness", "vomica", "nuzzle", "nylon", 
"nymph", "nympho", "oaf", "oak", "apple", "oakum", "oar", 
"oarsman", "oasis", "oast", "house", "oat", "oatcake", "oath", 
"oatmeal", "obbligato", "obduracy", "obedience", "obeisance", "obelisk", "obelus", 
"obesity", "obey", "obfuscate", "obituary", "objector", "objectify", "objection", 
"lesson", "art", "oblation", "obligate", "obligation", "oblige", "obliterate", 
"oblivion", "obloquy", "oboe", "obscenity", "obscurity", "obsequies", "observance", 
"observe", "observer", "obsess", "obsession", "obsidian", "obstacle", "obstetrics", 
"obstinacy", "obstruct", "obtain", "obtrude", "obtuseness", "obverse", "obviate", 
"ocarina", "table", "occident", "occiput", "occlude", "occupant", "occupation", 
"therapy", "occupier", "occupy", "occur", "occurrence", "ocean", "ocelot", 
"ocher", "ochre", "octagon", "octahedron", "octane", "number", "octave", 
"octavo", "octet", "october", "octopus", "oculist", "oddness", "oddball", 
"oddity", "out", "oddment", "odds", "ends", "ode", "odiousness", 
"odium", "odometer", "odor", "odour", "odyssey", "oedema", "complex", 
"oesophagus", "oestrogen", "oestrus", "uvre", "offal", "chance", "offcut", 
"day", "offence", "offend", "offense", "offering", "offertory", "office", 
"officer", "secrets", "officiate", "offing", "licence", "offload", "offprint", 
"season", "offshoot", "offspring", "ogee", "ogive", "ogre", "ohm", 
"oilcake", "oilcan", "oilcloth", "oilfield", "turpentine", "paint", "rig", 
"oilskin", "slick", "oilstone", "well", "oiliness", "ointment", "okapi", 
"okra", "oldness", "age", "pension", "bill", "boy", "network", 
"country", "girl", "glory", "guard", "hand", "oldie", "lady", 
"maid", "man", "beard", "master", "nick", "norse", "school", 
"tie", "soldier", "style", "testament", "tale", "woman", "world", 
"year", "oleander", "level", "oligarch", "oligarchy", "branch", "oil", 
"olivine", "olympiad", "games", "ombudsman", "omega", "omelette", "omicron", 
"omission", "omit", "omnivore", "onanism", "over", "oncogene", "oncology", 
"bandit", "race", "liner", "oneness", "stand", "sidedness", "worth", 
"mind", "upmanship", "onion", "onlooker", "onrush", "onset", "onslaught", 
"ontology", "onus", "onyx", "oodles", "oolite", "oompah", "oomph", 
"opacity", "opal", "opaqueness", "art", "openness", "air", "book", 
"college", "day", "opener", "surgery", "house", "time", "letter", 
"prison", "question", "sandwich", "sea", "secret", "society", "university", 
"verdict", "openwork", "glasses", "house", "operate", "operatics", "system", 
"theatre", "operation", "research", "research", "operator", "operculum", "operetta", 
"ophthalmia", "optician", "opine", "opinion", "poll", "opium", "opossum", 
"opponent", "oppose", "number", "sex", "opposition", "oppress", "opprobrium", 
"oppugn", "opt", "art", "fibre", "illusion", "optician", "optics", 
"optimism", "optimize", "option", "extra", "opulence", "opus", "oracle", 
"orangeade", "orangeman", "orangery", "utan", "oration", "orator", "oratorio", 
"oratory", "orb", "orbiter", "orca", "orchard", "orchestra", "orchid", 
"ordain", "ordeal", "council", "room", "day", "paper", "ordinal", 
"ordinance", "ordinand", "level", "seaman", "ordinate", "ordination", "ordnance", 
"survey", "ordure", "ore", "oregano", "organ", "organdie", "grinder", 
"chemistry", "organism", "organist", "organize", "loft", "organza", "orgy", 
"oriel", "orientate", "orifice", "origami", "origan", "origin", "sin", 
"originate", "oriole", "ormolu", "ornateness", "orphanage", "orrery", "orris", 
"root", "orthodoxy", "church", "ortolan", "oscar", "oscillate", "osier", 
"osmium", "osmosis", "osprey", "ossicle", "ossify", "osteopathy", "ostler", 
"ostracize", "ostrich", "day", "half", "woman", "otter", "oubliette", 
"ought", "ouija", "ounce", "father", "lady", "lord", "oust", 
"outage", "outback", "outbalance", "outbid", "motor", "outbreak", "outburst", 
"outclass", "outcome", "outcrop", "outcry", "outdo", "space", "outface", 
"outfall", "outfield", "outfit", "outfitter", "outflank", "outflow", "outfox", 
"outgrow", "outgrowth", "outhouse", "outing", "outlast", "outlay", "outlet", 
"outlive", "outlook", "outmatch", "outnumber", "outpace", "outpatient", "outpost", 
"outpouring", "outrank", "outrider", "outrigger", "outrun", "outsell", "outset", 
"outshine", "broadcast", "interest", "outsider", "world", "outskirts", "outsmart", 
"outstation", "outstay", "outstrip", "take", "tray", "outvote", "outweigh", 
"outwit", "outwork", "ouzel", "ouzo", "ovary", "ovation", "oven", 
"ovenware", "abundance", "overact", "overawe", "overbear", "overbook", "overburden", 
"overcharge", "overcoat", "overcome", "overcook", "overcrowd", "overdo", "overdose", 
"overdraft", "overdraw", "overdress", "overdrive", "overeat", "overexcite", "overexert", 
"overexpose", "overfeed", "overfill", "overfish", "overfly", "overgrowth", "projector", 
"overhear", "overheat", "overkill", "overlie", "overlook", "overlord", "overman", 
"overpass", "overpay", "overplay", "overpower", "overprice", "overrate", "overreach", 
"overreact", "overrider", "overrule", "overrun", "oversee", "oversew", "overshadow", 
"overshoe", "overshoot", "oversight", "oversleep", "overspend", "overspill", "overspread", 
"overstate", "overstay", "overstep", "overstock", "overstrain", "overtake", "overtax", 
"overtone", "overture", "overturn", "overview", "overwhelm", "overwind", "oviduct", 
"ovulate", "ovule", "ovum", "owe", "owl", "owlet", "brand", 
"owner", "occupier", "goal", "owt", "acid", "oxbow", "oxbridge", 
"daisy", "oxhide", "oxidation", "oxide", "oxidize", "oxtail", "oxygen", 
"oxygenate", "tent", "oxymoron", "catcher", "ozone", "layer", "pabulum", 
"bowler", "pacemaker", "setter", "pachyderm", "pacifier", "pacifism", "pacify", 
"packager", "holiday", "packaging", "lunch", "packer", "packet", "packhorse", 
"ice", "packing", "packthread", "pact", "cell", "padding", "boat", 
"wheel", "paddock", "paddy", "padre", "paean", "paedophile", "paella", 
"paganism", "pageant", "pageantry", "boy", "pager", "paginate", "pagoda", 
"pail", "painkiller", "paintbox", "paintbrush", "lady", "painting", "shop", 
"paintwork", "scales", "paisley", "pajamas", "paki", "palace", "revolution", 
"palais", "palanquin", "palate", "palatinate", "palaver", "paleness", "paleface", 
"palette", "knife", "palimony", "palimpsest", "palindrome", "paling", "palladium", 
"pallbearer", "palliasse", "palliate", "pallor", "palmetto", "palmistry", "oil", 
"sunday", "palomino", "palpate", "palpitate", "paltriness", "pampas", "grass", 
"pamper", "panful", "panacea", "panache", "panama", "panatella", "pancake", 
"day", "landing", "pancreas", "panda", "car", "box", "pane", 
"panegyric", "beater", "game", "paneling", "panelist", "panelling", "panellist", 
"pang", "pangolin", "panicle", "stations", "panjandrum", "pannier", "panoply", 
"panorama", "pipes", "pansy", "pantaloons", "pantheism", "pantheon", "panther", 
"girdle", "panties", "pantihose", "pantile", "panto", "pantograph", "pantomime", 
"pantry", "pants", "papa", "papacy", "paparazzo", "paperback", "boy", 
"chase", "clip", "hanger", "knife", "mill", "money", "round", 
"tiger", "paperwork", "papilla", "papist", "papoose", "paprika", "test", 
"papyrus", "par", "para", "parable", "parabola", "ground", "paradiddle", 
"paradigm", "paradise", "paradox", "paraffin", "wax", "paragon", "parakeet", 
"parallax", "bars", "paralyse", "paralysis", "paralyze", "paramedic", "parameter", 
"paramour", "paranoia", "parapet", "paraplegia", "paraquat", "parasite", "parasol", 
"paratroops", "parboil", "parch", "parchment", "pare", "parenthood", "parentage", 
"company", "parenting", "parfait", "pariah", "bone", "paring", "parish", 
"clerk", "council", "register", "parity", "parka", "parkin", "lot", 
"meter", "ticket", "disease", "law", "parkland", "parlance", "parliament", 
"parlor", "parlour", "game", "parmesan", "parodist", "paroxysm", "parquetry", 
"parr", "parricide", "parse", "parsec", "parsimony", "parsley", "parsnip", 
"parson", "parsonage", "nose", "partake", "parterre", "shot", "partiality", 
"eclipse", "participle", "particle", "parting", "shot", "speech", "partridge", 
"song", "timer", "line", "wall", "parvenu", "pas", "pascal", 
"deux", "pash", "pasha", "doble", "flower", "passage", "passageway", 
"passbook", "passenger", "passion", "flower", "fruit", "play", "sunday", 
"passivity", "resistance", "smoking", "passkey", "passmark", "passover", "passport", 
"password", "pasta", "pasting", "pasteboard", "pastel", "pastern", "pasteurize", 
"pastiche", "pastille", "pastime", "master", "pastor", "pastorale", "pastorate", 
"pastrami", "pastry", "cook", "pasturage", "pastiness", "patchboard", "patchouli", 
"pocket", "test", "patchwork", "patchiness", "pate", "gras", "patella", 
"paten", "patentee", "leather", "medicine", "office", "pater", "paternity", 
"suit", "path", "fallacy", "pathfinder", "pathogen", "pathology", "pathos", 
"pathway", "patience", "patina", "patio", "patisserie", "rice", "patois", 
"patriarch", "patriarchy", "patricide", "patrimony", "patriot", "car", "patron", 
"patronage", "patronize", "saint", "patronymic", "patten", "patty", "paucity", 
"paunch", "pauper", "pavane", "pave", "pavement", "artist", "pavilion", 
"stone", "pavlova", "pawl", "pawnbroker", "pawnshop", "pawpaw", "pax", 
"payee", "earn", "bed", "claim", "day", "guest", "payload", 
"paymaster", "payment", "off", "payola", "packet", "phone", "payroll", 
"pea", "peace", "dividend", "peacemaker", "offering", "pipe", "peacetime", 
"melba", "peacock", "butterfly", "peafowl", "peahen", "load", "pean", 
"peanut", "butter", "pear", "barley", "bulb", "button", "diver", 
"gates", "king", "peasant", "pease", "pudding", "peashooter", "souper", 
"peat", "peatbog", "pebble", "dash", "pecan", "peccadillo", "pecker", 
"order", "pectin", "peculate", "pedagogue", "pedagogy", "pedalo", "pedant", 
"peddle", "peddler", "pederast", "pederasty", "pedestal", "crossing", "pediatrics", 
"pedicure", "pedigree", "pediment", "pedlar", "pedometer", "pedophile", "pedophilia", 
"peduncle", "peeler", "peeling", "peen", "hole", "tom", "show", 
"peerage", "group", "realm", "peewit", "pegboard", "leg", "peke", 
"pekingese", "pelf", "pelican", "crossing", "pelisse", "pellagra", "pellet", 
"pellicle", "pelmet", "pelvis", "penalize", "penalty", "area", "kick", 
"penance", "penchant", "pendant", "pendency", "pendulum", "penetrate", "friend", 
"penguin", "penicillin", "peninsula", "penis", "penitence", "penknife", "name", 
"pennant", "pennon", "penny", "black", "farthing", "pincher", "pennyroyal", 
"whistle", "pennywort", "pennyworth", "penology", "pal", "pushing", "pensioner", 
"pentacle", "pentagon", "pentagram", "pentameter", "pentateuch", "pentathlon", "pentecost", 
"penthouse", "penumbra", "penury", "peon", "peony", "peppercorn", "mill", 
"peppermint", "pepperoni", "pot", "pill", "pepsin", "talk", "ulcer", 
"peptide", "percale", "perceive", "percentage", "percentile", "perception", "percolate", 
"percolator", "percussion", "cap", "perdition", "peregrine", "perfection", "pitch", 
"perfidy", "perforate", "perform", "arts", "perfumer", "pergola", "perianth", 
"perigee", "perihelion", "peril", "perimeter", "perineum", "table", "system", 
"periphery", "periscope", "perish", "perisher", "peritoneum", "periwig", "perjure", 
"perjury", "perkiness", "perlite", "permafrost", "permanence", "wave", "permeate", 
"permission", "anaemia", "peroration", "perpetrate", "motion", "perpetuate", "perpetuity", 
"perplex", "perplexity", "perquisite", "perry", "persecute", "persevere", "lamb", 
"persiflage", "persimmon", "persist", "person", "persona", "personage", "grata", 
"column", "computer", "plan", "organizer", "pronoun", "property", "stereo", 
"grata", "personify", "personnel", "department", "perspex", "perspire", "persuade", 
"persuasion", "pertness", "pertain", "pertinence", "perturb", "peruke", "peruse", 
"pervade", "perversity", "perversion", "peseta", "peso", "pessary", "pessimism", 
"pest", "pester", "pesticide", "pestilence", "pestle", "petal", "petard", 
"peter", "pan", "petersham", "pethidine", "petiole", "bourgeois", "four", 
"mal", "point", "petrel", "dish", "petrify", "petrol", "petroleum", 
"jelly", "shop", "petticoat", "pettifog", "pettiness", "cash", "officer", 
"petulance", "petunia", "pew", "pewter", "peyote", "pfennig", "phagocyte", 
"phalanx", "phallus", "phantasm", "pharaoh", "pharisee", "pharmacist", "pharmacy", 
"pharynx", "pheasant", "phenol", "phenomenon", "pheromone", "phi", "phial", 
"philander", "philately", "philippic", "phillips", "philology", "stone", "philosophy", 
"philter", "philtre", "phlebitis", "phlegm", "phloem", "phlox", "phobia", 
"phoenix", "phone", "book", "phonecard", "phoneme", "phonetics", "phoniness", 
"phonograph", "phonology", "phosphate", "phosphor", "phosphorus", "photo", "cell", 
"finish", "photofit", "photometer", "photon", "book", "phrenology", "phut", 
"phylactery", "phylum", "physic", "chemistry", "geography", "jerks", "science", 
"physician", "physicist", "physics", "physio", "physiology", "physique", "mater", 
"pianist", "accordion", "pianoforte", "pianola", "piazza", "pibroch", "pica", 
"picador", "piccalilli", "piccaninny", "piccolo", "picker", "pickaninny", "pickax", 
"pickaxe", "line", "pickings", "pickpocket", "pict", "pictograph", "postcard", 
"window", "piddle", "pidgin", "english", "sistance", "work", "chart", 
"piecrust", "terre", "sky", "pier", "pierce", "glass", "pierrot", 
"pietism", "piety", "pigeon", "piggery", "bank", "iron", "piglet", 
"pigskin", "pigsty", "pigswill", "pigtail", "pike", "pikestaff", "pilaster", 
"pilau", "pilchard", "driver", "piles", "pilfer", "pilgrim", "pilgrimage", 
"fathers", "pill", "pillar", "box", "pillbox", "pillion", "pillowcase", 
"light", "officer", "pimento", "pimiento", "pimpernel", "pimple", "colada", 
"pinafore", "pinball", "nez", "movement", "pincers", "pincushion", "body", 
"pineapple", "cone", "nut", "pong", "pinhead", "pinhole", "camera", 
"pinkness", "gin", "shears", "money", "pinnace", "pinnacle", "pinny", 
"pinprick", "needles", "pinstripe", "pint", "pinta", "table", "pintail", 
"pintle", "tuck", "wheel", "pinyin", "pion", "piousness", "pipeful", 
"pipeclay", "cleaner", "pipedream", "pipeline", "piper", "pipette", "piping", 
"pipit", "pippin", "pipsqueak", "piquancy", "piquet", "piracy", "piranha", 
"pisces", "piscina", "artist", "taking", "pistachio", "piste", "pistil", 
"pistol", "piston", "ring", "rod", "terrier", "battle", "roof", 
"pine", "pitfall", "pith", "head", "helmet", "pithiness", "stomach", 
"piton", "pitta", "pittance", "pituitary", "pixel", "pixie", "pizza", 
"pizzeria", "placate", "placement", "placebo", "kick", "mat", "name", 
"placenta", "placer", "setting", "placidity", "placket", "plagiarize", "plaice", 
"plaid", "plainness", "plainchant", "chocolate", "clothes", "dealing", "flour", 
"sailing", "plainsong", "plaint", "plaintiff", "planning", "planchette", "planet", 
"planking", "plankton", "planner", "permission", "plantation", "planter", "plaque", 
"plasma", "plasterer", "cast", "paris", "plasticity", "arts", "bomb", 
"explosive", "plasticine", "surgery", "plateful", "glass", "platelayer", "platelet", 
"platen", "rack", "tectonics", "platform", "platinum", "platitude", "platonism", 
"platoon", "platter", "platypus", "plaudit", "act", "back", "playbill", 
"playboy", "player", "playfellow", "playgoer", "playground", "playgroup", "playhouse", 
"card", "field", "playlet", "playmate", "off", "words", "pen", 
"school", "plaything", "playtime", "playwright", "plea", "pleach", "plead", 
"pleading", "pleasantry", "please", "pleasure", "pleb", "plebiscite", "plectrum", 
"pleiades", "plenitude", "plenum", "pleonasm", "plethora", "pleura", "pleurisy", 
"plexus", "pliability", "pliancy", "pliers", "plimsoll", "line", "plinth", 
"plodder", "plonker", "plotter", "ploughman", "lunch", "plover", "plowman", 
"plowshare", "ploy", "pluckiness", "hole", "plum", "plumage", "plumber", 
"plumbing", "line", "plumpness", "pudding", "plunger", "pluralism", "plurality", 
"pluralize", "fours", "plushness", "plushiness", "pluto", "plutocracy", "plutocrat", 
"plutonium", "brethren", "plywood", "pneumonia", "poacher", "poacher", "pock", 
"pocketbook", "pocketful", "knife", "money", "podginess", "podium", "poem", 
"poesy", "poet", "poetaster", "justice", "licence", "laureate", "poetry", 
"pogo", "pogrom", "poignance", "poinsettia", "duty", "pointer", "pointing", 
"honour", "return", "order", "view", "point", "poisoner", "ivy", 
"letter", "face", "pokiness", "bear", "circle", "polarity", "polarize", 
"polaroid", "polder", "pole", "polecat", "polemicist", "star", "vaulter", 
"dog", "force", "policeman", "officer", "state", "station", "polio", 
"politeness", "asylum", "economy", "geography", "prisoner", "science", "politician", 
"politicize", "politico", "politics", "polity", "dot", "pollack", "pollen", 
"count", "pollinate", "polling", "booth", "day", "station", "pollster", 
"tax", "pollute", "polo", "polonaise", "neck", "polonium", "poltroon", 
"poly", "polyandry", "polyanthus", "polyester", "polyethene", "polygamy", "polygon", 
"polygraph", "polygyny", "polyhedron", "polymath", "polymer", "polyp", "polyphony", 
"polytheism", "polythene", "chloride", "pom", "pomace", "pomade", "pomander", 
"pomelo", "pommy", "pomp", "pom", "pompon", "pompous", "poncho", 
"pond", "ponder", "pondweed", "pong", "poniard", "pontiff", "pony", 
"tail", "trekking", "poodle", "poof", "pooh", "pools", "poop", 
"poorhouse", "law", "relation", "art", "popcorn", "culture", "pope", 
"popery", "popgun", "popinjay", "poplar", "poplin", "poppadam", "popper", 
"poppet", "crease", "poppy", "poppycock", "day", "populace", "popularity", 
"front", "popularize", "music", "populate", "population", "explosion", "populist", 
"porcelain", "porch", "porcupine", "pork", "porker", "pie", "hat", 
"porosity", "porphyry", "porpoise", "porridge", "porringer", "portakabin", "portal", 
"portcullis", "portend", "portent", "porterage", "steak", "portfolio", "porthole", 
"portico", "cement", "stone", "word", "call", "portrait", "portray", 
"war", "poser", "poseur", "poshness", "posit", "vetting", "positivism", 
"positron", "posse", "possess", "possession", "possum", "postage", "stamp", 
"code", "order", "postbag", "postbox", "postcard", "postcode", "postdate", 
"poster", "restante", "posterity", "postern", "paint", "postilion", "postman", 
"postmaster", "modernism", "office", "box", "postpone", "postscript", "postulant", 
"posy", "potful", "potage", "potash", "potassium", "potation", "potato", 
"crisp", "belly", "boiler", "poteen", "potency", "potentate", "difference", 
"pother", "herb", "pothole", "hook", "hunter", "potion", "luck", 
"plant", "pourri", "roast", "potsherd", "shot", "pottage", "wheel", 
"pottery", "shed", "pottiness", "pouffe", "poult", "poulterer", "poultry", 
"poundage", "coin", "pounder", "flesh", "pour", "pourboire", "pouter", 
"poverty", "line", "trap", "puff", "room", "powerboat", "cut", 
"powerhouse", "line", "attorney", "powerplant", "point", "sharing", "station", 
"among", "pox", "joke", "practise", "praenomen", "praetor", "guard", 
"pragmatism", "prairie", "dog", "oyster", "wolf", "praline", "pram", 
"prank", "prankster", "prat", "prawn", "pray", "book", "mat", 
"wheel", "preach", "preamble", "amp", "prearrange", "prebend", "prebendary", 
"precaution", "precede", "precedence", "precentor", "precept", "preceptor", "precession", 
"equinoxes", "precinct", "preciosity", "metals", "stone", "precipice", "precision", 
"preclude", "precursor", "predate", "predator", "predecease", "predestine", "predict", 
"prediction", "predispose", "echo", "embryo", "eminence", "empt", "emption", 
"preen", "prefab", "prefect", "prefecture", "prefer", "preference", "shares", 
"preferment", "prefigure", "pregnancy", "preheat", "prehistory", "prejudge", "prelacy", 
"prelate", "prelim", "premed", "premise", "premiss", "premium", "bond", 
"premolar", "preoccupy", "preordain", "prep", "prepack", "school", "prepare", 
"prepay", "preplan", "prepossess", "preppy", "prepuce", "record", "presbyopia", 
"presbyter", "presbytery", "prescience", "prescribe", "prescript", "presence", "mind", 
"presenter", "set", "preside", "presidency", "president", "presidium", "agent", 
"conference", "gallery", "pressie", "release", "stud", "cooker", "group", 
"point", "pressurize", "reactor", "prestel", "prestige", "presume", "presuppose", 
"pretence", "pretender", "pretense", "pretension", "pretext", "prettify", "prettiness", 
"pretzel", "prevail", "prevalence", "prevent", "fixing", "tag", "war", 
"heat", "pear", "place", "dieu", "priest", "prig", "primness", 
"ballerina", "primacy", "donna", "feather", "school", "primate", "minister", 
"time", "primp", "primrose", "path", "primula", "primus", "prince", 
"consort", "princeling", "wales", "regent", "princess", "royal", "boy", 
"parts", "principle", "prink", "circuit", "printer", "printing", "press", 
"printout", "priority", "priory", "prise", "prism", "prison", "prisoner", 
"prissiness", "privacy", "bill", "company", "detective", "enterprise", "privateer", 
"eye", "hotel", "means", "member", "bill", "parts", "sector", 
"soldier", "view", "privation", "privatize", "privet", "council", "purse", 
"seal", "prizefight", "giving", "probate", "probation", "officer", "probity", 
"problem", "proboscis", "monkey", "procedure", "proceed", "proceeding", "proceeds", 
"procession", "processor", "proclaim", "proclivity", "procreate", "proctor", "procurator", 
"fiscal", "procure", "procurer", "prodigy", "producer", "product", "production", 
"line", "proem", "profanity", "profess", "profession", "professor", "proffer", 
"account", "margin", "sharing", "profligacy", "profusion", "progenitor", "progeny", 
"prognosis", "programmer", "programmer", "prohibit", "projection", "projector", "prokaryote", 
"prolactin", "prolixity", "prologue", "prolong", "prom", "concert", "deck", 
"promenader", "promethium", "prominence", "land", "note", "promo", "promontory", 
"promote", "promoter", "prompter", "promulgate", "proneness", "prong", "pronoun", 
"pronounce", "proofread", "propaganda", "propagate", "propagator", "propane", "propanone", 
"propel", "propeller", "propene", "propensity", "fraction", "noun", "property", 
"prophecy", "prophesy", "prophet", "propitiate", "proponent", "proposal", "propose", 
"propound", "medicine", "name", "proprietor", "propriety", "propulsion", "propylene", 
"prorogue", "cons", "proscenium", "proscribe", "prosecute", "proselyte", "poem", 
"prosody", "prospector", "prospectus", "prosper", "prosperity", "prostate", "prosthesis", 
"prosiness", "protect", "protection", "custody", "protector", "protein", "protester", 
"protium", "proton", "protoplasm", "prototype", "protract", "protractor", "protrude", 
"prove", "provenance", "provender", "proverb", "provide", "providence", "society", 
"province", "proviso", "provo", "provoke", "provost", "marshal", "prow", 
"prowess", "prowler", "proximity", "proxy", "prude", "prudence", "prurience", 
"blue", "acid", "pry", "psalm", "psalmist", "psalmody", "psalter", 
"psaltery", "psephology", "pseudonym", "psoriasis", "psych", "psyche", "psychiatry", 
"block", "moment", "warfare", "psychology", "psychopath", "psychosis", "ptarmigan", 
"pterosaur", "system", "ptomaine", "pub", "crawl", "puberty", "pubescence", 
"pubis", "system", "publican", "bar", "company", "enemy", "figure", 
"health", "house", "publicist", "publicity", "publicize", "right", "opinion", 
"ownership", "prosecutor", "officer", "relations", "school", "sector", "servant", 
"spirit", "transport", "utility", "works", "publish", "publisher", "pud", 
"pudding", "pudendum", "pudginess", "puerility", "fever", "adder", "puffball", 
"puffin", "pastry", "puffiness", "pug", "pugilist", "pugnacity", "nose", 
"puissance", "puke", "pule", "pullet", "pulley", "pullman", "out", 
"pullover", "pullulate", "pulpiness", "pulpit", "pulpwood", "pulsar", "pulsate", 
"pulverize", "puma", "pumice", "pummel", "pumpkin", "puncher", "punchball", 
"bowl", "card", "line", "punctilio", "punctuate", "mark", "pundit", 
"pungency", "punish", "punishment", "punk", "punkah", "punnet", "punster", 
"punter", "punter", "pupa", "puppet", "state", "puppy", "fat", 
"love", "purchaser", "purdah", "pureness", "purify", "purist", "puritanism", 
"purity", "purler", "purlieu", "purlin", "purloin", "heart", "passage", 
"purser", "pursuance", "pursue", "pursuit", "pursuivant", "purulence", "purvey", 
"purview", "pus", "button", "pushchair", "pusher", "pushover", "pushtu", 
"pushiness", "puss", "pussy", "pussyfoot", "willow", "pustulate", "pustule", 
"down", "putrefy", "putridity", "putsch", "puttee", "green", "job", 
"puzzlement", "puzzler", "pyaemia", "pyemia", "pygmy", "pyjamas", "pylon", 
"pyorrhea", "pyorrhoea", "pyracantha", "pyramid", "selling", "pyre", "pyrethrum", 
"pyrex", "pyrexia", "pyrites", "pyromania", "theorem", "python", "pyx", 
"quackery", "quadrangle", "quadrant", "quadriceps", "quadrille", "quadruped", "quadruplet", 
"quaff", "quagmire", "quaintness", "quaker", "qualify", "quality", "control", 
"qualm", "quandary", "quango", "quantify", "quantity", "surveyor", "quantum", 
"jump", "mechanics", "tile", "quart", "day", "final", "hour", 
"light", "sessions", "quartet", "quarto", "quartz", "clock", "quasar", 
"quash", "quatrain", "quatrefoil", "quay", "quayside", "queasiness", "anne", 
"bee", "mother", "may", "post", "rules", "counsel", "english", 
"guide", "highway", "proctor", "scout", "quell", "quench", "quern", 
"mark", "master", "time", "jump", "quiche", "quicken", "freeze", 
"quickie", "quicklime", "one", "quicksand", "quickstep", "wittedness", "quiddity", 
"quo", "quiescence", "quieten", "quietism", "quietude", "quietus", "quiff", 
"quill", "quilter", "quim", "quin", "quince", "quincunx", "quinine", 
"quintet", "quintuplet", "quire", "quirk", "quisling", "quitch", "quitter", 
"quod", "quoin", "quoit", "quorum", "quota", "quotation", "marks", 
"quoth", "quotient", "rabbi", "punch", "rabble", "rouser", "rabidity", 
"rabies", "racecourse", "racegoer", "racehorse", "raceme", "meeting", "relations", 
"riot", "racetrack", "racialism", "car", "driver", "racism", "racketeer", 
"rent", "raconteur", "racoon", "raciness", "rad", "radar", "trap", 
"radian", "radiance", "heat", "radiation", "sickness", "radiator", "radicalism", 
"radicchio", "radicle", "frequency", "radiogram", "radiology", "radioscopy", "telegraphy", 
"telephony", "telescope", "radish", "radium", "radius", "radix", "radon", 
"raffia", "raft", "rafter", "ragamuffin", "man", "bag", "doll", 
"robin", "ragout", "ragtag", "ragtime", "trade", "ragwort", "raider", 
"railcar", "railcard", "railing", "raillery", "railman", "railway", "railwayman", 
"raiment", "trout", "check", "raincoat", "raindrop", "rainfall", "rainforest", 
"rainstorm", "rainwater", "rainwear", "day", "raisin", "tre", "raj", 
"raja", "off", "rallycross", "ramadan", "rambler", "rambutan", "ramekin", 
"ramify", "rampancy", "rampart", "ramrod", "rancher", "rancidity", "rancor", 
"rancour", "rand", "randomize", "randiness", "ranee", "ranger", "file", 
"rankle", "ransack", "ranunculus", "rapper", "rapacity", "rapidity", "movement", 
"rapier", "rapine", "rapist", "rapport", "rapture", "rareness", "rarebit", 
"earth", "rarefy", "rarity", "rascal", "rashness", "rasher", "raspberry", 
"cane", "ratbag", "ratchet", "value", "capping", "ratepayer", "ratify", 
"rating", "ratio", "rationale", "ratline", "race", "ratsbane", "rattan", 
"tat", "rattiness", "ravel", "raver", "ravine", "ravioli", "ravish", 
"deal", "rawhide", "rawlplug", "material", "rayon", "raze", "razor", 
"bill", "blade", "edge", "dazzle", "razzmatazz", "down", "reacquaint", 
"react", "reaction", "reactivate", "reactor", "readdress", "reader", "readership", 
"readiness", "reading", "readjust", "readmit", "readopt", "money", "reckoner", 
"reaffirm", "reafforest", "reagent", "ale", "realign", "realism", "reality", 
"realize", "life", "reallocate", "realm", "money", "tennis", "time", 
"realty", "ream", "reanimate", "reap", "reaper", "reappear", "reapply", 
"reappoint", "reappraise", "admiral", "rearguard", "action", "lamp", "rearm", 
"rearrange", "reassemble", "reassert", "reassess", "reassign", "reassure", "reawaken", 
"rebellion", "rebind", "rebirth", "reboot", "rebuild", "rebus", "rebut", 
"rec", "recant", "recede", "receive", "receiver", "receptacle", "reception", 
"room", "recession", "rechristen", "recidivist", "recipe", "recipient", "recital", 
"recitation", "recitative", "recite", "reckon", "reckoning", "reclaim", "reclassify", 
"recline", "reclothe", "recluse", "recognize", "recollect", "recolour", "recombine", 
"recommence", "recommend", "reconcile", "reconnect", "reconquer", "reconsider", "reconvene", 
"reconvert", "recopy", "delivery", "recorder", "holder", "recording", "recordist", 
"player", "recount", "recoup", "recourse", "recover", "cover", "recovery", 
"create", "recreation", "ground", "recross", "recrudesce", "rectangle", "rectify", 
"rectitude", "recto", "rector", "rectory", "rectum", "recuperate", "recur", 
"recurrence", "recusancy", "recycle", "redness", "admiral", "redbreast", "redcap", 
"card", "carpet", "cell", "redcoat", "crescent", "cross", "redcurrant", 
"redden", "redecorate", "redeem", "redeemer", "redefine", "redemption", "redeploy", 
"redesign", "redevelop", "flag", "hat", "redhead", "herring", "poker", 
"redial", "indian", "redirect", "rediscover", "redivide", "lead", "day", 
"light", "district", "meat", "redneck", "redo", "redolence", "redoubt", 
"redound", "pepper", "redpoll", "redraft", "rag", "redraw", "rose", 
"redshank", "redshift", "redskin", "squirrel", "redstart", "tape", "reduce", 
"absurdum", "reduction", "redundancy", "redwing", "redwood", "echo", "reed", 
"bed", "educate", "reediness", "reefer", "knot", "elect", "embark", 
"emerge", "emphasize", "employ", "enact", "engage", "enlist", "enter", 
"entry", "equip", "establish", "examine", "reface", "refashion", "refectory", 
"table", "refer", "reference", "book", "referendum", "referral", "pain", 
"refine", "refinement", "refiner", "refinery", "reflate", "reflation", "reflect", 
"reflection", "reflector", "camera", "refloat", "refocus", "reforest", "reforge", 
"form", "reformat", "church", "reformer", "reformism", "refract", "refractor", 
"refreeze", "refresh", "refresher", "course", "refuel", "refuge", "refugee", 
"refulgence", "refurbish", "refurnish", "refusal", "refusenik", "refute", "reg", 
"regain", "regality", "regale", "regalia", "regatta", "regency", "reggae", 
"regicide", "regime", "regimen", "regina", "region", "nurse", "post", 
"office", "registrar", "mark", "registry", "office", "professor", "regrade", 
"regression", "regroup", "regrow", "regularity", "regulate", "regulation", "regulo", 
"rehang", "rehear", "rehearsal", "rehearse", "reheat", "rehouse", "reich", 
"reimburse", "reimpose", "reindeer", "reinforce", "concrete", "reinsert", "reinstate", 
"reinsure", "reinvest", "reiterate", "rejection", "rejig", "rejoice", "rejoinder", 
"rejuvenate", "rekindle", "relabel", "relate", "relation", "mass", "density", 
"mass", "relativity", "relax", "relaxation", "lay", "race", "relearn", 
"relegate", "relent", "relevance", "reliance", "relic", "relict", "relief", 
"map", "road", "relieve", "relievo", "relight", "religion", "reline", 
"relinquish", "reliquary", "relive", "reload", "relocate", "reluctance", "rely", 
"remain", "remains", "centre", "remarry", "remeasure", "remember", "day", 
"sunday", "remind", "reminder", "reminisce", "remission", "remittance", "remnant", 
"remodel", "remorse", "remoteness", "control", "removal", "remunerate", "man", 
"rename", "renascence", "rend", "render", "rendition", "renegade", "renege", 
"renew", "rennet", "renounce", "renovate", "renown", "rental", "boy", 
"rentier", "renumber", "reoccupy", "reoccur", "reopen", "reorganize", "reorient", 
"repack", "repackage", "repairer", "repaper", "reparation", "repartee", "repast", 
"repay", "repeater", "repel", "repent", "repertoire", "repertory", "company", 
"repetition", "injury", "rephrase", "repine", "replace", "replant", "replenish", 
"repletion", "replica", "repoint", "repopulate", "reportage", "speech", "reporter", 
"reposition", "repository", "repossess", "repot", "reprehend", "repress", "reprice", 
"reprisal", "reprise", "repro", "reprobate", "reprocess", "reproduce", "reprogram", 
"reproof", "reprove", "reptile", "republic", "republish", "repudiate", "repugnance", 
"repulsion", "reputation", "stop", "requiem", "require", "requite", "reread", 
"rerecord", "reredos", "route", "resale", "reschedule", "rescind", "rescript", 
"rescuer", "reseal", "researcher", "resell", "resemble", "resent", "resentment", 
"price", "reservist", "reservoir", "reset", "resettle", "reshape", "reside", 
"residence", "residency", "residue", "residuum", "resign", "sign", "resilience", 
"resistance", "resistor", "resolution", "resonance", "resonate", "sort", "resound", 
"respecter", "respell", "respirator", "respire", "respite", "respond", "response", 
"restate", "restaurant", "car", "car", "cure", "home", "restock", 
"restore", "restrain", "restraint", "restrict", "practice", "room", "restyle", 
"resume", "resumption", "resurface", "resurgence", "resurrect", "retailer", "retain", 
"retainer", "retaliate", "retard", "retch", "retell", "retention", "retexture", 
"reticence", "retie", "retina", "retinue", "retire", "retirement", "pension", 
"retouch", "retrace", "retract", "retrain", "retrench", "retrial", "retrieval", 
"retriever", "retrogress", "retrospect", "retrovirus", "retry", "retsina", "retune", 
"returnee", "officer", "retype", "reunify", "reunion", "reunite", "revalue", 
"revamp", "reveal", "reveille", "reveller", "revelation", "revenue", "revere", 
"mother", "reverie", "revers", "reversal", "gear", "light", "reversion", 
"revert", "reviewer", "revile", "revise", "version", "version", "revision", 
"revisit", "revitalize", "revival", "revivalism", "revive", "revivify", "revocation", 
"revolution", "revolve", "revolver", "door", "revue", "revulsion", "rewind", 
"rewire", "reword", "rework", "rex", "rhapsodize", "rhapsody", "rhea", 
"rhenium", "rheostat", "rhesus", "factor", "rhetoric", "question", "fever", 
"rheumatics", "rheumatism", "arthritis", "rhinestone", "rhino", "rhinoceros", "rhizome", 
"rho", "rhodium", "rhombus", "rhubarb", "rhymester", "slang", "rhythm", 
"blues", "method", "section", "ribaldry", "riband", "ribbing", "ribbon", 
"ribcage", "riboflavin", "acid", "tickler", "rice", "paper", "richness", 
"riches", "scale", "rickets", "rickshaw", "ricotta", "ricrac", "rid", 
"riddance", "rider", "pole", "ridgeway", "light", "school", "riesling", 
"riff", "raff", "rifleman", "range", "shot", "rifling", "valley", 
"rigger", "rigger", "rigging", "rightness", "angle", "arm", "bank", 
"righten", "hand", "handedness", "hander", "man", "honourable", "rightism", 
"way", "reverend", "turn", "winger", "rigidity", "rigmarole", "mortis", 
"rigour", "out", "rile", "rill", "rim", "rind", "binder", 
"dove", "ringer", "fence", "finger", "tone", "ringleader", "ringlet", 
"ringmaster", "road", "ringside", "ringworm", "rink", "cord", "ripeness", 
"ripen", "off", "ripper", "ripsaw", "riser", "damp", "riskiness", 
"risotto", "rissole", "rite", "passage", "ritualism", "rivalry", "river", 
"riverside", "riviera", "rivulet", "roach", "road", "roadbed", "roadblock", 
"licence", "hog", "holding", "house", "roadie", "metal", "sense", 
"roadshow", "roadside", "sign", "roadstead", "roadster", "tax", "roadway", 
"roadworks", "roamer", "forties", "success", "trade", "twenties", "roaster", 
"rob", "robbery", "robin", "hood", "robinia", "robot", "robotics", 
"robustness", "roc", "rochet", "rockabilly", "roll", "cake", "crystal", 
"rocker", "rockery", "rocketry", "face", "rockfall", "garden", "chair", 
"horse", "plant", "salmon", "salt", "rockiness", "rockiness", "rod", 
"rodent", "rodeo", "roebuck", "roentgen", "rogation", "days", "rogue", 
"roguery", "gallery", "roister", "role", "model", "playing", "call", 
"gold", "oats", "roller", "bearing", "blind", "coaster", "skater", 
"towel", "mill", "pin", "stock", "stone", "rollmop", "honour", 
"desk", "rom", "candle", "empire", "romance", "romanize", "law", 
"nose", "numeral", "romeo", "rompers", "rondeau", "rondel", "rondo", 
"rood", "screen", "garden", "roofing", "mouth", "rack", "rooftop", 
"tree", "rookery", "rookie", "house", "mate", "service", "roominess", 
"rooster", "rootstock", "ladder", "ropiness", "roquefort", "rorqual", "test", 
"rosary", "rosebowl", "rosebud", "bush", "hip", "rosemary", "rosette", 
"water", "window", "rosewood", "rostrum", "rosiness", "rota", "club", 
"rotate", "rotation", "rotavator", "rote", "gut", "rotisserie", "rotor", 
"rottenness", "borough", "rotter", "rottweiler", "rotundity", "rotunda", "rouble", 
"roughness", "roughage", "diamond", "dry", "roughen", "house", "justice", 
"roughneck", "rider", "roulade", "roulette", "brackets", "dance", "roundel", 
"roundelay", "rounder", "roundhead", "robin", "roundsman", "table", "trip", 
"roundworm", "rouse", "roustabout", "march", "roux", "eye", "rower", 
"rowan", "boat", "rowdiness", "rowel", "boat", "rowlock", "legion", 
"commission", "family", "flush", "icing", "royalist", "jelly", "marine", 
"navy", "royalty", "warrant", "rubato", "band", "rubberize", "plant", 
"rubbing", "rubble", "down", "rubella", "rubicon", "rubidium", "cube", 
"rubric", "wedding", "ruche", "rucksack", "ruckus", "ruction", "rudder", 
"ruddiness", "rudeness", "rudiment", "ruefulness", "ruffian", "rug", "rugby", 
"league", "union", "ruggedness", "rugger", "ruination", "thumb", "ruler", 
"ruling", "rumba", "baba", "ruminate", "sale", "rummy", "rump", 
"rumple", "steak", "rumpus", "runabout", "around", "runaway", "rune", 
"runnel", "runner", "board", "commentary", "knot", "mate", "repairs", 
"sore", "water", "off", "out", "runt", "through", "runway", 
"rupee", "rupiah", "district", "ruse", "candle", "hour", "rushlight", 
"rusk", "roulette", "salad", "rusticity", "rusticate", "rustler", "rustiness", 
"ruthenium", "rye", "ryegrass", "sabbath", "saber", "sabot", "saboteur", 
"sabre", "rattling", "sac", "saccharin", "sachet", "sackbut", "sackcloth", 
"sacking", "sacrament", "cow", "sacrilege", "sacristan", "sacristy", "sacrum", 
"sadden", "saddleback", "bag", "saddler", "saddlery", "sadducee", "sadhu", 
"sadism", "masochism", "safari", "park", "conduct", "deposit", "house", 
"keeping", "period", "sex", "safety", "belt", "catch", "curtain", 
"lamp", "match", "net", "pin", "razor", "valve", "saga", 
"sagacity", "sagebrush", "sago", "sahib", "sailboard", "sailcloth", "boat", 
"sailor", "sailplane", "sainfoin", "sainthood", "bernard", "wort", "leger", 
"dance", "salad", "cream", "days", "dressing", "salamander", "salami", 
"ammoniac", "sale", "work", "return", "saleroom", "salesman", "talk", 
"saleswoman", "acid", "salinity", "saliva", "salivate", "salmonella", "trout", 
"salon", "saloon", "salsa", "salsify", "cellar", "salting", "saltire", 
"lick", "mine", "pan", "saltpeter", "saltpetre", "saltiness", "salubrity", 
"saluki", "salutation", "salvation", "army", "salver", "salvia", "salvo", 
"volatile", "samaritan", "samarium", "sameness", "samizdat", "samosa", "samovar", 
"samoyed", "sampan", "samphire", "sampling", "samson", "samurai", "sanatorium", 
"sanctify", "sanctity", "sanctuary", "sanctum", "tree", "sandalwood", "sandbank", 
"sandboy", "sandcastle", "dune", "sander", "sandman", "martin", "sandpiper", 
"sandpit", "sandstone", "sandstorm", "board", "course", "sandiness", "froid", 
"sangria", "sanhedrin", "sanitarium", "towel", "sanitation", "sanitize", "sanity", 
"sanserif", "claus", "sapience", "sapling", "sapper", "saprophyte", "saraband", 
"saracen", "sarcasm", "sarcoma", "sardine", "sardonyx", "sargasso", "sarge", 
"sari", "sarnie", "sarong", "sarsen", "sarsenet", "sashay", "cord", 
"weight", "window", "sassafras", "sassenach", "satan", "satanism", "satchel", 
"sate", "sateen", "dish", "satiate", "satiety", "satinwood", "satire", 
"satirist", "satirize", "satisfy", "satrap", "satsuma", "saturate", "saturation", 
"point", "saturnalia", "satyr", "boat", "saucepan", "saucer", "sauciness", 
"sauerkraut", "sauna", "sausage", "meat", "roll", "sauternes", "savagery", 
"savannah", "savant", "earn", "saveloy", "saver", "grace", "bank", 
"savior", "saviour", "faire", "savoy", "sawdust", "sawfish", "sawmill", 
"sawyer", "sax", "saxe", "saxifrage", "saxophone", "saying", "bend", 
"scabbard", "scabies", "scabious", "scaffold", "scallion", "scalloping", "scallywag", 
"scalpel", "scam", "scamp", "scampi", "scandal", "scandalize", "scandium", 
"scanner", "scansion", "scantiness", "scapegoat", "scapula", "scarab", "scarcity", 
"scarecrow", "scarlatina", "fever", "pimpernel", "woman", "scarper", "scatology", 
"scattiness", "scavenge", "scavenger", "scenario", "scene", "scenery", "shifter", 
"scepter", "sceptic", "sceptre", "flight", "schema", "schematize", "scherzo", 
"schism", "schist", "schlock", "schmaltz", "schmuck", "schnapps", "schnitzel", 
"scholar", "age", "schoolboy", "schoolgirl", "schooling", "leaver", "schoolroom", 
"year", "schooner", "sciatica", "nerve", "science", "fiction", "park", 
"scientist", "scimitar", "scintilla", "scion", "scissors", "sclerosis", "scolding", 
"sconce", "scone", "scoot", "scooter", "scope", "policy", "scorcher", 
"scorer", "scoreboard", "book", "scoria", "scorpio", "scorpion", "scot", 
"scotch", "broth", "egg", "fir", "mist", "terrier", "whisky", 
"scottish", "scotsman", "pine", "scottie", "scoundrel", "scourer", "scouting", 
"scouter", "scow", "scram", "scrambler", "scrapbook", "scraper", "heap", 
"scrapie", "scraping", "merchant", "scrapyard", "scree", "owl", "screed", 
"screenplay", "printing", "test", "screwball", "top", "screwiness", "scrim", 
"scrimp", "scrip", "scripture", "scrivener", "scrofula", "scrooge", "scrotum", 
"scrounge", "scrubber", "scrum", "half", "scrummage", "scrump", "scrumpy", 
"scrutineer", "scrutinize", "scrutiny", "scuba", "diving", "sculler", "scullery", 
"scullion", "sculpt", "sculptor", "scumbag", "scurf", "scurrility", "scut", 
"scutter", "charybdis", "sea", "anchor", "anemone", "seabed", "bird", 
"seaboard", "change", "cow", "dog", "seafarer", "seafood", "front", 
"seagull", "horse", "seakale", "sealant", "legs", "level", "wax", 
"lion", "lord", "sealskin", "office", "seaman", "seamanship", "bowler", 
"mile", "seamstress", "seaminess", "seance", "pink", "seaplane", "seaport", 
"sear", "searcher", "party", "warrant", "room", "salt", "seascape", 
"scout", "seashell", "seashore", "seaside", "seasoning", "ticket", "belt", 
"seating", "urchin", "wall", "seaway", "seaweed", "secant", "secateurs", 
"secede", "secession", "seclude", "seclusion", "seconder", "secondment", "colour", 
"picketing", "chamber", "cousin", "guess", "lieutenant", "nature", "officer", 
"sight", "string", "thoughts", "wind", "secrecy", "agent", "secretaire", 
"secretary", "bird", "general", "state", "ballot", "secrete", "secretion", 
"police", "service", "society", "sect", "sector", "secularism", "security", 
"risk", "sedan", "sedateness", "sedation", "sedge", "sediment", "sedition", 
"seduce", "seduction", "seductress", "sedulity", "sedum", "bed", "seedling", 
"pearl", "potato", "seedsman", "seediness", "seek", "seem", "seemliness", 
"rome", "seep", "seepage", "seer", "seersucker", "seethe", "segregate", 
"seigneur", "seismogram", "seismology", "seize", "seizure", "committee", "selection", 
"selector", "selenium", "self", "abasement", "absorption", "abuse", "analysis", 
"assertion", "assured", "awareness", "censorship", "conceit", "confidence", "control", 
"criticism", "deception", "defence", "defense", "delusion", "denial", "discipline", 
"discovery", "doubt", "effacement", "employment", "esteem", "evidence", "expression", 
"fulfilment", "government", "help", "image", "importance", "indulgence", "interest", 
"knowledge", "pity", "portrait", "possession", "regard", "regulation", "reliance", 
"reproach", "respect", "restraint", "rule", "sacrifice", "seed", "starter", 
"worth", "date", "seller", "market", "point", "out", "selvage", 
"semantics", "semblance", "semen", "semester", "semi", "semibreve", "semicircle", 
"semicolon", "semifinal", "seminar", "seminary", "semiotics", "semiquaver", "semite", 
"semitone", "semivowel", "semolina", "semtex", "senate", "senator", "send", 
"off", "senescence", "seneschal", "senility", "dementia", "seniority", "citizen", 
"officer", "school", "service", "senna", "ora", "orita", "sensation", 
"organ", "sensitize", "sensor", "sensualism", "sensuality", "sentience", "sentiment", 
"value", "sentinel", "sentry", "box", "sepal", "separation", "separatist", 
"separator", "sephardi", "sepia", "sepoy", "sepsis", "sept", "september", 
"septet", "septicemia", "tank", "septuagint", "septum", "sepulture", "sequel", 
"sequence", "sequencer", "sequester", "sequin", "sequoia", "seraglio", "seraph", 
"serenader", "sereneness", "serf", "serge", "sergeant", "major", "serialize", 
"killer", "number", "series", "serif", "serjeant", "arms", "sermon", 
"sermonize", "serosity", "serpent", "serration", "serum", "servant", "service", 
"server", "servery", "area", "charge", "flat", "industry", "serviceman", 
"road", "station", "serviette", "servility", "serving", "servitor", "servitude", 
"servo", "sesame", "session", "sestet", "back", "piece", "square", 
"settee", "setter", "theory", "setting", "settlement", "settler", "seas", 
"adventists", "heaven", "sever", "severance", "pay", "severity", "orange", 
"sew", "sewage", "farm", "sewer", "sewerage", "sewing", "machine", 
"sexagesima", "appeal", "change", "chromosome", "sexism", "life", "maniac", 
"object", "offender", "sexology", "symbol", "sextant", "sextet", "sexton", 
"sextuplet", "sexuality", "sexiness", "shabbiness", "shad", "shaddock", "shading", 
"boxing", "shadiness", "shaft", "shagginess", "story", "shagreen", "shah", 
"shaker", "shako", "shakiness", "shale", "shall", "shallot", "shalom", 
"shaman", "shambles", "shammy", "shamrock", "shandy", "shanghai", "shank", 
"mare", "shantung", "town", "shard", "out", "sharkskin", "sharpness", 
"sharpen", "sharper", "practice", "shatter", "shaver", "shaving", "shawl", 
"shearer", "sheath", "sheathe", "knife", "sheave", "shebeen", "sheen", 
"sheep", "dip", "sheepdog", "sheepfold", "sheepshank", "sheepskin", "anchor", 
"sheeting", "metal", "music", "sheikh", "sheila", "shekel", "shelduck", 
"shelf", "life", "mark", "shellfish", "shock", "shelta", "shelve", 
"shemozzle", "shenanigan", "pie", "sheraton", "sherbet", "sherd", "sheriff", 
"sherpa", "sherry", "pony", "shiatsu", "shibboleth", "shiftiness", "shillelagh", 
"shilling", "shally", "bone", "shindig", "shindy", "shiner", "shingles", 
"shinto", "shinty", "shininess", "canal", "shipload", "shipmate", "shipment", 
"shipowner", "shipper", "shipping", "boat", "shipwright", "shipyard", "shire", 
"horse", "shirk", "shirring", "shirt", "tail", "shirtiness", "kebab", 
"absorber", "shocker", "therapy", "troops", "wave", "shoddiness", "shoehorn", 
"shoelace", "shoemaker", "shoestring", "tree", "brake", "star", "stick", 
"assistant", "floor", "shopkeeper", "shoplift", "shopping", "centre", "steward", 
"shopwalker", "shoreline", "shortness", "shortage", "sides", "shortbread", "shortcake", 
"change", "shortcrust", "cut", "shorten", "shortening", "shortfall", "shorthand", 
"typist", "shorthorn", "shorts", "shrift", "sight", "temper", "wave", 
"weight", "shorty", "shotgun", "wedding", "arm", "dark", "put", 
"should", "bag", "blade", "pad", "strap", "halfpenny", "shovelful", 
"shoveller", "showbiz", "business", "showdown", "showgirl", "house", "showing", 
"showman", "off", "hands", "piece", "place", "showroom", "stopper", 
"trial", "showiness", "shrapnel", "shredder", "shrew", "shrewdness", "shrike", 
"shrillness", "shrine", "shrinkage", "wrap", "shrive", "shrivel", "shrovetide", 
"tuesday", "shrub", "shrubbery", "shufti", "shun", "shut", "down", 
"eye", "diplomacy", "service", "shyness", "shylock", "shyster", "twins", 
"sibilance", "sibling", "sibyl", "sickbay", "sickbed", "sicken", "sickle", 
"leave", "cell", "sickness", "pay", "sideboard", "sideboards", "sideburns", 
"car", "door", "drum", "effect", "sidekick", "sidelight", "sideline", 
"day", "road", "sideshow", "sidesman", "sidetrack", "sidewalk", "whiskers", 
"wind", "siding", "sidle", "siege", "siemens", "sienna", "sierra", 
"siesta", "sift", "eyes", "read", "screen", "sightseer", "sigma", 
"signaller", "box", "signalize", "signalman", "signature", "tune", "signboard", 
"signet", "ring", "figure", "signify", "language", "cross", "signor", 
"signora", "signorina", "signwriter", "sikh", "silage", "silencer", "majority", 
"silica", "gel", "silicate", "silicon", "chip", "silicone", "silicosis", 
"silk", "printing", "silkworm", "silkiness", "sill", "silliness", "silo", 
"band", "birch", "silverfish", "jubilee", "lining", "medal", "paper", 
"plate", "sand", "screen", "silverside", "tongue", "silverware", "wedding", 
"similarity", "simile", "similitude", "cake", "simony", "simoom", "simpleness", 
"fracture", "interest", "mindedness", "simpleton", "simplicity", "simplify", "simulate", 
"bin", "sincerity", "sine", "sinecure", "non", "sinew", "sinfulness", 
"singer", "songwriter", "combat", "cream", "decker", "mindedness", "parent", 
"singlet", "singleton", "sinker", "fund", "sinner", "fein", "sinology", 
"sinuosity", "sinus", "sinusitis", "sir", "siren", "sirenian", "sirloin", 
"sirocco", "sirup", "sis", "sisal", "siskin", "sister", "sisterhood", 
"law", "sit", "sitar", "sitcom", "sitka", "sitter", "duck", 
"room", "tenant", "situate", "situation", "comedy", "upon", "sixer", 
"sixpence", "shooter", "form", "college", "former", "sense", "ska", 
"skater", "skedaddle", "skein", "skeleton", "cupboard", "key", "skeptic", 
"skerry", "book", "map", "skier", "pan", "row", "skiff", 
"jump", "lift", "skill", "skillet", "skimmia", "milk", "skimp", 
"skimpiness", "diver", "skinflint", "skinful", "graft", "skinhead", "skinniness", 
"skipjack", "rope", "board", "run", "skit", "skittle", "skive", 
"skua", "skulk", "skull", "crossbones", "skullcap", "skunk", "skydiving", 
"skyjack", "skylight", "skyline", "skyscraper", "writing", "slab", "slackness", 
"slacken", "slacker", "heap", "slake", "slalom", "match", "tickle", 
"face", "back", "slapstick", "slat", "slattern", "driver", "labour", 
"slavery", "trade", "slay", "sleaze", "sleaziness", "sleekness", "sleeper", 
"bag", "car", "partner", "pill", "policeman", "sickness", "sleepwalk", 
"sleepiness", "sleeve", "hand", "slickness", "rule", "scale", "slightness", 
"slimmer", "slime", "sliminess", "back", "slink", "knot", "pen", 
"slippage", "disc", "slipper", "slope", "road", "slipstream", "slipway", 
"sloane", "slob", "sloe", "slogan", "sloop", "sloppiness", "sloth", 
"machine", "hat", "despond", "sloven", "slowness", "slowcoach", "down", 
"motion", "worm", "sludge", "sluggard", "slumber", "slurry", "slush", 
"fund", "slut", "slyness", "smacker", "smallness", "arms", "beer", 
"change", "fry", "hours", "smallpox", "print", "talk", "smarminess", 
"smartness", "alec", "smarten", "money", "grab", "smasher", "smattering", 
"test", "salts", "smelliness", "smelter", "smidgen", "smilax", "smite", 
"smith", "smithy", "smocking", "smog", "bomb", "zone", "smoker", 
"smokestack", "smokiness", "smoothness", "smoothie", "smother", "smugness", "smuggle", 
"snack", "bar", "snail", "pace", "charmer", "ladders", "snapdragon", 
"fastener", "snapper", "snapshot", "snazziness", "sneaker", "thief", "snicker", 
"sniffer", "dog", "sniffiness", "snifter", "sniper", "snippet", "snob", 
"snood", "snook", "snooper", "snot", "snottiness", "snout", "tree", 
"snowberry", "snowblower", "snowcap", "snowdrift", "snowdrop", "snowfall", "snowflake", 
"goose", "snowline", "snowman", "snowmobile", "snowplough", "snowplow", "snowshoe", 
"snowstorm", "owl", "nose", "snuffbox", "snuffer", "snuggery", "snuggle", 
"soakaway", "soapbox", "flakes", "opera", "powder", "soapstone", "soapsuds", 
"soapwort", "soapiness", "soar", "sobriety", "sobriquet", "story", "soccer", 
"climber", "contract", "democracy", "socialism", "socialite", "socialize", "science", 
"security", "services", "work", "society", "friends", "sociology", "socket", 
"irony", "method", "soda", "bread", "fountain", "sodium", "chloride", 
"hydroxide", "lamp", "nitrate", "sodomite", "sodomy", "law", "sofa", 
"bed", "soffit", "softness", "softball", "drink", "soften", "fruit", 
"softie", "option", "palate", "sell", "target", "touch", "software", 
"softwood", "sogginess", "soh", "pipe", "neuf", "sola", "solan", 
"battery", "day", "solarium", "panel", "plexus", "system", "year", 
"topi", "iron", "fortune", "soldiery", "solecism", "solemness", "solemnity", 
"solemnize", "solenoid", "solicit", "solicitor", "general", "solicitude", "solidness", 
"solidarity", "solidify", "solidity", "solidus", "soliloquy", "solipsism", "solitaire", 
"solitude", "soloist", "seal", "solstice", "solubility", "solute", "solution", 
"solve", "solvency", "sombreness", "sombreness", "sombrero", "someone", "something", 
"somnolence", "son", "sonar", "sonata", "sonatina", "song", "dance", 
"songbird", "songbook", "cycle", "songster", "thrush", "songwriter", "bang", 
"barrier", "law", "sonnet", "sonny", "sonority", "soot", "sooth", 
"soothe", "soothsayer", "sophism", "sophist", "sophistry", "sophomore", "soppiness", 
"soprano", "sorbet", "sorcerer", "sordidness", "soreness", "point", "sorghum", 
"sorority", "sos", "sot", "sou", "soubrette", "souk", "soul", 
"food", "mate", "music", "searching", "soundness", "barrier", "bite", 
"soundbox", "effect", "sounding", "balloon", "board", "line", "rod", 
"system", "soundtrack", "wave", "kitchen", "plate", "spoon", "sourness", 
"source", "grapes", "sourpuss", "soutane", "east", "cross", "southerner", 
"hemisphere", "lights", "sea", "east", "west", "west", "souvenir", 
"wester", "soy", "soya", "spa", "spacer", "spacecraft", "invaders", 
"spaceman", "spaceship", "shuttle", "station", "spacesuit", "time", "spadeful", 
"spadework", "spaghetti", "bolognese", "junction", "western", "spam", "spandrel", 
"spaniard", "spaniel", "main", "omelette", "onion", "spanker", "spanner", 
"works", "spareness", "part", "rib", "time", "tyre", "sparkler", 
"plug", "partner", "sparrow", "sparseness", "spasm", "spate", "spathe", 
"spatula", "spay", "speak", "speakeasy", "speaker", "clock", "spearmint", 
"spearwort", "branch", "constable", "delivery", "edition", "effects", "specialist", 
"speciality", "specialize", "licence", "pleading", "specialty", "specie", "species", 
"gravity", "capacity", "specify", "specimen", "specs", "spectacle", "spectacles", 
"spectator", "sport", "specter", "spectre", "spectrum", "speculate", "speculum", 
"speech", "day", "speechify", "therapy", "speeder", "speedboat", "limit", 
"speedo", "speedway", "speedwell", "speediness", "speleology", "speller", "spellbind", 
"spelling", "spend", "sperm", "spermaceti", "bank", "count", "spermicide", 
"whale", "spew", "sphagnum", "sphere", "spheroid", "sphincter", "sphinx", 
"spiciness", "spider", "crab", "monkey", "plant", "spiel", "spigot", 
"spikenard", "spikiness", "spillage", "spillikin", "spillway", "bifida", "spinach", 
"column", "cord", "bowler", "spindle", "tree", "drier", "spindrift", 
"spine", "chiller", "spinet", "spinnaker", "spinner", "spinneret", "spinney", 
"jenny", "wheel", "off", "spinster", "anteater", "spiraea", "staircase", 
"spire", "spirea", "gum", "lamp", "level", "spirogyra", "polish", 
"spitfire", "roast", "distance", "image", "spittle", "spittoon", "spiv", 
"splashback", "splashdown", "spleen", "spleenwort", "splendor", "splendour", "group", 
"infinitive", "pea", "pin", "screen", "splotch", "spoilage", "spoiler", 
"spoilsport", "spokeshave", "spokesman", "spoliation", "spondee", "the", "bag", 
"cake", "pudding", "sponger", "rubber", "sponginess", "combustion", "spoof", 
"spookiness", "spoonful", "spoonbill", "spoonerism", "spoonfeed", "spoor", "spore", 
"sporran", "car", "coat", "ground", "sportsman", "sportswear", "sportiness", 
"check", "dick", "spotter", "spottiness", "weld", "spouse", "sprat", 
"sprayer", "gun", "spree", "balance", "springbok", "chicken", "equinox", 
"springer", "fever", "greens", "onion", "roll", "tide", "springtime", 
"sprinkler", "sprinkling", "sprinter", "sprit", "sprite", "spritsail", "spritzer", 
"sprocket", "spruceness", "spumante", "spume", "spunk", "silk", "spurge", 
"spurn", "sputnik", "sputum", "spyglass", "spyhole", "squad", "car", 
"squaddie", "squadron", "leader", "squalor", "squander", "squareness", "bashing", 
"brackets", "dance", "deal", "leg", "meal", "measure", "root", 
"squatter", "squaw", "squeegee", "box", "squib", "squid", "squiggle", 
"squill", "stability", "stabilize", "stabilizer", "companion", "stabling", "stadium", 
"college", "nurse", "sergeant", "stag", "beetle", "stagecoach", "stagecraft", 
"direction", "fright", "hand", "manage", "manager", "whisper", "staghound", 
"staging", "post", "stagnancy", "stagnate", "party", "glass", "steel", 
"stair", "staircase", "rod", "stairway", "stairwell", "out", "stalactite", 
"stalagmite", "staleness", "stalinism", "horse", "stallion", "stamen", "stamina", 
"collector", "duty", "ground", "stance", "stanch", "stanchion", "task", 
"bearer", "lamp", "living", "time", "committee", "joke", "order", 
"orders", "ovation", "room", "half", "standpipe", "standpoint", "standstill", 
"stanza", "stapler", "stardust", "starfish", "gazer", "starkness", "starlet", 
"starlight", "starling", "david", "stripes", "starter", "block", "price", 
"startle", "turn", "starve", "starveling", "wars", "stasis", "home", 
"statement", "emergency", "stateroom", "school", "statesman", "statics", "stationer", 
"stationery", "office", "cross", "wagon", "statistic", "statistics", "statue", 
"statuette", "stature", "status", "quo", "symbol", "statute", "book", 
"law", "staff", "stayer", "power", "staysail", "stead", "steadiness", 
"state", "steak", "house", "stealth", "steamboat", "engine", "steamer", 
"hammer", "iron", "steamship", "train", "steaminess", "steatite", "steed", 
"band", "wool", "steelworks", "steeliness", "steelyard", "steepen", "steeple", 
"steering", "steerage", "column", "committee", "wheel", "steersman", "stela", 
"stench", "gun", "stepchild", "stepfather", "stepladder", "stepmother", "parent", 
"steppe", "stone", "stepsister", "stepson", "sterility", "sterilize", "silver", 
"sternness", "sternum", "steroid", "sterol", "stet", "stetson", "stevedore", 
"stewardess", "sticker", "plaster", "insect", "mud", "stickler", "stickiness", 
"wicket", "stiffness", "stiffen", "lip", "stifle", "stigma", "stigmatize", 
"stile", "stiletto", "stillness", "stillbirth", "life", "room", "stilt", 
"stilton", "stimulate", "stimulus", "stinger", "nettle", "stingray", "stinginess", 
"bomb", "stinker", "stipend", "magistrate", "stipulate", "stirrer", "stirrup", 
"cup", "leather", "pump", "time", "stoat", "car", "exchange", 
"stockinet", "stocking", "stitch", "trade", "stockist", "market", "stockpot", 
"stockroom", "stockiness", "stockyard", "stodge", "stodginess", "stoicism", "stoke", 
"stokehold", "stokehole", "stoker", "stolidity", "stoma", "ache", "stomacher", 
"pump", "upset", "age", "stonechat", "stonecrop", "fruit", "stonemason", 
"stonewall", "stoneware", "stonework", "stonker", "stoniness", "stool", "stoolball", 
"pigeon", "stopcock", "stopgap", "stopoff", "stopover", "stoppage", "press", 
"stopwatch", "storage", "battery", "heater", "storehouse", "storeman", "storeroom", 
"storey", "stork", "centre", "cloud", "door", "teacup", "petrel", 
"trooper", "troops", "storminess", "story", "stoup", "stoutness", "stave", 
"pipe", "stow", "stowage", "stowaway", "strabismus", "straddle", "strafe", 
"straggler", "straighten", "eye", "face", "fight", "flush", "man", 
"strainer", "strait", "stranger", "strangle", "stratagem", "strategy", "strathspey", 
"stratify", "stratum", "straw", "strawberry", "mark", "vote", "streaker", 
"streamer", "streamline", "street", "streetcar", "streetwise", "strength", "strengthen", 
"stretcher", "strew", "stria", "striation", "strictness", "stricture", "stridency", 
"strife", "pay", "striker", "strine", "course", "stringency", "stringer", 
"vest", "cartoon", "club", "stripe", "light", "stripling", "stripper", 
"striptease", "strive", "strobe", "players", "strongbox", "stronghold", "language", 
"point", "strongroom", "strontium", "strudel", "strumpet", "strychnine", "stubble", 
"book", "sail", "student", "farm", "studio", "couch", "flat", 
"shirt", "stuffing", "stuffiness", "stultify", "block", "stumpiness", "stun", 
"stunner", "man", "stupefy", "stupidity", "stupor", "sturdiness", "sturgeon", 
"stylist", "stylus", "styrene", "suasion", "suavity", "subaltern", "subculture", 
"subdivide", "subdue", "editor", "subgroup", "subheading", "subjoin", "subjugate", 
"sublease", "lieutenant", "sublimate", "gun", "submariner", "submerge", "submission", 
"submit", "suborder", "clause", "suborn", "plot", "subroutine", "subscribe", 
"subscriber", "dialling", "subsection", "subset", "subside", "subsidize", "subsidy", 
"subsist", "farming", "subsoil", "substance", "substratum", "subsume", "subtenant", 
"subtend", "subterfuge", "subtext", "subtlety", "subtotal", "subtract", "subtropics", 
"suburb", "suburbia", "subvention", "subversion", "subvert", "subway", "succeed", 
"success", "succession", "successor", "succubus", "succulence", "succumb", "sucker", 
"suckle", "suckling", "sucrose", "suction", "suddenness", "death", "syndrome", 
"suds", "sue", "suede", "suet", "suffer", "sufferance", "suffice", 
"suffocate", "suffragan", "suffrage", "suffuse", "sufi", "beet", "cane", 
"daddy", "loaf", "soap", "sugariness", "suggest", "suggestion", "suicide", 
"suitcase", "suite", "suitor", "sulfa", "sulfate", "sulfide", "sulfite", 
"sulfur", "sulkiness", "sullenness", "sully", "sulpha", "sulphate", "sulphide", 
"sulphite", "sulphur", "dioxide", "acid", "acid", "sultan", "sultana", 
"sultriness", "sumac", "summarize", "summation", "summer", "house", "pudding", 
"school", "solstice", "summertime", "time", "summit", "summon", "sumo", 
"sump", "sunbathe", "sunbeam", "sunbed", "sunblock", "sunburn", "sundae", 
"best", "school", "sunder", "sundew", "sundial", "sundown", "sunfish", 
"sunflower", "glasses", "lamp", "sunlight", "lounge", "sunniness", "sunrise", 
"roof", "sunset", "sunshade", "sunshine", "sunspot", "sunstroke", "suntan", 
"suntrap", "supercargo", "superego", "superglue", "supergrass", "superman", "supernova", 
"superpower", "supersede", "superstar", "superstore", "supertax", "supervene", "supervise", 
"superwoman", "supper", "supplant", "suppleness", "supplicate", "supporter", "film", 
"suppose", "suppress", "suppurate", "supremacy", "court", "supremo", "sureness", 
"surety", "surfer", "mail", "tension", "surfboard", "surfing", "surgeon", 
"surgery", "spirit", "surliness", "surmount", "surname", "surpass", "surplice", 
"surrealism", "surrogate", "mother", "surtax", "surtitle", "surveyor", "survival", 
"survive", "sushi", "suspend", "animation", "sentence", "suspender", "belt", 
"suspense", "suspension", "bridge", "suspicion", "suss", "sustain", "sustenance", 
"suttee", "suzerain", "swaddle", "clothes", "swag", "stick", "swahili", 
"swain", "dive", "tail", "swami", "swansong", "sward", "swarf", 
"swastika", "swatch", "swath", "word", "band", "sweater", "sweatshirt", 
"sweatshop", "swede", "sweeper", "sweepstake", "sweetbread", "brier", "sweetcorn", 
"sweeten", "sweetener", "sweetheart", "sweetie", "sweetmeal", "sweetmeat", "sweetness", 
"pea", "pepper", "potato", "sweetshop", "tooth", "william", "swelling", 
"swiftness", "swimmer", "bath", "costume", "swimsuit", "swimwear", "swindler", 
"swine", "swinger", "boat", "pepper", "potato", "sweetshop", "tooth", 
"william", "swelling", "swiftness", "swimmer", "bath", "costume", "swimsuit", 
"swimwear", "swindler", "swine", "swinger", "boat", "bridge", "door", 
"wing", "roll", "switchback", "chair", "swizz", "swizzle", "stick", 
"swoon", "sword", "dance", "swordfish", "damocles", "swordplay", "swordsman", 
"swordstick", "sybarite", "sycamore", "sycophant", "syllabary", "syllable", "syllabub", 
"syllabus", "syllepsis", "syllogism", "sylph", "symbiosis", "symbol", "symbolism", 
"symbolize", "symmetry", "sympathize", "sympathy", "symphony", "orchestra", "symposium", 
"symptom", "synagogue", "synapse", "syncopate", "syncope", "syncretize", "syndic", 
"syndrome", "synecdoche", "synod", "synonym", "synopsis", "gospels", "synovia", 
"syntax", "synth", "synthesis", "synthesize", "syphilis", "syringa", "syrup", 
"system", "analysis", "tabard", "tabasco", "tabby", "tabernacle", "tabla", 
"tableau", "tablecloth", "tableland", "licence", "linen", "tablespoon", "tablet", 
"talk", "tennis", "tabletop", "tableware", "wine", "tabloid", "tabor", 
"tabulate", "tabulator", "tacho", "tachograph", "tachometer", "tackler", "block", 
"tackiness", "tackiness", "taco", "tact", "tactic", "tactics", "tactility", 
"tadpole", "taffeta", "taffrail", "taffy", "end", "chi", "tailback", 
"tailboard", "tailcoat", "end", "tailgate", "light", "tailpiece", "tailpipe", 
"tailplane", "tailspin", "wind", "pay", "off", "over", "taker", 
"talc", "talcum", "tale", "talent", "scout", "talisman", "talker", 
"talkback", "talkie", "talk", "book", "point", "shop", "tallness", 
"tallboy", "order", "tallow", "ship", "story", "talmud", "talon", 
"talus", "tamarind", "tamarisk", "tambour", "tambourine", "tameness", "shanter", 
"tamp", "tamper", "tampon", "tam", "tandoor", "tandoori", "tang", 
"tangent", "tangerine", "tankful", "tankard", "engine", "tanker", "tanner", 
"tannery", "acid", "tannin", "tannoy", "tansy", "tantalize", "tantalum", 
"tantalus", "tantra", "tantrum", "taoiseach", "taoism", "tapas", "dancer", 
"deck", "machine", "measure", "recorder", "tapestry", "tapeworm", "tapioca", 
"tapir", "tappet", "taproom", "root", "tarantella", "tarantula", "tarboosh", 
"tardiness", "tariff", "tarlatan", "tarmacadam", "tarn", "taro", "tarot", 
"tarpaulin", "tarragon", "tarsus", "tartlet", "tartness", "tartan", "tartar", 
"acid", "sauce", "tartrazine", "tarzan", "force", "taskmaster", "tass", 
"tassel", "bud", "taster", "tasting", "tastiness", "tatter", "tatting", 
"tattooer", "tattiness", "tau", "taurus", "tauten", "tautology", "tavern", 
"taverna", "tawdriness", "owl", "taxation", "avoidance", "disc", "evasion", 
"haven", "taxidermy", "taximeter", "rank", "taxman", "taxon", "taxonomy", 
"taxpayer", "return", "tayberry", "bone", "tea", "bag", "break", 
"caddy", "teacake", "teach", "teacher", "chest", "teaching", "cloth", 
"cosy", "teacup", "dance", "teak", "teal", "lady", "leaf", 
"mate", "spirit", "teamster", "teamwork", "planter", "teapot", "tearaway", 
"drop", "duct", "gas", "hurry", "jerker", "tearoom", "rose", 
"teasel", "teaser", "teaset", "teashop", "teaspoon", "teat", "teatime", 
"towel", "trolley", "tec", "tech", "technetium", "technic", "knockout", 
"technician", "technique", "technocrat", "technology", "tectonics", "ted", "teddy", 
"boy", "tedium", "teenager", "teens", "bopper", "teeter", "teethe", 
"ring", "troubles", "teff", "teflon", "telecaster", "telefax", "telegram", 
"telegraphy", "telemetry", "teleology", "telepathy", "book", "booth", "directory", 
"number", "telephony", "telephoto", "telesales", "sight", "teletext", "telethon", 
"teletype", "televise", "television", "tell", "teller", "off", "tale", 
"tellurium", "telly", "temerity", "tempera", "temperance", "tempest", "template", 
"tempo", "temporize", "tempt", "temptation", "tempura", "tenability", "tenacity", 
"tenancy", "tenant", "farmer", "tenantry", "tench", "tendency", "tenderness", 
"tenderer", "tenderfoot", "tenderize", "tenderloin", "mercies", "spot", "tendon", 
"tendril", "tenement", "tenet", "hat", "tenner", "tennis", "elbow", 
"tenon", "tenor", "tenpin", "bowling", "tenseness", "tensility", "strength", 
"tent", "tentacle", "tenter", "tenterhook", "stitch", "tenuity", "tenure", 
"tepee", "tepidity", "tequila", "terbium", "tercel", "teredo", "termagant", 
"terminate", "terminus", "termite", "reference", "tern", "house", "terracotta", 
"firma", "terrain", "incognita", "terrapin", "terrarium", "terrazzo", "terrier", 
"terrify", "terrine", "army", "waters", "territory", "terror", "terrorist", 
"terrorize", "terry", "terseness", "terylene", "tesla", "tessera", "tessitura", 
"testa", "testament", "testacy", "testator", "card", "case", "drive", 
"tester", "flight", "testicle", "testify", "testimony", "testis", "match", 
"paper", "pilot", "tube", "baby", "testiness", "tetanus", "tetchiness", 
"tetrad", "tetragon", "tetralogy", "tetrameter", "teuton", "text", "editor", 
"processing", "thallium", "thane", "thatcher", "theater", "theatre", "theft", 
"theism", "theme", "park", "song", "theocracy", "theodolite", "theologian", 
"theology", "theorem", "theorist", "theorize", "theory", "theosophy", "therapy", 
"therm", "unit", "valve", "thermos", "thermostat", "thesaurus", "thesis", 
"theta", "thiamine", "thicken", "thickening", "thicket", "thickhead", "thickness", 
"thief", "thieve", "thievery", "thigh", "bone", "thimble", "thimbleful", 
"thinness", "thing", "thingummy", "thinker", "tank", "thinner", "man", 
"person", "reading", "reich", "world", "articles", "thistle", "thole", 
"thong", "thorax", "thorium", "thorn", "thorniness", "reader", "thrall", 
"threadworm", "threat", "threaten", "decker", "race", "whip", "threepence", 
"turn", "quarter", "quarters", "threescore", "threesome", "threnody", "thresh", 
"floor", "threshold", "thrift", "thriller", "thrips", "thrive", "throat", 
"throe", "thrombosis", "throstle", "throughput", "throwback", "thug", "thulium", 
"index", "thumbnail", "thumbprint", "thumbscrew", "fly", "thurible", "thyme", 
"thymol", "thymus", "thyroid", "cartilage", "tiara", "tibia", "tic", 
"ticker", "tape", "ticking", "tack", "tock", "wave", "tidbit", 
"tiddler", "wink", "tide", "tidemark", "tidetable", "tideway", "tidings", 
"tidiness", "break", "dye", "pin", "tier", "tiff", "tiffin", 
"tiger", "cat", "lily", "moth", "tightness", "corner", "tighten", 
"tightrope", "tights", "tigress", "tilde", "tiler", "tiling", "tiller", 
"tillage", "tiller", "tilth", "timber", "timberline", "timbre", "timbrel", 
"half", "bomb", "capsule", "clock", "exposure", "timekeeper", "lag", 
"limit", "timeliness", "timepiece", "timer", "server", "share", "sharing", 
"sheet", "signal", "signature", "switch", "zone", "timidity", "timing", 
"timpani", "can", "tinder", "box", "tine", "foil", "hat", 
"tinnitus", "opener", "alley", "plate", "tinsel", "tinsmith", "tinsnips", 
"tack", "whistle", "tininess", "off", "tipper", "tippet", "tippler", 
"tipstaff", "tipster", "tipsiness", "tirade", "tiredness", "tiro", "tissue", 
"paper", "titan", "titanium", "titbit", "titfer", "barn", "titillate", 
"titivate", "title", "deed", "holder", "page", "role", "titmouse", 
"titrate", "tittle", "tizzy", "junction", "toad", "toadflax", "hole", 
"toadstool", "toadyism", "toaster", "fork", "rack", "tobacco", "jug", 
"toccata", "tocsin", "tod", "toddler", "toddy", "toecap", "hold", 
"toenail", "toff", "toffee", "apple", "tofu", "toga", "toggle", 
"switch", "toilet", "paper", "roll", "toiletry", "soap", "toilette", 
"training", "water", "toils", "froing", "tokay", "token", "tokenism", 
"tolerance", "tolerate", "toleration", "bridge", "gate", "road", "toluene", 
"tom", "tomahawk", "tomato", "tomb", "tombola", "tomboy", "tombstone", 
"harry", "tome", "tomfoolery", "tommy", "gun", "rot", "tomography", 
"tomtit", "tom", "ton", "tonality", "toner", "poem", "tongs", 
"tie", "twister", "water", "tonnage", "tonne", "tonsil", "toolmaker", 
"pusher", "tooth", "toothache", "toothbrush", "comb", "toothpaste", "toothpick", 
"powder", "tootle", "tootsy", "topaz", "brass", "topcoat", "dog", 
"drawer", "dress", "tope", "topgallant", "gear", "hat", "topi", 
"topic", "topicality", "topknot", "topmast", "topography", "topology", "topper", 
"topple", "topsail", "topside", "topsoil", "topspin", "toque", "tor", 
"torch", "torchlight", "song", "toreador", "tormentor", "tormentil", "tornado", 
"boat", "torpidity", "torpor", "torque", "torr", "torrent", "zone", 
"torsion", "torso", "tort", "tortilla", "tortoise", "butterfly", "cat", 
"torturer", "tosa", "tosh", "totality", "totalize", "bag", "totem", 
"pole", "toucan", "touchdown", "line", "paper", "touchstone", "type", 
"touchwood", "touchiness", "toughen", "toupee", "force", "tourer", "tourism", 
"tourist", "class", "tourmaline", "tournament", "tournedos", "tourniquet", "operator", 
"tousle", "bar", "towelling", "block", "strength", "town", "clerk", 
"crier", "gas", "hall", "house", "townie", "planning", "townscape", 
"townsfolk", "township", "townsman", "path", "toxaemia", "toxemia", "toxicity", 
"toxicology", "toxin", "toxocara", "boy", "toyshop", "element", "tracer", 
"tracery", "trachea", "tracing", "paper", "tracker", "dog", "events", 
"record", "shoe", "suit", "traction", "engine", "tractor", "mark", 
"name", "off", "price", "trader", "secret", "tradesman", "congress", 
"union", "wind", "trading", "estate", "post", "stamp", "tradition", 
"traduce", "trafficker", "island", "jam", "light", "warden", "tragedian", 
"tragedy", "blazer", "trailer", "edge", "trainee", "bearer", "trainer", 
"training", "spotter", "trait", "traitor", "trajectory", "tram", "tramlines", 
"trample", "tramway", "trance", "tranny", "transact", "transcend", "meditation", 
"transcribe", "transcript", "transducer", "transept", "transfix", "transform", "transfuse", 
"transgress", "transience", "transistor", "transit", "camp", "transition", "translate", 
"transmit", "transmute", "transom", "window", "transpire", "bridge", "transpose", 
"transputer", "transship", "trapdoor", "trapeze", "trapezium", "trapezoid", "trapper", 
"trappings", "can", "trattoria", "trauma", "agency", "traveler", "traveller", 
"cheque", "joy", "tale", "salesman", "travelogue", "traversal", "trawler", 
"tray", "treachery", "treacle", "treadle", "treadmill", "treadwheel", "treason", 
"hunt", "treasurer", "trove", "treasury", "bench", "bill", "treatise", 
"treatment", "treaty", "chance", "clef", "fern", "line", "ring", 
"surgeon", "treetop", "trefoil", "trekker", "trellis", "trematode", "trembler", 
"tremolo", "tremor", "trenchancy", "coat", "trencher", "warfare", "setter", 
"trendiness", "trespasser", "tress", "trestle", "trews", "triad", "trial", 
"error", "run", "triangle", "triathlon", "tribe", "tribesman", "tribology", 
"tribunal", "tribune", "tribute", "trice", "triceps", "trichology", "trickery", 
"charger", "trickster", "trickiness", "tricolor", "tricolour", "tricot", "tricycle", 
"trident", "trier", "triforium", "trig", "point", "trike", "trilby", 
"trillion", "trilobite", "trilogy", "trimaran", "trimeter", "trimming", "trinity", 
"sunday", "term", "trinket", "trio", "tripe", "crown", "jump", 
"triplet", "tripod", "tripos", "tripper", "triptych", "wire", "trireme", 
"trisect", "triteness", "tritium", "trivalency", "trivet", "trivia", "triviality", 
"trivialize", "trochee", "troglodyte", "troika", "horse", "trolley", "bus", 
"trollop", "trombone", "trooper", "ship", "trope", "trophy", "trot", 
"troth", "trotskyism", "trotter", "troubadour", "trough", "trounce", "troupe", 
"trouper", "trousers", "suit", "trousseau", "trout", "trove", "trowel", 
"troy", "truancy", "truce", "trucker", "truculence", "love", "north", 
"truffle", "trug", "truism", "card", "trumpeter", "call", "truncate", 
"truncheon", "trundle", "trunk", "call", "line", "road", "trustee", 
"truth", "out", "tryst", "tsar", "tsetse", "shirt", "square", 
"tsunami", "tuba", "tubbiness", "tuber", "tubercle", "bacillus", "tuberculin", 
"tuberose", "tubing", "thumper", "bells", "tubule", "shop", "tufa", 
"tuff", "tuffet", "tuft", "tugboat", "love", "war", "tuition", 
"tulip", "tree", "tulle", "tum", "drier", "tumbler", "tumbrel", 
"tumescence", "tumidity", "tummy", "button", "tumor", "tumour", "tumult", 
"tumulus", "tun", "tuna", "tundra", "tuner", "tungsten", "tunic", 
"fork", "vision", "tunny", "tuppence", "tupperware", "turban", "turbidity", 
"turbine", "turbo", "turbofan", "turbojet", "turboprop", "turbot", "turbulence", 
"turd", "tureen", "accountant", "turgidity", "turk", "turkey", "turkeycock", 
"bath", "carpet", "coffee", "delight", "towel", "head", "turmeric", 
"turmoil", "about", "buckle", "turncoat", "turner", "turnery", "turning", 
"circle", "point", "turnip", "top", "turnkey", "off", "turnout", 
"turnover", "turnpike", "round", "turnstile", "turntable", "turpentine", "substitute", 
"turpitude", "turps", "turret", "turtle", "dove", "neck", "tusk", 
"tussock", "tutelage", "tutorship", "frutti", "tutu", "whoo", "tux", 
"tuxedo", "twaddle", "twat", "tweed", "tweeter", "tweezers", "night", 
"vision", "twerp", "twilight", "zone", "twill", "twinning", "bed", 
"twinge", "set", "town", "twister", "twitcher", "twopence", "twosome", 
"step", "time", "mirror", "tycoon", "tyke", "tympanum", "tynwald", 
"typecast", "typeface", "typescript", "typesetter", "typewriter", "typhoid", "typhoon", 
"typhus", "typicality", "typify", "typist", "typo", "typography", "tyrannize", 
"tyranny", "tyrant", "tyre", "purple", "tzatziki", "ubiquity", "boat", 
"udder", "ufo", "ugli", "uglify", "ugliness", "customer", "duckling", 
"ukulele", "ulcer", "ulcerate", "ullage", "ulna", "ulster", "ulsterman", 
"ultimatum", "ultrasound", "ululate", "umbel", "cord", "umbilicus", "umbra", 
"umbrage", "umbrella", "umlaut", "unanimity", "unban", "unbar", "unbelief", 
"unbend", "unbind", "unblock", "unbolt", "unbosom", "unbridle", "unbuckle", 
"unburden", "unbutton", "unchain", "unclasp", "uncle", "unclench", "sam", 
"unclothe", "uncoil", "unconcern", "reflex", "uncork", "uncouple", "uncover", 
"uncross", "uncrown", "unction", "uncurl", "undeceive", "underact", "underbelly", 
"undercoat", "undercook", "undercroft", "underdog", "underfelt", "undergo", "underlie", 
"underline", "underling", "undermine", "underpants", "underpart", "underpass", "underpay", 
"underpin", "underplay", "underprice", "underrate", "underscore", "secretary", "undersell", 
"undershirt", "undershoot", "underside", "underskirt", "underspend", "understand", "understate", 
"understeer", "undertake", "undertaker", "undertone", "undertow", "undervalue", "undervest", 
"underwear", "underwhelm", "underworld", "underwrite", "undies", "undine", "undo", 
"undoing", "undulate", "income", "unearth", "unease", "uneasiness", "benefit", 
"unevenness", "unfairness", "unfasten", "unfetter", "unfix", "unfold", "unfreeze", 
"unfrock", "unfurl", "ungird", "unguent", "unhand", "unharness", "unhinge", 
"unhitch", "unhook", "unhorse", "uni", "unicorn", "unicycle", "church", 
"uniformity", "unify", "union", "bashing", "unionist", "unionize", "jack", 
"unison", "unit", "cost", "unite", "kingdom", "nations", "church", 
"states", "price", "trust", "unity", "coupling", "time", "universe", 
"university", "unjustness", "unkindness", "unknot", "quantity", "soldier", "warrior", 
"unlace", "weight", "unlatch", "unlearn", "unleash", "signs", "unload", 
"unlock", "unloose", "unmake", "unman", "unmask", "unmorality", "unnerve", 
"strike", "unpack", "language", "unperson", "unpick", "unpin", "unplug", 
"unquote", "unravel", "unreality", "unreason", "unreel", "unrest", "unroll", 
"unruliness", "unsaddle", "unsay", "unscramble", "unscrew", "unseal", "unseat", 
"unsettle", "unsex", "unshackle", "unsheathe", "unstick", "unstitch", "unstop", 
"unstrap", "unstring", "untangle", "untether", "unthread", "unthrone", "untidiness", 
"untie", "untruth", "untuck", "untwine", "untwist", "unveil", "unwariness", 
"unwind", "unwrap", "unzip", "upbraid", "upbringing", "end", "upgrade", 
"upheaval", "uphold", "upholster", "upholstery", "upkeep", "case", "crust", 
"hand", "house", "uprising", "uproar", "uproot", "uprush", "downs", 
"upshot", "upsilon", "stroke", "upsurge", "upswing", "uptake", "upthrust", 
"uranium", "urbanity", "guerrilla", "urbanize", "urchin", "urdu", "urea", 
"ureter", "urethra", "urgency", "acid", "urinal", "urinate", "urine", 
"urn", "urology", "major", "minor", "usage", "usefulness", "user", 
"usherette", "usurer", "usurp", "usury", "utensil", "uterus", "utility", 
"room", "vehicle", "utilize", "utopia", "utterance", "turn", "uvula", 
"vac", "vacancy", "possession", "vacate", "vaccinate", "vaccine", "vacillate", 
"vacuole", "vacuity", "brake", "cleaner", "flask", "tube", "mecum", 
"vagary", "vagina", "vagrancy", "vagueness", "vainglory", "valance", "vale", 
"valency", "valentine", "valerian", "validity", "validate", "valise", "valium", 
"valley", "valor", "valour", "valuation", "valuer", "tax", "judgement", 
"valve", "vamoose", "vampire", "vanadium", "vandal", "vandalize", "vane", 
"vanguard", "vanilla", "vanish", "cream", "point", "vanity", "bag", 
"unit", "vanquish", "vantage", "vapidity", "vapor", "vaporize", "vapour", 
"trail", "variance", "variation", "variety", "varlet", "varsity", "vary", 
"vas", "deferens", "vase", "vasectomy", "vaseline", "vassal", "vastness", 
"vat", "vatican", "vaudeville", "vaulting", "horse", "vaunt", "veal", 
"vector", "veda", "day", "veg", "vegetate", "vegetation", "veggie", 
"burger", "vehemence", "vehicle", "vein", "velcro", "veld", "veleta", 
"vellum", "velocity", "velodrome", "velour", "velveteen", "glove", "venality", 
"vend", "vendetta", "machine", "vendor", "venerate", "disease", "blind", 
"vengeance", "veniality", "venison", "diagram", "venom", "ventilate", "ventilator", 
"ventricle", "scout", "venue", "trap", "veracity", "veranda", "verb", 
"verbalize", "noun", "verbena", "verbiage", "verbosity", "verdancy", "verdict", 
"verdigris", "verdure", "verger", "verify", "verity", "vermicelli", "vermicide", 
"appendix", "vermin", "vermouth", "vernier", "veronal", "veronica", "verruca", 
"verse", "versicle", "versify", "version", "verso", "vertebra", "vertex", 
"off", "vertigo", "vervain", "verve", "light", "vesicle", "vespers", 
"vessel", "virgin", "interest", "vestibule", "vestige", "vestment", "vestry", 
"vetch", "veteran", "car", "surgeon", "vex", "vexation", "viability", 
"viaduct", "vial", "viand", "viaticum", "vibes", "vibrancy", "vibraphone", 
"vibrate", "vibration", "vibrato", "vibrator", "viburnum", "vicar", "vicarage", 
"chancellor", "president", "vicereine", "ring", "viceroy", "squad", "water", 
"vicinity", "circle", "spiral", "victim", "victimize", "victor", "cross", 
"victoriana", "sponge", "victory", "victualer", "victualler", "vide", "cassette", 
"videodisc", "game", "nasty", "recorder", "shop", "recorder", "videotex", 
"vie", "viewdata", "viewer", "viewfinder", "viewpoint", "vigil", "vigilance", 
"vigilante", "vignette", "vigor", "vigour", "viking", "vileness", "vilify", 
"villa", "village", "villain", "villainy", "villein", "vim", "vindicate", 
"vine", "vinegar", "vineyard", "vino", "car", "vintner", "vinyl", 
"viol", "gamba", "violate", "violence", "violin", "violist", "viper", 
"virago", "birth", "creeper", "virginity", "virgo", "virility", "virology", 
"reality", "virtue", "virtuoso", "virulence", "virus", "visa", "visage", 
"viscera", "viscose", "viscount", "viscosity", "vise", "visibility", "vision", 
"visitant", "visitation", "visitor", "book", "visor", "vista", "aid", 
"unit", "visualize", "vitality", "vitalize", "statistics", "vitamin", "complex", 
"vitaminize", "vitiate", "humour", "vitrify", "vitriol", "vituperate", "vivacity", 
"vivarium", "vividness", "vivify", "vivisect", "vixen", "vizier", "neck", 
"vocable", "vocabulary", "cords", "vocalist", "vocalize", "vocation", "vociferate", 
"vodka", "vogue", "box", "wilderness", "over", "voile", "volatility", 
"volatilize", "vent", "volcano", "vole", "volition", "volleyball", "volt", 
"voltage", "face", "voltmeter", "volubility", "volume", "voluptuary", "volute", 
"voracity", "vortex", "vorticist", "votary", "voter", "vouch", "voucher", 
"vouchsafe", "vowel", "pop", "populi", "voyager", "voyeur", "sign", 
"vulcanite", "vulcanize", "fraction", "vulgarian", "vulgarism", "vulgarity", "vulgarize", 
"tongue", "vulgate", "vulture", "vulva", "wadding", "wader", "wadi", 
"wafer", "iron", "earner", "wager", "waggle", "wagon", "wagoner", 
"load", "wagtail", "waif", "strays", "wain", "wainscot", "waist", 
"waistband", "waistcoat", "waistline", "waiting", "waiter", "game", "list", 
"room", "waitress", "waive", "waiver", "waken", "wale", "walkabout", 
"walker", "talkie", "walking", "frame", "stick", "walkman", "life", 
"out", "over", "walkway", "wallaby", "wallah", "bar", "wallet", 
"eye", "wallflower", "game", "wally", "walnut", "walrus", "moustache", 
"wampum", "wanness", "wand", "wander", "jew", "wanderlust", "engine", 
"wanker", "wannabe", "wapiti", "warbler", "crime", "cry", "ward", 
"dance", "warden", "warder", "wardrobe", "mistress", "wardroom", "wardship", 
"ware", "warfare", "game", "warhead", "warhorse", "warlock", "warlord", 
"warmth", "memorial", "pan", "warmonger", "work", "warn", "warning", 
"nerves", "warpaint", "warpath", "officer", "warranty", "warren", "war", 
"warrior", "warship", "wart", "hog", "wartime", "wariness", "basin", 
"washboard", "washer", "washing", "machine", "powder", "soda", "out", 
"washroom", "washstand", "washiness", "wasp", "wasp", "waist", "wastage", 
"unit", "wasteland", "paper", "basket", "pipe", "product", "waster", 
"wastrel", "watcher", "watchdog", "brief", "watchmaker", "watchman", "service", 
"tower", "watchword", "bed", "biscuit", "buffalo", "bus", "cannon", 
"carrier", "chestnut", "clock", "closet", "color", "colour", "watercress", 
"diviner", "waterfall", "waterfowl", "waterfront", "glass", "hammer", "hole", 
"ice", "can", "hole", "place", "jump", "level", "lily", 
"line", "waterloo", "main", "waterman", "meadow", "melon", "mill", 
"pistol", "polo", "power", "rat", "rate", "watershed", "waterside", 
"skier", "softener", "waterspout", "table", "tower", "vole", "waterway", 
"wheel", "wings", "waterworks", "wateriness", "watt", "wattage", "hour", 
"daub", "waveband", "form", "wavelength", "wavelet", "machine", "waver", 
"waviness", "waxwing", "waxwork", "waybill", "wayfarer", "waylay", "life", 
"means", "wayside", "weaken", "weakling", "moment", "weakness", "point", 
"wealth", "wean", "weapon", "weaponry", "wearer", "weariness", "weasel", 
"word", "forecast", "weatherman", "vane", "weaver", "web", "webbing", 
"weber", "wed", "wedding", "breakfast", "cake", "ring", "wedgwood", 
"wedlock", "killer", "weeds", "week", "weekday", "weekend", "weekender", 
"weepie", "weevil", "weft", "weigh", "weighting", "training", "weir", 
"weirdness", "weirdo", "welder", "welfare", "state", "work", "welkin", 
"being", "head", "wellies", "wellington", "spring", "wisher", "welsh", 
"welshman", "rabbit", "welshwoman", "wen", "wench", "wend", "house", 
"werewolf", "and", "country", "end", "westerner", "westernize", "indian", 
"west", "side", "west", "blanket", "dream", "wether", "wetland", 
"suit", "whalebone", "oil", "whaler", "wharfage", "whatnot", "wheat", 
"wheatear", "germ", "wheatmeal", "wheedle", "wheelbase", "wheelchair", "clamp", 
"dealer", "house", "wheelie", "spin", "wheeziness", "whelk", "whelm", 
"when", "wherry", "whet", "whetstone", "whey", "whiff", "whig", 
"whim", "whimsy", "whin", "whinchat", "whinge", "whipcord", "hand", 
"whiplash", "injury", "whippet", "boy", "top", "round", "whipstock", 
"whirligig", "whirlpool", "whirlwind", "whisker", "whiskey", "whisky", "whist", 
"drive", "stop", "whit", "whiteness", "ant", "whitebait", "cell", 
"corpuscle", "elephant", "feather", "flag", "friar", "goods", "whitehead", 
"heat", "hope", "horses", "lead", "lie", "light", "magic", 
"meat", "whiten", "noise", "out", "paper", "pepper", "russian", 
"sauce", "slave", "spirit", "sugar", "tie", "wedding", "whale", 
"whitewood", "whitlow", "sunday", "whittle", "kid", "whodunit", "wholeness", 
"wholefood", "wholemeal", "number", "wholesaler", "wholewheat", "cough", "whop", 
"whopper", "whore", "house", "whorl", "who", "wick", "wickedness", 
"wicker", "wickerwork", "wicket", "keeper", "ball", "widen", "widgeon", 
"widowhood", "widower", "peak", "width", "wield", "schnitzel", "wife", 
"wig", "wigging", "wight", "wigwam", "wildness", "card", "wildebeest", 
"wilderness", "wildfire", "wildfowl", "chase", "hyacinth", "wildlife", "west", 
"willies", "wisp", "willow", "herb", "pattern", "warbler", "power", 
"willy", "wiliness", "wimp", "wimple", "wincey", "winceyette", "windbag", 
"break", "windburn", "cone", "down", "winder", "windfall", "sheet", 
"instrument", "jammer", "windlass", "windmill", "window", "box", "dressing", 
"pane", "seat", "shop", "sill", "windpipe", "windscreen", "wiper", 
"windshield", "sock", "tunnel", "windiness", "bar", "winebibber", "cellar", 
"wineglass", "list", "winepress", "vinegar", "waiter", "case", "chair", 
"collar", "commander", "winger", "nut", "span", "winker", "picker", 
"winner", "post", "winnow", "wino", "garden", "jasmine", "solstice", 
"sports", "wintertime", "wintriness", "wiper", "wireless", "netting", "tapping", 
"wool", "wireworm", "wiring", "wiriness", "wisdom", "tooth", "wiseacre", 
"guy", "man", "wisent", "wishbone", "fulfilment", "thinking", "well", 
"wisp", "wisteria", "wit", "witch", "witchcraft", "doctor", "witchery", 
"sabbath", "hazel", "hunt", "withdraw", "withdrawal", "withe", "wither", 
"withers", "withhold", "withstand", "box", "witter", "witticism", "wittiness", 
"wizardry", "woad", "wodge", "woe", "wog", "woggle", "wok", 
"wold", "wolfhound", "clothing", "wolfram", "wolfsbane", "whistle", "wolverine", 
"woman", "womanhood", "womanize", "womankind", "womb", "wombat", "womenfolk", 
"libber", "liberation", "rights", "wonderland", "wonderment", "woo", "wood", 
"anemone", "woodbine", "woodchuck", "woodcock", "woodcraft", "woodcut", "woodcutter", 
"woodenness", "woodland", "woodlouse", "woodman", "woodpecker", "woodpigeon", "woodpile", 
"pulp", "woodruff", "woodshed", "woodwind", "woodwork", "woodworm", "woodiness", 
"woodyard", "nightshade", "woofer", "wool", "gathering", "woolliness", "woolsack", 
"wooziness", "wop", "sauce", "blindness", "game", "wording", "mouth", 
"wordplay", "processor", "wordiness", "workaholic", "basket", "workbench", "workbook", 
"workbox", "camp", "workday", "worker", "experience", "workforce", "workhouse", 
"capital", "class", "day", "hypothesis", "knowledge", "lunch", "order", 
"party", "workload", "workman", "workmate", "art", "workout", "workpiece", 
"workplace", "workroom", "worksheet", "workshop", "study", "table", "worktop", 
"rule", "world", "beater", "cup", "music", "war", "weariness", 
"cast", "hole", "view", "wormwood", "worminess", "worrier", "beads", 
"worsen", "worshipper", "worsted", "wort", "worthiness", "would", "wrack", 
"wraith", "wrapper", "wrapping", "paper", "wrasse", "wrath", "wreak", 
"wreath", "wreathe", "wreckage", "wrecker", "wren", "wren", "wrest", 
"wrestler", "wretch", "wright", "wringer", "wrist", "wristlet", "watch", 
"wreckage", "wrecker", "wren", "wren", "wrest", "wrestler", "wretch", 
"wright", "wringer", "wrist", "wristlet", "watch", "write", "off", 
"writer", "cramp", "writhe", "writing", "desk", "paper", "wrongness", 
"wrongdoer", "foot", "side", "iron", "wryness", "wryneck", "chromosome", 
"xenon", "xenophobia", "xerography", "xmas", "xylem", "xylophone", "yachtsman", 
"yahoo", "yahweh", "yak", "lock", "yam", "yang", "yank", 
"yank", "yankee", "yarborough", "yardage", "arm", "yardie", "yardstick", 
"yarmulke", "yarrow", "yashmak", "yawl", "yaws", "chromosome", "year", 
"yearbook", "yearling", "yearn", "yeast", "yellowness", "belly", "card", 
"fever", "flag", "pages", "pepper", "spot", "streak", "yeoman", 
"guard", "yeomanry", "warder", "man", "yesteryear", "yeti", "yew", 
"fronts", "yid", "yin", "yob", "yobbo", "yodeller", "yoga", 
"yoghurt", "yogi", "yokel", "yolk", "kippur", "yonks", "yore", 
"york", "yorker", "pudding", "terrier", "person", "youngster", "youth", 
"club", "hostel", "ytterbium", "yttrium", "yuan", "yucca", "yule", 
"log", "yuppie", "zabaglione", "zeal", "zealot", "zebra", "crossing", 
"zebu", "zed", "zee", "zeitgeist", "zen", "zend", "avesta", 
"zenith", "zephyr", "zeppelin", "zero", "option", "zest", "zeta", 
"zeugma", "ziggurat", "zilch", "zillion", "frame", "zinc", "zinnia", 
"zion", "zionism", "code", "zipper", "zircon", "zirconium", "zit", 
"zit", "zither", "zloty", "zodiac", "zombie", "zoo", "garden", 
"zoology", "lens", "zoophyte", "zucchini", "zygote" }
-----------------------------------------------------------------------------------

shadow_offset = 0.035
shadow_color = vec4(0.2, 0.2, 0.2, 1)

win = am.window{
    title = "From The Top",
    width = 900,
    height = 700,
    clear_color = vec4(0.3),
}

function ftplog(str)
	--log(str)
end

-------------------------------------------------------
-- sound fx
-------------------------------------------------------

sounds =
{
	beephi = 77763306,
	beeplo = 96169106,
	crash = 99503802,
	snare = 20008302,
	swipe = 77813709,
	brush = 90848704,
	bad = 59595402,
	coin = 65748300,
	frog = 60384003,
}

-------------------------------------------------------
-- drum panel
-------------------------------------------------------

function drum_panel(pattern, show_hint)

	local background_color = vec4(0.8, 0.8, 0.8, 1)
	local local_root = am.scale(1)
    local show_hint = true
	local pattern = {}
	
	crash_color = vec4(0.2,0,0.6,1)
	beep_color = vec4(0,0.6,0.2,1)
	frog_color = vec4(0.6,0,0.2,1)
	local lightButton = 1.3
	
	-- generate pattern
	patterncount = 4--math.random(3,4)
	if #pattern == 0 then
		ftplog("new drum pattern")
		for n=1, patterncount do
			pattern[n] = math.random(1,4)
		end
	end
	
	local user_clicks = {}
	local_root.user_clicks = user_clicks
	
    function local_root:set_show_hint(v)
        show_hint = v
    end
    function local_root:lost()
		for i, click in ipairs(user_clicks) do
			if i > #pattern or pattern[i] ~= user_clicks[i] then
				return true
			end
		end
		return false
    end
    function local_root:won()
        return (not self:lost() and #user_clicks == #pattern)
    end
    function local_root:reset()
		user_clicks = {}
		local_root.user_clicks = user_clicks
    end
	
	buttons = {
		am.scale(1)
		^ am.circle(vec2(0),0.1,frog_color*lightButton),
		
		am.scale(1) ^ am.group
		{
			am.translate(0,0.05)
			^ am.scale(0.1)
			^ am.rect(-1,-0.5,1,0.5,crash_color),
			
			am.circle(vec2(0),0.1,crash_color,8),
		},
	
		am.scale(1) ^ am.group
		{
			am.rotate(math.rad(45))
			^ am.scale(0.071)
			^ am.rect(-1,-1,1,1,beep_color*lightButton),
			
			am.translate(0,-0.05)
			^ am.scale(0.05)
			^ am.rect(-1,-1,1,1,beep_color*lightButton),
		},
		
		am.scale(1) ^ am.group
		{
			am.rotate(math.rad(45))
			^ am.scale(0.071)
			^ am.rect(-1,-1,1,1,beep_color),
			
			am.translate(0,0.05)
			^ am.scale(0.05)
			^ am.rect(-1,-1,1,1,beep_color),
		},	
	}
	
	buttons[1].sound = sounds.frog
	buttons[1].pos = vec2(0.3, 0.7)
	buttons[2].sound = sounds.crash
	buttons[2].pos = vec2(0.3, 0.3)
	buttons[3].sound = sounds.beephi
	buttons[3].pos = vec2(0.7, 0.7)
	buttons[4].sound = sounds.beeplo
	buttons[4].pos = vec2(0.7, 0.3)
	local_root.buttons = buttons
	
	function drum_action( root, index )
		if( show_hint ) then
			return am.parallel {
				am.play(root.buttons[index].sound),
				function()
					root.buttons[index].scale = vec3(1.5)
					root.buttons[index]:action(am.tween(0.35, {scale = vec3(1)} ))
					return true
				end,
				am.delay(0.8),
			}
		else
			return am.parallel {
				am.play(root.buttons[index].sound),
				function()
					root.buttons[index].scale = vec3(1.5)
					root.buttons[index]:action(am.tween(0.35, {scale = vec3(1)} ))
					return true
				end,
			}
		end
	end
	
	local_root:tag"drum_panel"
	local_root.patternaction = patternaction
	local_root.drum_action = drum_action
	local_root.pattern = pattern
	
	function local_root:start()
		-- behaviour
		local actions = {}
		-- drum hints
		if show_hint then
			for dh=1, #pattern do
				actions[#actions+1] = drum_action( local_root, pattern[dh] )
			end
		end
		actions[#actions+1] = drum_clear_hint()
		actions[#actions+1] = drum_user_input()
		nodeaction = self:action(am.series(actions))
		if show_hint then
			nodeaction:action(drum_play_hint())
		end
    end
	
	return local_root
		^ am.scale(100,100)
		^ am.translate(-0.5, -0.5)
		^ am.group {
			am.rect(shadow_offset,-shadow_offset,1 + shadow_offset,1 - shadow_offset, shadow_color),
			am.rect(0,0,1,1, background_color),
			am.translate(buttons[1].pos) ^ buttons[1],
			am.translate(buttons[2].pos) ^ buttons[2],
			am.translate(buttons[3].pos) ^ buttons[3],
			am.translate(buttons[4].pos) ^ buttons[4],
		}
end


function drum_play_hint()
    return coroutine.create(function()
        local panel_node = coroutine.yield()
        am.wait(display_message("Remember the Sounds!", vec4(1,0,0,1)))
        am.wait(am.delay( 0.8 * #(panel_node.pattern) ))
        am.wait(clear_message())
		return true
    end)
end

function drum_clear_hint()
    return am.series{
        am.delay(0.3),
        function()
            display_prompt("Play the Sounds!")
            return true
        end,
    }
end

function drum_user_input()
    return function(panel_node)
        if win:mouse_pressed("left") or win:mouse_pressed("right") then
		
            local window_mousepos = win:mouse_position()
            local mousepos = vec2(
                window_mousepos.x / 450 + 0.5,
                window_mousepos.y / 450 + 0.5
            )
			
			local hit_radius = 0.15
            for b=1, #panel_node.buttons do
				pos = panel_node.buttons[b].pos
				if math.length(pos - mousepos) < hit_radius then
					panel_node.user_clicks[#panel_node.user_clicks+1] = b
					ftplog( table.tostring(panel_node.user_clicks) )
					ftplog( table.tostring(panel_node.pattern) )
					panel_node:tag"drum_panel":action(
						panel_node.drum_action( panel_node, b ))
				end
			end
        end
		if panel_node:won() or panel_node:lost() then
            clear_prompt()
			return true
        end
    end
end


-------------------------------------------------------
-- unlock pattern
-------------------------------------------------------

function generate_unlock_pattern(pattern_length, grid_size_x, grid_size_y)
    function add_direction(grid_node, direction)
        return { grid_node[1] + direction[1], grid_node[2] + direction[2] }
    end 
    function pattern_contains(pattern, grid_node)
        for i, n in ipairs(pattern) do
            if n[1] == grid_node[1] and n[2] == grid_node[2] then
                return true
            end
        end
        return false
    end
    function within_grid(grid_node)
        return grid_node[1] >= 0 and grid_node[1] < grid_size_x
           and grid_node[2] >= 0 and grid_node[2] < grid_size_y
    end
    local result = {}
    local all_directions = {
        {1,0}, {1,-1}, {0,-1}, {-1,-1}, {-1,0}, {-1,1}, {0,1}, {1,1}
    }
    while #result < pattern_length do
        ftplog("Generate unlock pattern")
        result = {}
        -- random start location
        result[#result + 1] = { math.random(0, grid_size_x - 1),
                                math.random(0, grid_size_y - 1) }
        ftplog("Generating start path element: ("..result[#result][1]..","..result[#result][2]..")")
        for i=2, pattern_length do
            local last = result[#result]
            -- random walk to adjacent unused node
            -- don't cross paths

            -- calculate available directions
            local available_directions = {}
            for i, dir in ipairs(all_directions) do
                local possible_dest = add_direction(last, dir)
                if within_grid(possible_dest) then
                    if not pattern_contains(result, possible_dest) then
                        -- not occupied
                        available_directions[#available_directions + 1] = dir
                    end
                end
            end

            -- if no directions available, restart walk from beginning
            if #available_directions == 0 then ftplog("Abort pattern, restart"); break end

            -- randomly choose a direction
            local selected_direction = available_directions[math.random(1, #available_directions)]
            local new_grid_node = add_direction(last, selected_direction)
            ftplog("Generating path element ".. (#result + 1)..": ("..new_grid_node[1]..","..new_grid_node[2]..")")
            result[#result + 1] = new_grid_node
        end
    end
    return result
end

function unlock_panel(pattern, grid_size_x, grid_size_y)

	local background_color = vec4(0.7, 0.8, 0.9, 1)
    local grid_def = { dx = 0.15, dy = 0.15, size_x = grid_size_x, size_y = grid_size_y }
	
    local local_root = am.scale(1)
    local show_hint = true
    function local_root:set_show_hint(v)
        show_hint = v
    end

    local hint_nodes = am.scale(1)
    local hint_xys = {}
    function local_root:add_hint_node(xy)
        -- add circle around node
        hint_nodes:append(unlock_make_node_circle(grid_def, xy))
        -- add line between nodes
        if #hint_xys > 0 then
            hint_nodes:prepend(unlock_make_node_line(grid_def, hint_xys[#hint_xys], xy))
        end
        -- record xy coords
        hint_xys[#hint_xys + 1] = xy
    end

    local user_nodes = am.scale(1)
    local user_xys = {}
    function local_root:add_user_node(xy)
        -- bail if this node has already been added
        for i, existing_xy in ipairs(user_xys) do
            if table.tostring(xy) == table.tostring(existing_xy) then
                return
            end
        end
        -- add circle around node
        user_nodes:append(unlock_make_node_circle(grid_def, xy))
        -- add line between nodes
        if #user_xys > 0 then
            user_nodes:prepend(unlock_make_node_line(grid_def, user_xys[#user_xys], xy))
        end
        -- record xy coords
        user_xys[#user_xys + 1] = xy
    end

    function local_root:clear_hint()
        hint_nodes:remove_all()
        for i=1, #hint_xys do
            table.remove(hint_xys, i)
        end
    end
    function local_root:get_grid_def()
        return grid_def
    end
    function local_root:get_pattern()
        return pattern
    end
    function local_root:lost()
        for i, xy in ipairs(user_xys) do
            if i > #pattern or table.tostring(pattern[i]) ~= table.tostring(xy) then
                return true
            end
        end
        return false
    end
    function local_root:won()
        return (not self:lost() and #user_xys == #pattern);
    end
    function local_root:reset()
        user_xys = {}
        user_nodes:remove_all()
    end
    function local_root:start()
        local actions = {}
        if show_hint then actions[#actions+1] = unlock_play_hint() end
        actions[#actions+1] = am.parallel{
            unlock_clear_hint(),
            unlock_user_input(),
        }
        self:action(am.series(actions))
    end

	return local_root:tag"unlock_panel" ^ am.scale(100,100) ^
	{
        am.translate(-0.5, -0.5) ^ {
    		am.rect(shadow_offset,-shadow_offset,1 + shadow_offset,1 - shadow_offset, shadow_color),
            am.rect(0,0,1,1, background_color),
        },
        hint_nodes,
        user_nodes,
        unlock_make_grid(grid_def),
	}
end

function unlock_node_xy_to_local_xy(grid_def, node_xy)
    local dx = grid_def.dx
    local dy = grid_def.dy
    local start_x = -dx * (grid_def.size_x - 1) / 2
    local start_y = -dy * (grid_def.size_y - 1) / 2

    local local_xy = vec2(
        start_x + node_xy[1] * dx,
        start_y + node_xy[2] * dy
    )
    return local_xy
end

function unlock_make_node_line(grid_def, xy1, xy2)
    xy1 = unlock_node_xy_to_local_xy(grid_def, xy1)
    xy2 = unlock_node_xy_to_local_xy(grid_def, xy2)
    local thickness = 0.02
    local line_direction = xy2 - xy1
    local line_length = math.length(line_direction)
    local line_angle_in_radians = math.atan2(line_direction.y, line_direction.x)
    return am.translate((xy1 + xy2) / 2)
        ^ am.rotate(line_angle_in_radians)
        ^ am.translate(-line_length / 2, -thickness / 2)
        ^ am.rect(0, 0, line_length, thickness, vec4(0.2, 0.2, 0.2, 1))
end

function unlock_make_node_circle(grid_def, xy)
	local bg_lit = 0.85
    local bg_col = vec4(0.7*bg_lit, 0.8*bg_lit, 0.9*bg_lit, 1)
    local fg_col = vec4(0.2, 0.2, 0.2, 1)
    local pos = unlock_node_xy_to_local_xy(grid_def, xy)
    return am.group() ^ { 
        am.circle(pos, 0.05, fg_col),
        am.circle(pos, 0.04, bg_col) 
    }
end

function unlock_make_grid(grid_def)
    local dots = {}
    local dot_colour= vec4(0,0,0,1)
    local dot_size = 0.01
    local dx = grid_def.dx
    local dy = grid_def.dy

    for x=0, (grid_def.size_x - 1) do
        for y=0, (grid_def.size_y - 1) do
            local dot_pos = unlock_node_xy_to_local_xy(grid_def, {x, y})
            dots[#dots + 1] = am.circle(dot_pos, dot_size, dot_colour)
        end
    end
	
    return am.scale(1) ^ dots
end

function unlock_play_hint()
    return coroutine.create(function()
        local panel_node = coroutine.yield()
        am.wait(display_message("Remember the Pattern!", vec4(1,0,0,1)))
        for i=1, #panel_node.pattern do
            panel_node:add_hint_node(panel_node.pattern[i])
            am.wait(am.delay(0.5))
        end
        am.wait(clear_message())
    end)
end

function unlock_clear_hint()
    return am.series{
        am.delay(1.5),
        function(panel_node)
            panel_node:clear_hint()
            return true
        end,
        function()
            display_prompt("Trace the Pattern!")
            return true
        end,
    }
end

function unlock_user_input()
    return function(panel_node)
        if win:mouse_down("left") or win:mouse_down("right") then
            panel_node:clear_hint()
            local window_mousepos = win:mouse_position()
            -- hack in the transformation into the panel coordinate space
            local mousepos = vec2(
                window_mousepos.x / 450,
                window_mousepos.y / 450
            )
            local hit_radius = 0.05
            local grid_def = panel_node.grid_def
            for x=0, (grid_def.size_x - 1) do
                for y=0, (grid_def.size_y - 1) do
                    local pos = unlock_node_xy_to_local_xy(panel_node.grid_def, {x, y})
                    if math.length(pos - mousepos) < hit_radius then
                        panel_node:add_user_node({x, y})
                    end
                end
            end
        end
        if panel_node:lost() or panel_node:won() then
            clear_prompt()
			return true
        end
    end
end

-------------------------------------------------------
-- typing panel
-------------------------------------------------------

function typing_panel(word)

	local background_color = vec4(0.9, 0.85, 0.7, 1)
    local text_color = vec4(0.2, 0.2, 0.2, 1)

	local local_root = am.scale(1)
    local show_hint = true
	local word_chars_shown = 0
	local cursor = true
	local user_text = ""
    function local_root:set_show_hint(v)
        show_hint = v
    end
	function local_root:get_word()
		return word
	end
	function local_root:update_text()
		self"text".text = word:sub(0, word_chars_shown)
		if (user_text ~= "") then self"text".text = user_text end
		if cursor then 
			self"text".text = self"text".text .. "_" 
		else
			self"text".text = self"text".text .. " "
		end
	end
	function local_root:set_word_chars_to_show(n)
		if n >= 0 and n <= #word then
			word_chars_shown = n
		end
		self:update_text()
	end
	function local_root:set_cursor(v)
		cursor = v;
		self:update_text()
	end
	function local_root:get_user_text()
		return user_text
	end
	function local_root:set_user_text(v)
		user_text = v
		self:update_text()
	end
    function local_root:lost()
        return (word:sub(0, #user_text) ~= user_text);
    end
    function local_root:won()
        return (not self:lost() and #word == #user_text);
    end
    function local_root:reset()
        user_text = ""
        self:update_text()
    end
    function local_root:start()
        ftplog("Starting typing with hints = " .. tostring(show_hint))
        local actions = {}
        if show_hint then actions[#actions+1] = typing_play_hint(); end
        actions[#actions+1] = am.parallel{
            typing_clear_hint(),
            typing_user_input(),
        }
        self:action(am.series(actions))
    end
	
    local_root:tag"typing_panel"

	return local_root ^ am.scale(100,100) ^ am.translate(-0.5, -0.5) ^ am.group{
		am.rect(shadow_offset,-shadow_offset,1 + shadow_offset,1 - shadow_offset, shadow_color),
		am.rect(0,0,1,1, background_color),
		am.translate(0.5, 0.5) ^ am.scale(2) ^ am.scale(1/0.8) ^ am.scale(1/400, 1/300) ^ am.text("_", text_color),
	}
end

function typing_play_hint()
	return coroutine.create(function()
		local node = coroutine.yield()

        am.wait(display_message("Remember the Word!", vec4(1,0,0,1)))
		-- Type out word
		for i=1, #node.word do
			am.wait(am.delay(0.25))
			node.word_chars_to_show = i
		end
		am.wait(am.delay(1.5))
		node.cursor = false
	end)
end

function typing_clear_hint()
    return am.series{
        -- Show word for a bit
        am.delay(1),
        function(node)
            -- Clear ready for input
            node.word_chars_to_show = 0
            node.cursor = true
            return true
        end,
        function()
            display_prompt("Type the Word!")
            return true
        end,
    }
end

function typing_user_input()
	return function(panel_node)
		for i,letter in ipairs({"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}) do
			if win:key_pressed(letter) then
				panel_node.user_text = panel_node.user_text .. letter
                if panel_node:lost() or panel_node:won() then
                    clear_prompt()
					return true
                end
			end
		end
	end
end

-------------------------------------------------------
-- panels global array
-------------------------------------------------------
math.randomseed(os.time())
math.random() -- without this, the first math.random(x,y) is always the same!

panels = { current = 1, so_far = 0, count = 0, nodeTable = {}, nodeGroup = am.group() }
messageGroup = am.group()
promptGroup = am.group()
stampGroup = am.group()

function docked_position(node)
    return vec3(-400 + (node.p.index * 40), 320, 0)
end

function docked_scale(node)
    return 0.25
end

function input_position(node)
    return vec3(0)
end
function input_scale(node)
    return 4.5
end

function PanelScaleControl(node)

	if node.p.state == PanelState.docked then
		node.p.scale = 0.25
	elseif node.p.state == PanelState.input then
		node.p.scale = 4.5
	end	
	
	node.scale = vec3(node.p.scale)
end

function PanelPosControl(node)
	dockedPos = vec3(-400 + (node.p.index * 40), 320, 0)
	
	if node.p.state == PanelState.docked then
		node.p.pos = dockedPos
	elseif node.p.state == PanelState.input then
		node.p.pos = vec3(0)
	end
	
	node.position = node.p.pos
end

PanelState =
{
	docked = 1,
	animOn = 2, 
	teaching = 3,
	input = 4,
	animOff = 5,
}

PanelActivity = 
{
	word = 1,
	pattern = 2,
	drums = 3,
	--
	count = 3,
}

function panels.MakeEmpty()
    panels.current = 1
    panels.so_far = 0
    panels.count = 0
	for b=1, #panels do
		panels[b] = nil
        panels.nodeTable[b] = nil
	end
    panels.nodeGroup:remove_all()
end


function panels.AddOne(activity)
	
	if( activity == nil or activity > PanelActivity.count ) then
		activity = math.random(1,PanelActivity.count)
	end
	
	local p =
	{	-- here we define the panel table parameters
		-- these are used to communicate from the panel to the game level
		-- we'll give them all default values rather than nil
		scale = 0,
		pos = vec3( win.width, win.height, 0 ) * 0.5,
		state = PanelState.docked,
		activity = activity,
		node = am.translate(0,0):action(PanelPosControl)
			^ am.scale(0):action(PanelScaleControl),
	}
	
	scaleNode = p.node"scale"
	
	if activity == PanelActivity.word then
        local randomword = dict[math.random(#dict)] 
        p.game = typing_panel(randomword)
	elseif activity == PanelActivity.pattern then
        local grid_size_x = 4
        local grid_size_y = 4
        local pattern_length = 4
        local pattern = generate_unlock_pattern(pattern_length, grid_size_x, grid_size_y)
        p.game = unlock_panel(pattern, grid_size_x, grid_size_y)
	elseif activity == PanelActivity.drums then
        p.game = drum_panel()
	end
    scaleNode = scaleNode ^ p.game
	
	-- provide nodes a getter to parent
	function p.node:get_p() return p end
	function scaleNode:get_p() return p end
	
	-- last of all, add p into the table and the node to the scene table
	panels[#panels + 1] = p
	p.index = #panels
	panels.nodeTable[#panels] = p.node
    panels.nodeGroup:append(p.node)
	
    local pos = docked_position(p.node)
    panels.nodeGroup:prepend(am.translate(pos.x, pos.y) ^ am.scale(0.25) ^
		am.rect(-46,-46,46,46,vec4(0,0,0,0.4)))
    p.node.hidden = true
end

-------------------------------------------------------
-- panel management functions
-------------------------------------------------------
function set_active_panel(panel)
    panel.state = PanelState.input
end

function set_docked_panel(panel)
    panel.state = PanelState.docked
end

function more_panels()
    return panels.current + 1 <= #panels
end

function get_current_panel()
    return panels[panels.current]
end

function get_next_panel()
    if more_panels() then
        return panels[panels.current + 1]
    else
        return nil
    end
end

function rewind_to_first_panel()
    local current_panel = get_current_panel()
    am.wait(animate_to_dock(current_panel))
    set_docked_panel(current_panel)

    panels.current = 1
    local first_panel = get_current_panel()
    am.wait(animate_from_dock(first_panel))
    set_active_panel(first_panel)
    return first_panel
end

function advance_panel()
    local current_panel = get_current_panel()
    am.wait(animate_to_dock(current_panel))
    set_docked_panel(current_panel)

    local next_panel = nil
    if more_panels() then
        panels.current = panels.current + 1
        next_panel = get_current_panel()
        next_panel.node.hidden = false
        coroutine.yield(false)
        am.wait(animate_from_dock(next_panel))
        set_active_panel(next_panel)
    end
    return next_panel
end

function first_panel()
    panels.current = 1
    local first_panel = get_current_panel()
    first_panel.node.hidden = false
    coroutine.yield(false)
    am.wait(animate_from_dock(first_panel))
    set_active_panel(first_panel)
    return first_panel;
end

function generate_sequence(panel_count)
    ftplog("Clear panels")
    panels.MakeEmpty()
    for n=1, panel_count do
        ftplog("Add panel")
        panels.AddOne()
    end
end

-------------------------------------------------------
-- Animations
-------------------------------------------------------
function animate_to_dock(panel)
    return am.series{
        function() panel.state = PanelState.animOn; return true end,
        am.parallel{
            am.tween(panel.node.p, 1, { scale = docked_scale(panel.node) }),
            am.tween(panel.node.p, 1, { pos = docked_position(panel.node) }),
        },
        function() panel.state = PanelState.docked; return true end,
    }
end

function animate_from_dock(panel)
	-- tidy up, these two can get left on screen if you fail while they're animating
	clear_prompt()
	clear_message()
	
    ftplog("From dock " .. tostring(panel))
	win.scene"background":action( am.play(sounds.swipe) )
    return am.series{
        function() panel.state = PanelState.animOff; return true end,
        am.parallel{
            am.tween(panel.node.p, 1, { scale = input_scale(panel.node) }),
            am.tween(panel.node.p, 1, { pos = input_position(panel.node) }),
        },
        function() panel.state = PanelState.input; return true end,
    }
end

function flash_border(panel, colour)
    local target = panel.game"rect"
    local original_colour = target.color
    return am.series{
        am.tween(target, 0.25, {color = colour}, am.ease.quadratic),
        am.tween(target, 0.5, {color = original_colour}, am.ease.quadratic), 
    }
end

function win_stamp()
    local superlatives = {"Nice!", "Awesome!", "Radical!", "Super!", "Sweet!"}
    local text = superlatives[math.random(1, #superlatives)]
    local delay = 2
    ftplog("Show win stamp")
    local stampNode = am.translate(0,0):tag"t" ^ am.rotate(0):tag"r" ^ am.scale(10):tag"s" ^
        am.group(
            am.rect(-50, -10, 50, 10, vec4(0,0.7,0,1)),
            am.translate(0, 3) ^ am.text(text, vec4(0,0,0,1))
        )
    local stampAngle = (math.random() * math.pi / 2) - (math.pi / 4)
    local stampAction = am.series{
        am.parallel{
            am.tween(stampNode"r", 0.5, { angle = stampAngle }),
            am.tween(stampNode"s", 0.5, { scale = vec3(4) }, am.ease.quadratic),
        },
        am.delay(delay),
        am.parallel{
            am.tween(stampNode"t", 1, { position2d = vec2(math.random(0, 100) - 50, -800) }, am.ease.quadratic),
            am.tween(stampNode"r", 1, { angle = -stampAngle }),
        },
        function()
            ftplog("Remove win stamp")
            messageGroup:remove(stampNode)
            return true
        end,
    }
    stampNode:action(stampAction)
    stampGroup:append(stampNode)
    return stampAction
end

prompt_animating = false

function display_prompt(text, bg_colour)
	ftplog(text)
	clear_message()
    if not bg_colour then bg_colour = vec4(0,0,0,1) end
    ftplog("Show prompt "..text)
    local promptNode = am.translate(0,-600):tag"t" ^ am.scale(2):tag"s" ^ 
        am.translate(0,-15) ^
		am.group(
            am.rect(-200, -10, 200, 10, bg_colour), 
            am.translate(0, 3) ^ am.text(text, vec4(1,1,1,1))
        )
    local promptAction = am.series{
        function() prompt_animating = true; return true end,
        am.tween(promptNode"t", 0.1, { position2d = vec2(0, 0) }, am.ease.out(am.ease.quadratic)),
        function() prompt_animating = false; return true end,
    }
    promptNode:action(promptAction)
    promptGroup:append(promptNode)
    return promptAction
end

function clear_prompt()
    local promptNode = promptGroup"t"
    ftplog("Clear current prompt")
    -- Default to an empty action for a calling coroutine
    -- that wants to wait on the prompt clear animation
    local promptAction = function() return true end
    if promptNode then
        promptAction = am.series{
            function() return not prompt_animating end,
            am.tween(promptNode"s", 0.1, { scale = vec3(0) }, am.ease.quadratic),
            function()
                ftplog("Remove prompt")
                promptGroup:remove(promptNode)
                return true
            end,
        }
        promptNode:action(promptAction)
    end
    return promptAction
end

message_animating = false

function display_title()
	title_text = [[- FROM THE TOP -
	
	You'll be shown a panel containing a pattern,
	rhythm or word. Remember it, then recreate it.
	
	You'll need to learn more panels, each time
	reproducing all the ones you've learnt so
	far, in order, from the top.
	
	A game by @_benbradley and @fierydrake for
	Global Game Jam 2016.
	
	CLICK TO BEGIN]]
    ftplog("Show Title")
    local messageNode = am.translate(0,0):tag"t" ^ am.scale(0):tag"s" ^
		am.translate(0, -100) ^
        am.group(
            am.rect(-200, -130, 200, 130, vec4(0,0,0,0.6)), 
            am.translate(0, 3) ^ am.text(title_text, vec4(1,1,1,1))
        )
    local messageAction = am.series{
        function() message_animating = true; return true end,
        am.parallel{
            am.tween(messageNode"s", 0.25, { scale = vec3(2) }, am.ease.out(am.ease.quadratic)),
            am.tween(messageNode"t", 0.1, { position2d = vec2(0, 0) }, am.ease.out(am.ease.quadratic)),
        },
        function() message_animating = false; return true end,
    }
    messageNode:action(messageAction)
    messageGroup:append(messageNode)
    return messageAction
end

function display_message(text, bg_colour)
    if not bg_colour then bg_colour = vec4(0,0,0,1) end
    ftplog("Show message "..text)
    local messageNode = am.translate(0,100):tag"t" ^ am.scale(0):tag"s" ^ 
		am.translate(0,5) ^
        am.group(
            am.rect(-200, -10, 200, 10, bg_colour), 
            am.translate(0, 3) ^ am.text(text, vec4(1,1,1,1))
        )
    local messageAction = am.series{
        function() message_animating = true; return true end,
        am.parallel{
            am.tween(messageNode"s", 0.25, { scale = vec3(2) }, am.ease.out(am.ease.quadratic)),
            am.tween(messageNode"t", 0.1, { position2d = vec2(0, 0) }, am.ease.out(am.ease.quadratic)),
        },
        function() message_animating = false; return true end,
    }
    messageNode:action(messageAction)
    messageGroup:append(messageNode)
    return messageAction
end

function clear_message()
    local messageNode = messageGroup"t"
    ftplog("Clear current message")
    -- Default to an empty action for a calling coroutine
    -- that wants to wait on the message clear animation
    local messageAction = function() return true end
    if messageNode then
        messageAction = am.series{
            function() return not message_animating end,
            am.parallel{
                am.tween(messageNode"s", 0.25, { scale = vec3(0) }, am.ease.quadratic),
                am.series{
                    am.delay(0.15),
                    am.tween(messageNode"t", 0.1, { position2d = vec2(0, 100) }, am.ease.quadratic),
                },
            },
            function()
                ftplog("Remove message")
                messageGroup:remove(messageNode)
                return true
            end,
        }
        messageNode:action(messageAction)
    end
    return messageAction
end


-------------------------------------------------------
-- Game control
-------------------------------------------------------
win.scene = am.group{
	am.scale(4) ^ am.sprite("backseries.png"):tag"background",
	am.group() ^ panels.nodeGroup,
    am.translate(0, 250) ^ messageGroup,
    am.translate(0, -250) ^ promptGroup,
    stampGroup
}

function forclick()
	return win:mouse_pressed("left") or win:mouse_pressed("right")
end

-------------------------------------------------------
-- main game loop
-------------------------------------------------------

win.scene:action(coroutine.create(function()
    local sequence_length = 12
    am.wait(display_title)
    am.wait(forclick)
    am.wait(clear_message())
    while true do
        ftplog("Generating sequence of length "..sequence_length)
        generate_sequence(sequence_length)
        ftplog("Start sequence")
        first_panel().game:start()
        ftplog("Start game loop proper")
        while true do
            local active_panel = get_current_panel()
            if active_panel.game:won() then			
                am.wait(flash_border(active_panel, vec4(0, 1, 0, 1)))
				win.scene"background":action( am.play(sounds.coin) )
                if panels.so_far < panels.current then
                    ftplog("NEW PANEL DONE, Panels sofar ".. panels.so_far..", current "..panels.current)
                    -- completed new panel!
                    panels.so_far = panels.current
                    active_panel.game.show_hint = false
					if panels.so_far ~= 1 then
						am.wait(display_message("From The Top!..."))
						am.wait(am.delay(1))
					end
					clear_message()
					if panels.so_far ~= 1 then
						local next_panel = rewind_to_first_panel()
						active_panel.game:reset()
						next_panel.game:start()
					end
                else
                    ftplog("OLD PANEL REDONE: Panels so far ".. panels.so_far..", current "..panels.current)
                    -- completed panel
                    local next_panel = get_next_panel()
                    if next_panel then
                        if panels.so_far < next_panel.index then
                            -- starting a new panel
                            am.wait(win_stamp())
                            ftplog("Win stamp done, new panel message")
                            am.wait(display_message("New Panel"))
                            advance_panel()
                            am.wait(am.delay(1))
                            am.wait(clear_message())
                            ftplog("New panel message done");
                        else
                            advance_panel()
                        end
                        active_panel.game:reset()
                        next_panel.game:start()
                    else
                        ftplog("Sequence won!")
                        am.wait(win_stamp())
                        
						-- simple win screen
						am.wait(clear_message())
						am.wait(clear_prompt())
						am.wait(display_prompt("Game Complete! Well Remembered!"))
						am.wait(display_message("- CONGRATULATIONS -", vec4(1,0,0,1)))
						am.wait(am.delay(4))
						clear_message()
						am.wait(clear_prompt())
                        break
                    end
                end
            elseif active_panel.game:lost() then
				win.scene"background":action( am.play(sounds.bad) )
                am.wait(flash_border(active_panel, vec4(1, 0, 0, 1)))
                ftplog("Sequence failed!")
				
                -- simple failure screen
				am.wait(clear_message())
				am.wait(clear_prompt())
				am.wait(display_prompt("You Made One Mistake"))
				am.wait(display_message("- GAME OVER -", vec4(1,0,0,1)))
				am.wait(am.delay(4))
				clear_message()
				am.wait(clear_prompt())
                break
            else
                -- Nothing to do, yield for next frame
                coroutine.yield(false)
            end
        end
    end
end))
