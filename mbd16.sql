DROP TABLE team;
DROP TABLE companies;

CREATE TABLE team (
    name VARCHAR(255) NOT NULL,
    position VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    linkedin VARCHAR(255),
    image VARCHAR(255) NOT NULL
) ENGINE = InnoDB;

INSERT INTO team (name, position, email, linkedin, image) VALUES
('Niklas Gustavsson', 'Projektledare', 'niklas.gustavsson@mediasbranschdag.com','https://se.linkedin.com/in/niklas-gustavsson-2a6876104/sv','niklas.jpg'),
('Sabina von Essen', 'Ansvarig för Näringslivsgruppen', 'sabina.von.essen@mediasbranschdag.com','https://se.linkedin.com/in/sabina-von-essen-5bb976102','sabina.jpg'),
('Christian Abdelmassih', 'Företagskontakt', 'christian.abdelmassih@mediasbranschdag.com','https://se.linkedin.com/in/christianabdelmassih','christian.jpg'),
('David Tranæus', 'Företagskontakt', 'david.tranaeus@mediasbranschdag.com','https://se.linkedin.com/in/david-tranaeus-0834a7114','david.jpg'),
('Marcus Hogler', 'Ansvarig för Kommunikationsgruppen', 'marcus.hogler@mediasbranschdag.com','','marcus.jpg'),
('Emil Westin', 'Webmaster', 'emil.westin@mediasbranschdag.com','https://se.linkedin.com/in/emil-westin-087376b5','emil.jpg'),
('Gabriella Sanches Karlsson', 'Kommunikation & PR', 'gabriella.s.karlsson@mediasbranschdag.com','https://se.linkedin.com/in/gabriella-sanchez-karlsson-784b2866','gabriella.jpg'),
('Sofia Blomgren', 'Kommunikation & PR', 'sofia.blomgren@mediasbranschdag.com','https://se.linkedin.com/in/sofia-blomgren-543985120','sofia.jpg'),
('Evelina Hedberg', 'Sittningsansvarig', 'evelina.hedberg@mediasbranschdag.com','','evelina.jpg'),
('Emma Olsson', 'Sittningsansvarig', 'emma.olsson@mediasbranschdag.com','https://se.linkedin.com/in/emma-olsson-17b531b2','emmao.jpg'),
('Glenn Schmitz', 'HR', 'glenn.schmitz@mediasbranschdag.com','https://se.linkedin.com/in/glenn-schmitz-44b65048','glenn.jpg'),
('Beata von Grothusen', 'Sponsansvarig', 'beata.v.grothusen@mediasbranschdag.com','','beata.jpg'),
('Linnéa Lennartsson', 'Logistikansvarig', 'linnea.lennartsson@mediasbranschdag.com','https://se.linkedin.com/in/linnéa-lennartsson-798251a5','linnea.jpg'),
('Emma Igelström', 'Logistikansvarig', 'emma.igelstrom@mediasbranschdag.com','','emmai.jpg');


CREATE TABLE companies(
    id VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    logo VARCHAR(255) NOT NULL,
    website VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
) ENGINE = InnoDB;

