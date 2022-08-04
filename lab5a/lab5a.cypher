//Your Neo4j code goes here
// Create a new graph that represents a family (it can be a fictitious family).
// The graph must include at least 8 members (person) of a family with properties of name and born (the year they were born).

CREATE (Thomas: Person {name: 'Thomas Jefferson', born: 2003})
CREATE (Ruth: Person {name: 'Ruth Hall', born: 2003})
CREATE (Matthew: Person {name: 'Matthew Jefferson', born: 1971})
CREATE (Marie: Person {name: 'Marie Jefferson', born: 1972})
CREATE (Samuel: Person {name: 'Samuel Hall', born: 1970})
CREATE (Sarah: Person {name: 'Sarah Hall', born: 1970})
CREATE (Mark: Person {name: 'Mark Hall', born: 2002})
CREATE (Rachel: Person {name: 'Rachel Cruise', born: 2002})

// The graph must include at least 3 different relationships (Ex: child, parent, spouse, etc).
// For the spouse relationship, add a property named married which is the year they married.
// For the child relationship, add a property named type which should be son or daughter.
// For the parent relationship, add a property named type which should be mother or father.

CREATE
  (Marie)-[:SPOUSE {married:2000}]->(Matthew),
  (Matthew)-[:SPOUSE {married:2000}]->(Marie),
  (Marie)-[:CHILD {type:'son'}]->(Thomas),
  (Matthew)-[:CHILD {type:'son'}]->(Thomas),
  (Thomas)-[:PARENT {type:'father'}]->(Matthew),
  (Thomas)-[:PARENT {type:'mother'}]->(Marie),
  (Thomas)-[:ROMANCE {type:'girlfriend'}]->(Ruth),
  (Ruth)-[:ROMANCE {type:'boyfriend'}]->(Thomas),
  (Ruth)-[:PARENT {type:'father'}]->(Samuel),
  (Ruth)-[:PARENT {type:'mother'}]->(Sarah),
  (Samuel)-[:CHILD {type:'daughter'}]->(Ruth),
  (Sarah)-[:CHILD {type:'daughter'}]->(Ruth),
  (Samuel)-[:CHILD {type:'son'}]->(Mark),
  (Sarah)-[:CHILD {type:'son'}]->(Mark),
  (Mark)-[:PARENT {type:'father'}]->(Samuel),
  (Mark)-[:PARENT {type:'mother'}]->(Sarah),
  (Mark)-[:ROMANCE {type:'girlfriend'}]->(Rachel),
  (Rachel)-[:ROMANCE {type:'boyfriend'}]->(Mark)
;