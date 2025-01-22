INSERT INTO sconsolenxt.subject_master (subject_name) VALUES ('Physics');
INSERT INTO sconsolenxt.subject_master (subject_name) VALUES ('Chemistry');
INSERT INTO sconsolenxt.subject_master (subject_name) VALUES ('Maths');
INSERT INTO sconsolenxt.subject_master (subject_name) VALUES ('Reasoning');
INSERT INTO sconsolenxt.subject_master (subject_name) VALUES ('Speed Math');

INSERT INTO sconsolenxt.syllabus_master (syllabus_name, subject_name) VALUES ('IIT Physics', 'Physics');
INSERT INTO sconsolenxt.syllabus_master (syllabus_name, subject_name) VALUES ('IIT Chemistry', 'Chemistry');
INSERT INTO sconsolenxt.syllabus_master (syllabus_name, subject_name) VALUES ('IIT Maths', 'Maths');

INSERT INTO sconsolenxt.problem_type_master (problem_type, description) VALUES ('SUB', 'Subjective type');
INSERT INTO sconsolenxt.problem_type_master (problem_type, description) VALUES ('SCA', 'Single Correct Answer');
INSERT INTO sconsolenxt.problem_type_master (problem_type, description) VALUES ('MCA', 'Multiple Correct Answer');
INSERT INTO sconsolenxt.problem_type_master (problem_type, description) VALUES ('LCT', 'Linked Comprehension Type');
INSERT INTO sconsolenxt.problem_type_master (problem_type, description) VALUES ('MMT', 'Matrix Match Type');
INSERT INTO sconsolenxt.problem_type_master (problem_type, description) VALUES ('NVT', 'Numerical Value Type');
INSERT INTO sconsolenxt.problem_type_master (problem_type, description) VALUES ('ART', 'Assertion Reasoning Type');
INSERT INTO sconsolenxt.problem_type_master (problem_type, description) VALUES ('CMT', 'Column Match Type');

insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Physics",   "General Physics",         "Measurement"                   );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Physics",   "General Physics",         "Practical Skills"              );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Physics",   "Mechanics",               "Kinematics"                    );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Physics",   "Mechanics",               "Laws of Motion"                );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Physics",   "Mechanics",               "Work Energy Power"             );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Physics",   "Mechanics",               "Rotational Motion"             );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Physics",   "Mechanics",               "Gravitation"                   );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Physics",   "Mechanics",               "Solids and Liquids"            );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Physics",   "Waves",                   "Osc And Waves"                 );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Physics",   "Optics",                  "Optics"                        );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Physics",   "Heat",                    "Thermodynamics"                );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Physics",   "Heat",                    "Kinetic Theory of Gases"       );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Physics",   "Electricity & Magnetism", "Electrostatics"                );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Physics",   "Electricity & Magnetism", "Currrent Electricity"          );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Physics",   "Electricity & Magnetism", "Magnetism"                     );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Physics",   "Electricity & Magnetism", "EM Induction & AC"             );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Physics",   "Electricity & Magnetism", "EM Waves"                      );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Physics",   "Modern Physics",          "Atoms and Radiation"           );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Physics",   "Modern Physics",          "Electronic Devices"            );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Physics",   "Modern Physics",          "Communication Systems"         );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Physical",                "Basic Concepts"                );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Physical",                "States Of Matter"              );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Physical",                "Atomic Structure"              );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Physical",                "Bonding and Molc Strucure"     );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Physical",                "Thermodynamics"                );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Physical",                "Equilibrium"                   );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Physical",                "Electrochemistry"              );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Physical",                "Kinetics"                      );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Physical",                "Solid State"                   );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Physical",                "Solutions"                     );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Physical",                "Surface Chemistry"             );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Inorganic",               "Periodic Table"                );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Inorganic",               "Hydrogen"                      );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Inorganic",               "S Block"                       );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Inorganic",               "P Block"                       );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Inorganic",               "D,F Block"                     );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Inorganic",               "Coordination Comp"             );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Inorganic",               "Metallurgy"                    );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Inorganic",               "Qualitative Analysis"          );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Inorganic",               "Env Chemistry"                 );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Organic",                 "Org Chemistry Basics"          );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Organic",                 "Alkanes"                       );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Organic",                 "Alkenes and Alkynes"           );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Organic",                 "Benzene"                       );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Organic",                 "Phenols"                       );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Organic",                 "Alkyl Halids"                  );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Organic",                 "Alcohols"                      );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Organic",                 "Ethers"                        );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Organic",                 "Aldehydes and Ketones"         );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Organic",                 "Carboxylic Acids"              );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Organic",                 "Amines"                        );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Organic",                 "Haloarenes"                    );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Organic",                 "Biomolecules"                  );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Organic",                 "Polymers"                      );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Organic",                 "Chem In Everyday Life"         );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Chemistry", "Organic",                 "Practical Org Chem"            );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Maths",     "Algebra",                 "Sets, Relations And Functions" );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Maths",     "Algebra",                 "Logarithms"                    );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Maths",     "Algebra",                 "Complex Numbers"               );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Maths",     "Algebra",                 "Quadratic Equations"           );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Maths",     "Algebra",                 "Matrices"                      );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Maths",     "Algebra",                 "Determinants"                  );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Maths",     "Algebra",                 "Permutation And Combination"   );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Maths",     "Algebra",                 "Binomial Theorem"              );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Maths",     "Algebra",                 "Stats And Probability"         );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Maths",     "Algebra",                 "Sequences And Series"          );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Maths",     "Algebra",                 "Induction"                     );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Maths",     "Algebra",                 "Reasoning"                     );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Maths",     "Algebra",                 "Inequalities"                  );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Maths",     "Trigonometry",            "Trigonometry"                  );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Maths",     "Calculus",                "Limits"                        );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Maths",     "Calculus",                "Continuity"                    );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Maths",     "Calculus",                "Differential Calculus"         );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Maths",     "Calculus",                "Integral Calculus"             );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Maths",     "Calculus",                "Differential Equation"         );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Maths",     "Vectors",                 "Vector Algebra"                );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Maths",     "Geometry",                "2D Geometry"                   );
insert into sconsolenxt.topic_master ( syllabus_name, section, topic_name ) values ( "IIT Maths",     "Geometry",                "3D Geometry"                   );