INSERT INTO companies (id, name, description, logo, website) VALUES
('kaplan', 'Kaplan', "Kaplan Loyalty Management is Scandinavia's leading Loyalty Management firm. We bring in-depth loyalty management services to our clients, including technological, strategic, analytical and creative solutions.\n\nFounded in 1987, we have close to 30 years' experience of focusing on just one thing – maximizing value in our client's customer relationships and databases. We create and shape the one-to-one customer experience of tomorrow in a Marketing Automation process known to us as 'True Personalization'.", 'kaplan.svg', "www.kaplan.se"),
('sverigesingenjorer', 'Sveriges Ingenjörer', 'Ditt liv som ingenjör börjar nu!\n\nSveriges Ingenjörer välkomnar dig till vårt unika nätverk med 144 000 ingenjörsmedlemmar. Som studentmedlem erbjuder vi dig träning och stöd inför skarpt läge med allt från cv-granskning och karriärcoachning till hjälp med intervjuteknik. Du tar även del av landets bästa lönestatistik, digitaltidningen Ny Teknik samt aktiviteter som hålls vid ditt lärosäte. Dessutom har du möjlighet att teckna förmånliga försäkringar och du har tillgång till experthjälp om något skulle gå snett på sommar eller extrajobbet.\n\nVälkommen att börja ditt liv som ingenjör med oss!','sverigesingenjorer.png','www.sverigesingenjorer.se'),
('netinsight', 'Net Insight', 'Net Insights vision är att möjliggöra en live och interaktiv TV-upplevelse för alla världen över. Vårt mål är att leda utvecklingen och möjliggöra en global mediemarknadsplats där live-innehåll kan delas och interaktion bland TV-publiken kan ske i realtid. Vi vill skapa medieupplevelser för framtiden, med fokus på innehåll. Net Insight levererar produkter, mjukvara och tjänster för effektiv, högkvalitativ medietransport, tillsammans med effektiv resursplanering, som skapar en förbättrad TV-upplevelse.\n\nNet Insights erbjudande omfattar hela mediespektrat, från TV-kameror och TV-studior, ända fram till TV-konsumenter. Våra lösningar gynnar nätoperatörer och TV- och produktionsbolag genom att sänka den totala ägandekostnaden, förbättra deras arbetsflöden och ge dem möjlighet att hitta nya affärsmöjligheter. Fler än 500 ledande kunder levererar affärskritiska medietjänster med Net Insights produkter i över 60 länder. Net Insight är noterat på Nasdaq Stockholm.','netinsight.png','www.netinsight.net'),
('schibsted', 'Schibsted','Schibsted Media Group is an international media group with 6800 employees in over 30 countries. From Mexico to Malaysia, from Brazil to Norway – millions of people interact with Schibsted companies every day. We ensure that new and old sofas can be sold. News reports are read and watched when, where and how consumers want. Weather reports are checked with quick online services. Carpenters are found through a couple of clicks. Prices are compared and the latest fashion is browsed. These examples are just some of the ways our services empower people all around the world in their daily lives.\n\nOur philosophy is built on keeping an open mind, challenging ourselves and the status quo. The goal is to shape the future of our industry. To achieve this we recruit attitude. Are you driven and ambitious? Do you have the courage to face new challenges?', 'schibsted.png', 'www.schibsted.com'),
('dynabyte', 'Dynabyte', 'Dynabyte är ett IT-konsultbolag med specialistkunskap inom systemutveckling. Vi är ett härligt gäng på drygt 75 personer som älskar att dela med oss av vår kunskap genom exempelvis seminarier, konferenser och workshops! Samtidigt strävar vi efter att var och en av oss ska ges möjlighet att utvecklas i sin egen takt och utifrån sina egna mål och drömmar. Detta gör vi genom att arbeta med individuell coachning och utvecklingsplaner för samtliga av våra anställda!\n\nVårt populära traineeprogram har funnits sedan 2007 och startar två gånger per år, i februari och september. Under dina sex månader som trainee på Dynabyte arbetar du med de allra senaste teknikerna i ett större kundprojekt, och med stöttning av våra seniora utvecklare och mentorer sköter ni projektets hela utveckling. Parallellt med projektet deltar du även i flertalet utvecklande tekniska utbildningar och workshops.\n\nSedan vi för första gången startade vårt traineeprogram har vi utvecklat några av de allra bästa IT-konsulterna i branschen. Vårt program ger dig ett stort försprång gentemot andra i branschen, och efter programmets slut ges du möjlighet att arbeta med tekniska utmaningar hos flera av Sveriges hetaste företag!', 'dynabyte.png','www.dynabyte.se'),
('myacademy', 'My Academy','My Academy startade år 2005 och är idag Sveriges största företag inom läxhjälp i hemmet och online. Företaget präglas av hög ambition, gott humör och att ständigt vilja ge “det lilla extra” till kunder, studiecoacher och medarbetare. Vi är 20 medarbetare som sitter i fina lokaler i centrala Stockholm.\n\nMy Academy har omkring tusentals studiecoacher i nätverket idag och söker löpande personer som vill ha ett flexibelt och roligt extrajobb i kombination med studier.','myacademy.png','www.myacademy.se'),
('river', 'River', "As a hybrid agency, we take pride in providing our clients with a bridge between digital innovation and advertising. Digital communication is the core of everything we do. Our work ranges from global communication platforms to pan-European TVC's, digital product innovations, social community management, game development and games for marketing.\n\nWe have grown organically alongside our clients for the past eighteen years. Today we deliver high-value strategy, creativity and production for Nike (Global), EA Games (Global), Nokia (Europe), Philips (Europe), KLM (Global) and many more.\n\nRiver is part of the Intellecta Group.", 'river.png', 'www.river.se'),
('isotop', 'Isotop','Isotop är en digital teknikbyrå som bygger webbplatser, e-handelstjänster och mobila applikationer. Vår filosofi är att teknik ska få ta ett större utrymme tidigare i alla digitala satsningar. Därför jobbar vi med teknisk analys, teknisk strategi och att utveckla och optimera våra kunders digitala produkter.\n\nHos oss jobbar producenter, arkitekter, utvecklare och kvalitetsansvariga i team och agilt. Det betyder att vi fokuserar på att interagera och samarbeta, vara beredda på förändringar och få fram fungerande produkter.\n\nDet blir bäst resultat och är som roligast när vi:\n\t• får jobba med meningsfulla och utmanande uppdrag\n\t• arbetar på ett hållbart sätt med en balans mellan jobb och fritid\n\t• får jobba i team med stor frihet och mycket ansvar\n\t• är delaktiga och får påverka vår arbetsplats i stort och smått\n\nHåller du med? Då borde du #jobbapåisotop. Vi är intresserade av att träffa dig för den kunskap, utbildning och erfarenhet du har nu. Men vi anställer dig för vad du kommer att lära dig under de kommande åren. Kom förbi oss på Medias Branschdag så berättar vi mer!','isotop.svg','www.isotop.se'),
('ibminteractive','IBM Interactive Experience','Vi tänker större än en byrå och mer kreativt än ett konsultföretag med befogenhet att integrera hela systemet. Det gör att vi på Interactive Experience (iX) kan förvandla stora idéer till skalbara upplevelser genom IBM Design Thinking, ett agilt förhållningssätt och integrerade system. iX har designstudios i ett flertal länder där vi kan hjälpa våra kunder att sätta sina kunder i centrum för vårt gemensamma arbete. Från strategi, kreativ design och skalbar digital handel, mobila och bärbara plattformar sitter våra team tillsammans med kunderna för att skapa innovationer som driver resultat.\n\niX är en del av IBM, ett globalt företag med över 300 000 anställda världen över finns möjlighet till en internationell karriär och informationsutbyte med kollegor över landsgränserna. Om erfarenhet inom ett område inte finns inom landet finns det alltid en kollega med expertkunskap som man kan kontakta utanför landsgränserna. Ytterligare fördelar med att vara en del av IBM är t.ex. möjligheten att gå på kurser och utbildningar inom Agila metoder, Design Thinking och konsultmannaskap, som ger nya kunskaper och kontakter inom arbetslivet.','ibmx.png','www-05.ibm.com/employment/emea/consultingbydegrees/index.html'),
('ist', 'IST',"Welcome to the hero factory!\n\nAre you happy with what you're doing? Would you like to be doing something that really matters? Something that makes a difference to our society, our children and our future?\n\nWelcome to IST. We change the way schools work and make sure everyone gets the chance to learn more.\n\nIST has worked side by side with schools for more than 30 years. We have accompanied each other, developed together, challenged each other and found new ways forward. We have delivered IT solutions and services aimed at making life and work better for everyone involved with schools. We know more about schools than most. We have a huge amount of collected experience within our company and half of our employees have a background as teachers or school leaders. What we want to achieve with our work is for everyone in society to have the opportunity to learn as much as possible. Therefore, we have formulated our vision as follows:\n\n'Every day we help build the schools of tomorrow and a future in which we can all learn more.'\n\nIST is available in Sweden, Norway and Denmark, where we have about half the population are our customers and users. Our headquarters are in Vaxjo where about 130 people work. Our other office in Sweden is located in Stockholm, with about ten employees. Our Norwegian office is in Oslo, where approximately 50 people work. In Denmark our office is in Roskilde, where there are also about 50 people working. At IST you will find, amongst others, product managers, business consultants, support staff, software developers, project managers, business developers, technicians and Key Account Managers. Basically, we are all problem solvers who, in different ways, try to meet our customers' challenges.",'ist.png','www.ist.com'),
('knowit', 'Knowit', 'Knowit AB (publ) är ett konsultbolag som, inom den allt snabbare digitaliseringen, skapar unika kundvärden genom att erbjuda gränsöverskridande leveranser från tre affärsområden, Experience, Insight och Solutions. Det är förmågan att kombinera kompetenser inom design och kommunikation, managementkonsulting samt it, som skiljer oss från andra konsultbolag. För oss på Knowit är varje teknikskifte en möjlighet till utveckling, både för den enskilde konsulten och företaget i stort. Vi är fortfarande precis lika nyfikna – och redo för förändring – som vid starten 1990. Genom att förena kreativ styrka och strategisk kompetens med passion för teknologi tänker vi både nytt och annorlunda. Våra kommunikationsexperter, managementkonsulter och it-specialister hittar alltid nya vägar framåt.\n\nKnowit är idédrivet och uppmuntrar innovation, entreprenörskap och personligt engagemang. Varje medarbetare har eget beslutsmandat och kan växa både i sin yrkesroll och som människa. Vårt sätt att arbeta, och hur vi organiserar oss, matchar dagens föränderliga värld med nya arbetssätt, nya affärsmodeller och ny teknologi. Knowit är alltid med när det händer, i ett ständigt expanderande digitalt universum. Vår kultur präglas av öppenhet, förståelse för kundens affär, hög specialistkompetens och en vilja att ständigt utvecklas. Vi ser våra kunders verksamhet som en helhet där kommunikation, strategi och teknik samverkar – en inställning som speglas i våra tre affärsområden:\n\nKnowit Experience är Nordens ledande kommunikations- och teknikbyrå som skapar digitala möjligheter för både kunden och kundens kund, med fokus på positiva användarupplevelser. Knowit Insight är den digitala managementkonsulten som stöttar uppdragsgivarnas långsiktiga affärsutveckling både taktiskt och strategiskt. Målet är att skapa insikt och förståelse – för att kunna forma snabbare, mer flexibla och mer innovativa organisationer. Knowit Solutions är systemutvecklaren som bygger digitala processer och kärnsystem från grunden – teknik som gör digitaliseringen möjlig. Tillsammans skapar vi möjligheter för företag, individer och samhället i stort.', 'knowit.png', 'www.knowit.se'),
('unionen', 'Unionen', 'Kraftladda inför drömjobbet.\n\nMed över 620.000 medlemmar är Unionen Sveriges största fackförbund för tjänstemän. Vi arbetar för Schysta villkor och trygghet på arbetsplatserna i den privata sektorn. För endast 100 kronor blir du studentmedlem hela studietiden oavsett hur länge du studerar. Förutom att se till att du är trygg på extrajobbet och sommarjobbet så stöttar vi dig med rabatter, stipendier och ger dig chansen att delta på utvecklande seminarier. När det är dags att helt ta klivet ut i arbetslivet ser vi till att du får experthjälp med CV, personligt brev och intervjuteknik samt löner och villkor. Vi hjälper dig också på vägen med ett unikt kontaktnät på några av Sveriges populäraste arbetsplatser.\n\nNär du börjar jobba och uppdaterar ditt studentmedlemskap till yrkesverksamt så har du möjlighet att få tillbaka upp till 3200 kr för kostnaderna på exempelvis kurslitteratur, kåravgifter, miniräknare eller annat material kopplat till din utbildning som du införskaffat under tiden som studentmedlem.\n\nVi syns på Medias Branschdag!','unionen.png','www.unionen.se'),
('apotea', 'Apotea', 'Apotea.se är Sveriges första fullsorterade apotek som bara finns på nätet. Apotea har det största sortimentet, över 11 000 receptfria varor och 5 000 receptbelagda läkemedel för människor och djur, och de lägsta priserna enligt HUI. Med snabba leveranser och rådgivning på nätet och via telefon underlättar Apotea vardagen för våra kunder. Apotea var först med att få Läkemedelsverkets tillstånd att bedriva apotek på nätet 2011. Sedan dess har försäljningen ökat från ca 11 Mkr till knappt en miljard 2016 (prognos) Apotea har drygt 220 anställda i Morgongåva och vid huvudkontoret i Stockholm. Apotea har vunnit en rad priser bla Årets Nätbutik 2014, 2015 på Prisjakt. Årets e-handel på Nordic E-Commerce Award 2014, 2015, 2016 och Svensk Handels stora pris Retail Awards 2016 i kategorin Årets Tillväxtföretag.\n\nEn av framgångsfaktorerna är det egenutvecklade e-handelssystemet. Apoteas IT-avdelning består av ett team av de allra bästa utvecklarna som tillsammans bygger plattformen för Sveriges mest framgångsrika e-handel. Apotea bygger alla sina system själva vilket ger ett omväxlande arbete där uppgiften kan växla mellan front-end programmering på hemsidan till realtidsstyrning av transportbanor i logistiken till framtagande av nya tjänster i vårt affärssystem. Apotea utvecklar sina system i .NET med MVC och SQL Server.', 'apotea.png', 'www.apotea.se'),
('westmediasystems', 'West Media Systems', 'West Media Systems AB utvecklar systemet Link-IT som är en utvecklingsplattform för företagsprocesser. Link-IT hjälper företagen att automatisera sina processer och därmed flytta personerna inblandade i dessa från att utföra till att övervaka och besluta. Stödja processer förutsätter att systemet enkelt kan modifieras för att snabbt anpassa sig till nya omständigheter. Link-IT har ett unikt sätt att underlätta för dessa nya krav, så att kunderna får det stöd som behövs i verksamheten när de behöver det.\n\nVi är aktiva inom mediabranschen med bl.a. Discovery, Cmore och Ericsson som kunder.', 'westmediasystems.png', 'www.westmediasystems.com'),
('dice', 'EA/Dice', 'We are EA/DICE!\n\nWe entertain millions of people across the globe with the most amazing and immersive interactive software in the industry. But making games is hard work. That’s why we employ the most creative, passionate people in the industry.\n\nEA/DICE (EA Digital Illusions Creative Entertainment), the award-winning developer based in Stockholm, Sweden, is best known for creating the phenomenally successful Battlefield franchise. We are also the home of Star Wars Battlefront and Mirrors Edge: Catalyst.', 'dice.png','www.dice.se/'),
('viaplay', 'Viaplay', 'Viaplay is the leading online service for TV, film and sports in the Nordic countries and part of the Modern Times Group, an international entertainment group listed on the Nasdaq OMX Nordics Large Cap.\n\nWe offer the most popular TV series, a vast international movie catalogue and a world-class selection of live sports events including Premiere League, Champions League, NHL and the Rio Summer Olympics.\n\nWe put our hearts into creating beautiful product experiences, and invest every dollar that we can spare into new exciting content formats. Our passion for technology, software development and streaming delivery is unprecedented. Whether you are into sales, marketing, content production, product design or software development we have great problems to solve and new opportunities to capture. Join us and help transform the world of entertainment!', 'viaplay.png', 'www.viaplay.se/jobs'),
('ooyala', 'Ooyala', "Ooyala is a global technology company delivering online video solutions and services. We are on a mission to revolutionize digital TV - end-to-end and at a global scale. That requires taking on some very interesting technical challenges, spread across Media Logistics, Video Publishing, Video Advertising and large scala Data Analytics.\n\nOoyala Stockholm\nThe Stockholm office is Ooyala's third biggest office (after Silicon Valley and London) and is home turf to everything ad-tech.\n\nMore than 2/3 of the 80+ strong Stockholm crew work in R&D making Stockholm is one of Ooyala's core engineering hubs. The complexity and scale involved in running a global ad-serving platform makes Stockholm an innovation center not only for advertizing technology but also for Ooyala's infrastructure management, data pipelines and core analytics.", 'ooyala.png', 'www.ooyala.com'),
('zhelp', 'Ser det tomt ut?', 'Oroa dig inte.\n\nUnder hösten kommer fler spännande företag att presenteras här. Så kika in på sidan med jämna mellanrum för att hålla dig uppdaterad om din nästa potentiella arbetsgivare!', 'help.png', "");
