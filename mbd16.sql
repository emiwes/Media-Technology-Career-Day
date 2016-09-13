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
('kaplan', 'Kaplan', "Kaplan Loyalty Management is Scandinavia’s leading Loyalty Management firm. We bring in-depth loyalty management services to our clients, including technological, strategic, analytical and creative solutions.\n\nFounded in 1987, we have close to 30 years' experience of focusing on just one thing – maximizing value in our client's customer relationships and databases. We create and shape the one-to-one customer experience of tomorrow in a Marketing Automation process known to us as 'True Personalization'.", 'kaplan.svg', "www.kaplan.se"),
('sverigesingenjorer', 'Sveriges Ingenjörer', 'Ditt liv som ingenjör börjar nu!\n\nSveriges Ingenjörer välkomnar dig till vårt unika nätverk med 144 000 ingenjörsmedlemmar. Som studentmedlem erbjuder vi dig träning och stöd inför skarpt läge med allt från cv-granskning och karriärcoachning till hjälp med intervjuteknik. Du tar även del av landets bästa lönestatistik, digitaltidningen Ny Teknik samt aktiviteter som hålls vid ditt lärosäte. Dessutom har du möjlighet att teckna förmånliga försäkringar och du har tillgång till experthjälp om något skulle gå snett på sommar eller extrajobbet.\n\nVälkommen att börja ditt liv som ingenjör med oss!','sverigesingenjorer.png','www.sverigesingenjorer.se'),
('netinsight', 'Net Insight', 'Net Insights vision är att möjliggöra en live och interaktiv TV-upplevelse för alla världen över. Vårt mål är att leda utvecklingen och möjliggöra en global mediemarknadsplats där live-innehåll kan delas och interaktion bland TV-publiken kan ske i realtid. Vi vill skapa medieupplevelser för framtiden, med fokus på innehåll. Net Insight levererar produkter, mjukvara och tjänster för effektiv, högkvalitativ medietransport, tillsammans med effektiv resursplanering, som skapar en förbättrad TV-upplevelse.\n\nNet Insights erbjudande omfattar hela mediespektrat, från TV-kameror och TV-studior, ända fram till TV-konsumenter. Våra lösningar gynnar nätoperatörer och TV- och produktionsbolag genom att sänka den totala ägandekostnaden, förbättra deras arbetsflöden och ge dem möjlighet att hitta nya affärsmöjligheter. Fler än 500 ledande kunder levererar affärskritiska medietjänster med Net Insights produkter i över 60 länder. Net Insight är noterat på Nasdaq Stockholm.','netinsight.png','www.netinsight.net'),
('schibsted', 'Schibsted','Schibsted Media Group is an international media group with 6800 employees in over 30 countries. From Mexico to Malaysia, from Brazil to Norway – millions of people interact with Schibsted companies every day. We ensure that new and old sofas can be sold. News reports are read and watched when, where and how consumers want. Weather reports are checked with quick online services. Carpenters are found through a couple of clicks. Prices are compared and the latest fashion is browsed. These examples are just some of the ways our services empower people all around the world in their daily lives.\n\nOur philosophy is built on keeping an open mind, challenging ourselves and the status quo. The goal is to shape the future of our industry. To achieve this we recruit attitude. Are you driven and ambitious? Do you have the courage to face new challenges?', 'schibsted.png', 'www.schibsted.com'),
('dynabyte', 'Dynabyte', 'Dynabyte är ett IT-konsultbolag med specialistkunskap inom systemutveckling. Vi är ett härligt gäng på drygt 75 personer som älskar att dela med oss av vår kunskap genom exempelvis seminarier, konferenser och workshops! Samtidigt strävar vi efter att var och en av oss ska ges möjlighet att utvecklas i sin egen takt och utifrån sina egna mål och drömmar. Detta gör vi genom att arbeta med individuell coachning och utvecklingsplaner för samtliga av våra anställda!\n\nVårt populära traineeprogram har funnits sedan 2007 och startar två gånger per år, i februari och september. Under dina sex månader som trainee på Dynabyte arbetar du med de allra senaste teknikerna i ett större kundprojekt, och med stöttning av våra seniora utvecklare och mentorer sköter ni projektets hela utveckling. Parallellt med projektet deltar du även i flertalet utvecklande tekniska utbildningar och workshops.\n\nSedan vi för första gången startade vårt traineeprogram har vi utvecklat några av de allra bästa IT-konsulterna i branschen. Vårt program ger dig ett stort försprång gentemot andra i branschen, och efter programmets slut ges du möjlighet att arbeta med tekniska utmaningar hos flera av Sveriges hetaste företag!', 'dynabyte.png','www.dynabyte.se'),
('myacademy', 'My Academy','My Academy startade år 2005 och är idag Sveriges största företag inom läxhjälp i hemmet och online. Företaget präglas av hög ambition, gott humör och att ständigt vilja ge “det lilla extra” till kunder, studiecoacher och medarbetare. Vi är 20 medarbetare som sitter i fina lokaler i centrala Stockholm.\n\nMy Academy har omkring tusentals studiecoacher i nätverket idag och söker löpande personer som vill ha ett flexibelt och roligt extrajobb i kombination med studier.','myacademy.png','www.myacademy.se'),
('zhelp', 'Ser det tomt ut?', 'Oroa dig inte.\n\nUnder hösten kommer fler spännande företag att presenteras här. Så kika in på sidan med jämna mellanrum för att hålla dig uppdaterad om din nästa potentiella arbetsgivare!', 'help.png', "");
