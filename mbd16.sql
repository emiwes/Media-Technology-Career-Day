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
('David Traeneus', 'Företagskontakt', 'david.traeneus@mediasbranschdag.com','https://se.linkedin.com/in/david-tranaeus-0834a7114','david.jpg'),
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
('river', 'River', "Leave hair everywhere jump around on couch, meow constantly until given food, for unwrap toilet paper. Human give me attention meow cat is love, cat is life chase dog then run away. Cat slap dog in face give attitude, so pelt around the house and up and down stairs chasing phantoms behind the couch, for Gatekeepers of hell or i am the best. Run in circles you call this cat food? stares at human while pushing stuff off a table but chase laser or hola te quiero. Sleep on keyboard.  Slap owner's face at 5am until human fills food dish. Meow gnaw the corn cob but stick butt in face, but leave hair everywhere. Touch water with paw then recoil in horror cat snacks, but meowing non stop for food and knock over christmas tree. stuff off a table but chase laser or hola te quiero.  Sleep on keyboard. Slap owner's face at 5am until human fills food dish. Meow gnaw the corn cob but stick butt in face, but leave hair everywhere. Touch water with paw then recoil in horror cat snacks, but meowing non stop for food and knock over christmas tree. stuff off a table but chase laser or hola te quiero. Sleep on keyboard. Slap owner's face at 5am until human fills food dish. Meow gnaw the corn cob but stick butt in face, but leave hair everywhere. Touch water with paw then recoil in horror cat snacks, but meowing non stop for food and knock over christmas tree.", 'river.png', 'www.river.se'),
('sverigesingenjorer', 'Sveriges Ingenjörer', 'Ditt liv som ingenjör börjar nu!\n\nSveriges Ingenjörer välkomnar dig till vårt unika nätverk med 144 000 ingenjörsmedlemmar. Som studentmedlem erbjuder vi dig träning och stöd inför skarpt läge med allt från cv-granskning och karriärcoachning till hjälp med intervjuteknik. Du tar även del av landets bästa lönestatistik, digitaltidningen Ny Teknik samt aktiviteter som hålls vid ditt lärosäte. Dessutom har du möjlighet att teckna förmånliga försäkringar och du har tillgång till experthjälp om något skulle gå snett på sommar eller extrajobbet.\n\nVälkommen att börja ditt liv som ingenjör med oss!','sverigesingenjorer.png','www.sverigesingenjorer.se'),
('dynabyte', 'Dynabyte', "Leave hair everywhere jump around on couch, meow constantly until given food, for unwrap toilet paper. Human give me attention meow cat is love, cat is life chase dog then run away. Cat slap dog in face give attitude, so pelt around the house and up and down stairs chasing phantoms behind the couch, for Gatekeepers of hell or i am the best. Run in circles you call this cat food? stares at human while pushing stuff off a table but chase laser or hola te quiero. Sleep on keyboard. Slap owner's face at 5am until human fills food dish. Meow gnaw the corn cob but stick butt in face, but leave hair everywhere. Touch water with paw then recoil in horror cat snacks, but meowing non stop for food and knock over christmas tree. stuff off a table but chase laser or hola te quiero. Sleep on keyboard. Slap owner's face at 5am until human fills food dish. Meow gnaw the corn cob but stick butt in face, but leave hair everywhere. Touch water with paw then recoil in horror cat snacks, but meowing non stop for food and knock over christmas tree. stuff off a table but chase laser or hola te quiero. Sleep on keyboard. Slap owner's face at 5am until human fills food dish. Meow gnaw the corn cob but stick butt in face, but leave hair everywhere. Touch water with paw then recoil in horror cat snacks, but meowing non stop for food and knock over christmas tree.", 'dynabyte.png', 'www.dynabyte.se'),
('apegroup', 'Apegroup', "Leave hair everywhere jump around on couch, meow constantly until given food, for unwrap toilet paper. Human give me attention meow cat is love, cat is life chase dog then run away. Cat slap dog in face give attitude, so pelt around the house and up and down stairs chasing phantoms behind the couch, for Gatekeepers of hell or i am the best. Run in circles you call this cat food? stares at human while pushing stuff off a table but chase laser or hola te quiero. Sleep on keyboard.\n\nSlap owner's face at 5am until human fills food dish. Meow gnaw the corn cob but stick butt in face, but leave hair everywhere.", 'apegroup.png', 'www.apegroup.com'),
('kaplan', 'Kaplan', "Leave hair everywhere jump around on couch, meow constantly until given food, for unwrap toilet paper.\n\nHuman give me attention meow cat is love, cat is life chase dog then run away. Cat slap dog in face give attitude, so pelt around the house and up and down stairs chasing phantoms behind the couch, for Gatekeepers of hell or i am the best. Run in circles you call this cat food? stares at human while pushing stuff off a table but chase laser or hola te quiero. Sleep on keyboard.\n\nSlap owner's face at 5am until human fills food dish. Meow gnaw the corn cob but stick butt in face, but leave hair everywhere.", 'kaplan.png', "www.kaplan.se"),
('schibsted', 'Schibsted',"Leave hair everywhere jump around on couch, meow constantly until given food, for unwrap toilet paper. Human give me attention meow cat is love, cat is life chase dog then run away. Cat slap dog in face give attitude, so pelt around the house and up and down stairs chasing phantoms behind the couch, for Gatekeepers of hell or i am the best. Run in circles you call this cat food? stares at human while pushing stuff off a table but chase laser or hola te quiero. Sleep on keyboard.\n\nSlap owner's face at 5am until human fills food dish. Meow gnaw the corn cob but stick butt in face, but leave hair everywhere.", 'schibsted.png', 'www.schibsted.com');
