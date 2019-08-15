function madLib(verb, adjective, noun) {
    let newVerb = verb.toUpperCase
    let newAdjective = adjective.toUpperCase
    let newNoun = noun.toUpperCase
    return console.log(`We shall ${newVerb} the ${newNoun} ${newAdjective}`);
};

madLib("bite", "fiercely", "taco")