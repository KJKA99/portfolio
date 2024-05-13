-- kebje541: Samarbetat med jambe108, James Beise, samma program
with Ada.Text_IO;                       use Ada.Text_IO;

procedure Course_Information_System_Used_In_Course is

begin
  Put_Line("Placera ett X inuti den/de ""[ ]"" som motsvarar korrekt(a) alternativ om inte annat");
  Put_Line("anges. Det kan finnas flera korrekta alternativ.");
  New_Line;

  Put_Line("Var hittar jag information om vilka uppgifter som ingår i kursen?");
  Put_Line("  [ ] I Lisam via Studieinfo");
  Put_Line("  [X] På kurshemsidan via Kurskartan");
  Put_Line("  [ ] I mail från assistenten");
  New_Line;

  Put_Line("Vem skall jag kontakta om jag har problem med programmeringen?");
  Put_Line("  [ ] Examinator");
  Put_Line("  [X] Assistenten jag har tilldelad");
  Put_Line("  [ ] Alla assistenter");
  Put_Line("  [ ] Helpdesk");
  Put_Line("  [ ] Kursadministratören");
  New_Line;

  Put_Line("Kan jag ÖVA på vilken uppgift som helst när som helst?");
  Put_Line("  [X] Ja");
  Put_Line("  [ ] Nej");
  New_Line;

  Put_Line("Kan jag SKICKA IN vilken uppgift som helst till automaträttningen när som helst?");
  Put_Line("  [ ] Ja");
  Put_Line("  [X] Nej");
  New_Line;

  Put_Line("Hur vet jag vilken/vilka uppgifter som går att ""skicka in"" för ""bedömning"" just nu?");
  Put_Line("  [X] Man ser på färgen på uppgifterna i kurskartan");
  Put_Line("  [ ] Det står att just denna uppgift är ""upplåst""");
  Put_Line("  [ ] Det finns ingen sådan information");
  New_Line;

  Put_Line("På sidan med kurskartan finns en tabell med olika färger. Vilken färg representerar vad");
  Put_Line("i kurskartan?");
  Put_Line("  [X] GUL        = ""Upplåst"" ej inskickad uppgift");
  Put_Line("  [ ] MÖRKGRÖN   = ej godkänt vid ""Assistenträttningen""");
  Put_Line("  [ ] SVART      = uppgiften går inte att komma åt innan den ""låses upp""");
  Put_Line("  [X] LJUSORANGE = ej godkänt av ""Automaträttningen""");
  Put_Line("  [X] MÖRKGRÖN   = uppgift som blivit godkänd vid ""Assistenträttningen""");
  Put_Line("  [ ] LJUSGRÅ    = uppgift som är ""låst""");
  Put_Line("  [X] VIT        = ""informationsruta"" = ej uppgift att göra");
  Put_Line("  [X] MÖRKGRÅ    = Uppgift som är frivillig (men materialet denna täcker");
  Put_Line("                   ingår i kursen)");
  Put_Line("  [X] LJUSBLÅ    = ""Upplåst"" uppgift om tidigare uppgifter är minst automatgodkända");
  Put_Line("  [X] Alla uppgifter som finns i kurskartan går att komma åt oavsett färg");
  Put_Line("  [ ] Alla uppgifter fås automaträttning på oavsett om de är ""upplåsta"" eller ej");
  Put_Line("  [ ] När man fått minst automatgodkänt på alla uppgifter innan en specifik uppgift");
  Put_Line("      blir denna alltid LJUSGRÅ");
  Put_Line("  [X] Den stora GRÅ rutan längst till höger innehåller de moment som blir rapporterade");
  Put_Line("      i LADOK när du klarat av allt som leder fram till denna och när alla OLIKA moment");
  Put_Line("      är MÖRKGRÖNA är kursen avklarad");
  New_Line;

  Put_Line("Vad är en O-uppgift?");
  Put_Line("  [ ] En uppgift som skall göras i kursen där man normalt sett arbetar ensam (oftast");
  Put_Line("      det som kan jämställas med en ""labserie"" i andra kurser)");
  Put_Line("  [X] En uppgift som skall göras i kursen där man normalt sett arbetar i grupp om 2");
  Put_Line("      (oftast det som kan jämställas med en ""labserie"" i andra kurser)");
  Put_Line("  [X] Generellt sett en uppgift som är till för att man skall lära sig något för att");
  Put_Line("      senare kunna bli examinerad och få betyg i kursen");
  New_Line;

  Put_Line("Vad är sant av nedanstående?");
  Put_Line("  [X] Du behöver veta vilken ""assignment"" du skall skicka in din uppgift på i SC och");
  Put_Line("      den informationen finner du på kurshemsidan under ""Assignments i SC"" i menyn");
  Put_Line("  [X] Man måste skriva in en KORREKT samarbetskommentar i minst en av sina filer när");
  Put_Line("      man skickar in i SC");
  Put_Line("  [X] Alla som samarbetar måste skicka in samma program i SC (med undantag för den s.k.");
  Put_Line("      samarbetskommentaren)");
  Put_Line("  [X] Man bör gå på alla FÖ och LE");
  Put_Line("  [ ] FÖ-filmerna på hemsidan täcker allt som ingår i kursen");
  Put_Line("  [X] Man skall endast gå på de programmeringsstugor som hör till ens egen grupp");
  Put_Line("  [ ] Man kan skicka in O-uppgifter dygnet runt");
  Put_Line("  [X] Om någon av dina samarbetspartners inte skickar in sin uppgift rättas inte");
  Put_Line("      din uppgift av assistent förrän alla de andra skickat in uppgiften (du hamnar i");
  Put_Line("      ""väntekö"" för rättning)");
  Put_Line("  [ ] Det är helt ok att skicka in uppgifter efter deadline i kursen (står på hemsidan");
  Put_Line("      när denna är, kolla den redan nu och för in i ditt personliga schema)");
  Put_Line("  [ ] Det är smart att ha en samarbetspartner som är bättre än du själv");
  Put_Line("  [ ] Det är helt ok att kopiera programkod från en kompis eller från annat håll");
  Put_Line("  [X] Det är bra att fixa eventuella kompletteringar man får så fort det går");
  New_Line;
  
  Put_Line("Denna uppgift är den första att skicka in för automaträttning. För att ""garanterat""");
  Put_Line("kunna ge respons med ett så kallat ""kompletteringsmeddelande"" behöver du därför");
  Put_Line("skriva in det hemliga lösenordet (som du ju inte vet just nu och därför blir det ju");
  Put_Line("""fel"" första gången).");
  New_Line;

  Put_Line("OBS! Stava rätt på lösenordet. Varje tecken är viktigt att kontrollera. Noggrannhet är");
  Put_Line("den absolut viktigaste saken som hjälper dig till att snabbare komma igenom uppgifterna");
  Put_Line("senare i kursen.");
  New_Line;

  Put_Line("Skriv in det hemliga lösenordet här: [Programmering är KUL]");
end Course_Information_System_Used_In_Course;
