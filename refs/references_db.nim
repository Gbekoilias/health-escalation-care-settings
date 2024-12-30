import sqlite3

# Initialize the SQLite3 database
let db = open("references.db")

# Create the references table
db.exec(sql"""
  CREATE TABLE IF NOT EXISTS references (
    id INTEGER PRIMARY KEY,
    author TEXT,
    year INTEGER,
    title TEXT,
    journal TEXT,
    url TEXT,
    accessed TEXT
  );
""")

# Insert references into the database
db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('Coleman, S., Gorecki, C., Nelson, E. A., Closs, S. J., Defloor, T., Halfens, R., & Nixon, J.', 2014,
  'Patient risk factors for pressure ulcer development: Systematic review',
  'International Journal of Nursing Studies, 51(5), 947-962', NULL, NULL);
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('Cornwell, E. Y., & Waite, L. J.', 2009,
  'Social disconnectedness, perceived isolation, and health among older adults',
  'Journal of Health and Social Behavior, 50(1), 31-48', NULL, NULL);
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('Care Quality Commission (CQC)', 2019,
  'How to raise a concern',
  'Available at: https://www.cqc.org.uk', NULL, 'Accessed: 24 December 2024');
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('Health and Safety Executive (HSE)', 2022,
  'Health and safety in care settings: Policies and procedures',
  'Available at: https://www.hse.gov.uk', NULL, 'Accessed: 24 December 2024');
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('National Institute for Health and Care Excellence (NICE)', 2021,
  'Managing acute deterioration in care settings',
  'Available at: https://www.nice.org.uk', NULL, 'Accessed: 24 December 2024');
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('NHS England', 2018,
  'SBAR communication tool – Situation, Background, Assessment, Recommendation',
  'Available at: https://www.england.nhs.uk', NULL, 'Accessed: 24 December 2024');
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('Royal College of Physicians', 2017,
  'National Early Warning Score (NEWS) 2 – Standardizing the assessment of acute illness severity in the NHS',
  'Available at: https://www.rcplondon.ac.uk', NULL, 'Accessed: 24 December 2024');
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('Alagiakrishnan, K., & Wiens, C. A.', 2004,
  'An approach to drug-induced delirium in the elderly',
  'Postgraduate Medical Journal, 80(945), 388-393', NULL, NULL);
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('Baglioni, C., Battagliese, G., Feige, B., Spiegelhalder, K., Nissen, C., & Riemann, D.', 2016,
  'Insomnia as a predictor of depression: A meta-analytic evaluation of longitudinal epidemiological studies',
  'Journal of Affective Disorders, 193, 10-19', NULL, NULL);
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('Clegg, A., Young, J., Iliffe, S., Rikkert, M. O., & Rockwood, K.', 2013,
  'Frailty in elderly people',
  'The Lancet, 381(9868), 752-762', NULL, NULL);
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('Coleman, S., Gorecki, C., Nelson, E. A., Closs, S. J., Defloor, T., Halfens, R., & Nixon, J.', 2014,
  'Patient risk factors for pressure ulcer development: Systematic review',
  'International Journal of Nursing Studies, 51(5), 947-962', NULL, NULL);
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('Cornwell, E. Y., & Waite, L. J.', 2009,
  'Social disconnectedness, perceived isolation, and health among older adults',
  'Journal of Health and Social Behavior, 50(1), 31-48', NULL, NULL);
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('El-Sharkawy, A. M., Watson, P., & Jack, S.', 2015,
  'Hydration and outcome in older adults',
  'Current Opinion in Clinical Nutrition & Metabolic Care, 18(1), 17-22', NULL, NULL);
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('Herr, K., Coyne, P. J., McCaffery, M., Manworren, R., & Merkel, S.', 2011,
  'Pain assessment in the patient unable to self-report: Position statement with clinical practice recommendations',
  'Pain Management Nursing, 12(4), 230-250', NULL, NULL);
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('Lacey, K., & Pritchett, E.', 2003,
  'Nutritional assessment and intervention in older adults',
  'British Journal of Nursing, 12(4), 237-241', NULL, NULL);
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('National Institute for Health and Care Excellence (NICE)', 2021,
  'Respiratory tract infections (self-limiting): NICE clinical guideline',
  'Available at: https://www.nice.org.uk', NULL, 'Accessed: 24 December 2024');
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('National Institute of Mental Health', 2020,
  'Depression',
  'Available at: https://www.nimh.nih.gov/health/topics/depression', NULL, 'Accessed: 24 December 2024');
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('Care Quality Commission (CQC)', 2019,
  'How to raise a concern',
  'Available at: https://www.cqc.org.uk', NULL, 'Accessed: 24 December 2024');
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('Health and Safety Executive (HSE)', 2022,
  'Health and safety in care settings: Policies and procedures',
  'Available at: https://www.hse.gov.uk', NULL, 'Accessed: 24 December 2024');
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('National Institute for Health and Care Excellence (NICE)', 2021,
  'Managing acute deterioration in care settings',
  'Available at: https://www.nice.org.uk', NULL, 'Accessed: 24 December 2024');
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('NHS England', 2018,
  'SBAR communication tool – Situation, Background, Assessment, Recommendation',
  'Available at: https://www.england.nhs.uk', NULL, 'Accessed: 24 December 2024');
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('Royal College of Physicians', 2017,
  'National Early Warning Score (NEWS) 2 – Standardizing the assessment of acute illness severity in the NHS',
  'Available at: https://www.rcplondon.ac.uk', NULL, 'Accessed: 24 December 2024');
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('Alagiakrishnan, K., & Wiens, C. A.', 2004,
  'An approach to drug-induced delirium in the elderly',
  'Postgraduate Medical Journal, 80(945), 388-393', NULL, NULL);
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('Baglioni, C., Battagliese, G., Feige, B., Spiegelhalder, K., Nissen, C., & Riemann, D.', 2016,
  'Insomnia as a predictor of depression: A meta-analytic evaluation of longitudinal epidemiological studies',
  'Journal of Affective Disorders, 193, 10-19', NULL, NULL);
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('Clegg, A., Young, J., Iliffe, S., Rikkert, M. O., & Rockwood, K.', 2013,
  'Frailty in elderly people',
  'The Lancet, 381(9868), 752-762', NULL, NULL);
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('Coleman, S., Gorecki, C., Nelson, E. A., Closs, S. J., Defloor, T., Halfens, R., & Nixon, J.', 2014,
  'Patient risk factors for pressure ulcer development: Systematic review',
  'International Journal of Nursing Studies, 51(5), 947-962', NULL, NULL);
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('Cornwell, E. Y., & Waite, L. J.', 2009,
  'Social disconnectedness, perceived isolation, and health among older adults',
  'Journal of Health and Social Behavior, 50(1), 31-48', NULL, NULL);
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('El-Sharkawy, A. M., Watson, P., & Jack, S.', 2015,
  'Hydration and outcome in older adults',
  'Current Opinion in Clinical Nutrition & Metabolic Care, 18(1), 17-22', NULL, NULL);
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('Herr, K., Coyne, P. J., McCaffery, M., Manworren, R., & Merkel, S.', 2011,
  'Pain assessment in the patient unable to self-report: Position statement with clinical practice recommendations',
  'Pain Management Nursing, 12(4), 230-250', NULL, NULL);
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('Lacey, K., & Pritchett, E.', 2003,
  'Nutritional assessment and intervention in older adults',
  'British Journal of Nursing, 12(4), 237-241', NULL, NULL);
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('National Institute for Health and Care Excellence (NICE)', 2021,
  'Respiratory tract infections (self-limiting): NICE clinical guideline',
  'Available at: https://www.nice.org.uk', NULL, 'Accessed: 24 December 2024');
""")

db.exec(sql"""
  INSERT INTO references (author, year, title, journal, url, accessed) VALUES 
  ('National Institute of Mental Health', 2020,
  'Depression',
  'Available at: https://www.nimh.nih.gov/health/topics/depression', NULL, 'Accessed: 24 December 2024');
""")

# Close the database connection
db.close 