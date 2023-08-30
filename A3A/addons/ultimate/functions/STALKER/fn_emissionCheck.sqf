waitUntil {sleep 1; !(isNil "tts_emission_emissionIsActive")};

hintSilent ("active_" + str (random 5));

waitUntil {sleep 1; tts_emission_emissionIsActive isEqualTo false};

hintSilent ("not_active_" + str (random 5));