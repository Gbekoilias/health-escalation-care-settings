-module(references_db).
-export([init/0, add_reference/1, get_all_references/0, clear_references/0]).

%% Define the reference record structure
-record(reference, {
    id,             %% Unique ID for the reference
    author,         %% Author(s) of the reference
    year,           %% Year of publication
    title,          %% Title of the reference
    source,         %% Source or journal
    url,            %% URL of the reference
    accessed_date   %% Date accessed
}).

%% Initialize the Mnesia database and tables
init() ->
    mnesia:start(),
    case mnesia:create_table(reference_db, [
        {attributes, record_info(fields, reference)},
        {disc_copies, [node()]}
    ]) of
        {atomic, ok} -> io:format("Table created successfully.~n");
        {aborted, {already_exists, reference_db}} -> io:format("Table already exists.~n")
    end,
    ok.

%% References database
-module(references_db).
-export([add_reference/1, get_references/0]).

-record(reference, {
    author,
    year,
    title,
    source,
    url,
    accessed_date
}).

-references([
    #reference{
        author = "Baglioni, C., Battagliese, G., Feige, B., Spiegelhalder, K., Nissen, C., & Riemann, D.",
        year = 2016,
        title = "Insomnia as a predictor of depression: A meta-analytic evaluation of longitudinal epidemiological studies",
        source = "Journal of Affective Disorders, 193, 10-19",
        url = "",
        accessed_date = ""
    },
    #reference{
        author = "Clegg, A., Young, J., Iliffe, S., Rikkert, M. O., & Rockwood, K.",
        year = 2013,
        title = "Frailty in elderly people",
        source = "The Lancet, 381(9868), 752-762",
        url = "",
        accessed_date = ""
    },
    #reference{
        author = "Coleman, S., Gorecki, C., Nelson, E. A., Closs, S. J., Defloor, T., Halfens, R., & Nixon, J.",
        year = 2014,
        title = "Patient risk factors for pressure ulcer development: Systematic review",
        source = "International Journal of Nursing Studies, 51(5), 947-962",
        url = "",
        accessed_date = ""
    },
    #reference{
        author = "Cornwell, E. Y., & Waite, L. J.",
        year = 2009,
        title = "Social disconnectedness, perceived isolation, and health among older adults",
        source = "Journal of Health and Social Behavior, 50(1), 31-48",
        url = "",
        accessed_date = ""
    },
    #reference{
        author = "El-Sharkawy, A. M., Watson, P., & Jack, S.",
        year = 2015,
        title = "Hydration and outcome in older adults",
        source = "Current Opinion in Clinical Nutrition & Metabolic Care, 18(1), 17-22",
        url = "",
        accessed_date = ""
    },
    #reference{
        author = "Herr, K., Coyne, P. J., McCaffery, M., Manworren, R., & Merkel, S.",
        year = 2011,
        title = "Pain assessment in the patient unable to self-report: Position statement with clinical practice recommendations",
        source = "Pain Management Nursing, 12(4), 230-250",
        url = "",
        accessed_date = ""
    },
    #reference{
        author = "Lacey, K., & Pritchett, E.",
        year = 2003,
        title = "Nutritional assessment and intervention in older adults",
        source = "British Journal of Nursing, 12(4), 237-241",
        url = "",
        accessed_date = ""
    },
    #reference{
        author = "National Institute for Health and Care Excellence (NICE)",
        year = 2021,
        title = "Respiratory tract infections (self-limiting): NICE clinical guideline",
        source = "",
        url = "https://www.nice.org.uk",
        accessed_date = "24 December 2024"
    },
    #reference{
        author = "National Institute of Mental Health",
        year = 2020,
        title = "Depression",
        source = "",
        url = "https://www.nimh.nih.gov/health/topics/depression",
        accessed_date = "24 December 2024"
    },
    #reference{
        author = "Royal College of Physicians",
        year = 2017,
        title = "National Early Warning Score (NEWS) 2. Improving detection and response to clinical deterioration in adults",
        source = "",
        url = "https://www.rcplondon.ac.uk",
        accessed_date = "24 December 2024"
    },
    #reference{
        author = "Holt-Lunstad, J., Smith, T. B., Baker, M., Harris, T., & Stephenson, D.",
        year = 2015,
        title = "Loneliness and social isolation as risk factors for mortality: A meta-analytic review",
        source = "Perspectives on Psychological Science, 10(2), 227-237",
        url = "",
        accessed_date = ""
    },
    #reference{
        author = "Lupton, D.",
        year = 2018,
        title = "Digital health: Critical and cross-disciplinary perspectives",
        source = "Routledge",
        url = "",
        accessed_date = ""
    },
    #reference{
        author = "McCabe, C., & Timmins, F.",
        year = 2013,
        title = "Communication skills for nursing practice. 2nd edn",
        source = "Palgrave Macmillan",
        url = "",
        accessed_date = ""
    },
    #reference{
        author = "McCormack, B., & McCance, T.",
        year = 2017,
        title = "Person-centred practice in nursing and health care: Theory and practice",
        source = "Wiley-Blackwell",
        url = "",
        accessed_date = ""
    },
    #reference{
        author = "NHS",
        year = 2023,
        title = "NHS weight loss plan",
        source = "",
        url = "https://www.nhs.uk/live-well/healthy-weight/start-the-nhs-weight-loss-plan/",
        accessed_date = "24 December 2024"
    },
    #reference{
        author = "NICE",
        year = 2016,
        title = "Patient experience in adult NHS services: improving the experience of care for people using adult NHS services",
        source = "National Institute for Health and Care Excellence",
        url = "",
        accessed_date = ""
    },
    #reference{
        author = "Vermeulen, J., Neyens, J. C., van Rossum, E., Spreeuwenberg, M. D., & de Witte, L. P.",
        year = 2018,
        title = "The use of assistive devices for independence in daily life: A review",
        source = "Ageing Research Reviews, 5(1), 31-42",
        url = "",
        accessed_date = ""
    },
    #reference{
        author = "World Health Organization",
        year = 2021,
        title = "Promoting health and well-being",
        source = "",
        url = "https://www.who.int/health-topics/health-promotion",
        accessed_date = "24 December 2024"
    },
    #reference{
        author = "Baumeister, R. F., & Leary, M. R.",
        year = 1995,
        title = "The need to belong: Desire for interpersonal attachments as a fundamental human motivation",
        source = "Psychological Bulletin, 117(3), 497-529",
        url = "",
        accessed_date = ""
    },
    #reference{
        author = "Fallowfield, L., Jenkins, V., Farewell, V., & Solis-Trapala, I.",
        year = 2002,
        title = "Endocrine therapy for older women with breast cancer: The impact on quality of life of women randomized to tamoxifen alone compared to tamoxifen and radiotherapy",
        source = "British Journal of Cancer, 86(1), 65-71",
        url = "",
        accessed_date = ""
    },
    #reference{
        author = "NICE",
        year = 2018,
        title = "Dementia: assessment, management and support for people living with dementia and their careers",
        source = "National Institute for Health and Care Excellence",
        url = "",
        accessed_date = ""
    },
    #reference{
        author = "Ryan, R. M., & Deci, E. L.",
        year = 2000,
        title = "Self-determination theory and the facilitation of intrinsic motivation, social development, and well-being",
        source = "American Psychologist, 55(1), 68-78",
        url = "",
        accessed_date = ""
    }
]).

add_reference(Reference) ->
    io:format("Reference added: ~p~n", [Reference]).

get_references() ->
    references.

-module(references_db).
-export([init/0, insert_references/0, close/0]).

-include_lib("mnesia/include/mnesia.hrl").

init() ->
    mnesia:create_schema([node()]),
    mnesia:start(),
    mnesia:create_table(reference, [
        {attributes, record_info(fields, reference)}
    ]).

insert_references() ->
    References = [
        {reference, "Care Quality Commission (CQC)", 2019,
         "How to raise a concern",
         "Available at: https://www.cqc.org.uk",
         "Accessed: 24 December 2024"},
        {reference, "Health and Safety Executive (HSE)", 2022,
         "Health and safety in care settings: Policies and procedures",
         "Available at: https://www.hse.gov.uk",
         "Accessed: 24 December 2024"},
        {reference, "National Institute for Health and Care Excellence (NICE)", 2021,
         "Managing acute deterioration in care settings",
         "Available at: https://www.nice.org.uk",
         "Accessed: 24 December 2024"},
        {reference, "NHS England", 2018,
         "SBAR communication tool – Situation, Background, Assessment, Recommendation",
         "Available at: https://www.england.nhs.uk",
         "Accessed: 24 December 2024"},
        {reference, "Royal College of Physicians", 2017,
         "National Early Warning Score (NEWS) 2 – Standardizing the assessment of acute illness severity in the NHS",
         "Available at: https://www.rcplondon.ac.uk",
         "Accessed: 24 December 2024"},
        {reference, "Alagiakrishnan, K., & Wiens, C. A.", 2004,
         "An approach to drug-induced delirium in the elderly",
         "Postgraduate Medical Journal, 80(945), 388-393",
         nil},
        {reference, "Baglioni, C., Battagliese, G., Feige, B., Spiegelhalder, K., Nissen, C., & Riemann, D.", 2016,
         "Insomnia as a predictor of depression: A meta-analytic evaluation of longitudinal epidemiological studies",
         "Journal of Affective Disorders, 193, 10-19",
         nil},
        {reference, "Clegg, A., Young, J., Iliffe, S., Rikkert, M. O., & Rockwood, K.", 2013,
         "Frailty in elderly people",
         "The Lancet, 381(9868), 752-762",
         nil},
        {reference, "Coleman, S., Gorecki, C., Nelson, E. A., Closs, S. J., Defloor, T., Halfens, R., & Nixon, J.", 2014,
         "Patient risk factors for pressure ulcer development: Systematic review",
         "International Journal of Nursing Studies, 51(5), 947-962",
         nil},
        {reference, "Cornwell, E. Y., & Waite, L. J.", 2009,
         "Social disconnectedness, perceived isolation, and health among older adults",
         "Journal of Health and Social Behavior, 50(1), 31-48",
         nil},
        {reference, "El-Sharkawy, A. M., Watson, P., & Jack, S.", 2015,
         "Hydration and outcome in older adults",
         "Current Opinion in Clinical Nutrition & Metabolic Care, 18(1), 17-22",
         nil},
        {reference, "Herr, K., Coyne, P. J., McCaffery, M., Manworren, R., & Merkel, S.", 2011,
         "Pain assessment in the patient unable to self-report: Position statement with clinical practice recommendations",
         "Pain Management Nursing, 12(4), 230-250",
         nil},
        {reference, "Lacey, K., & Pritchett, E.", 2003,
         "Nutritional assessment and intervention in older adults",
         "British Journal of Nursing, 12(4), 237-241",
         nil},
        {reference, "National Institute for Health and Care Excellence (NICE)", 2021,
         "Respiratory tract infections (self-limiting): NICE clinical guideline",
         "Available at: https://www.nice.org.uk",
         "Accessed: 24 December 2024"},
        {reference, "National Institute of Mental Health", 2020,
         "Depression",
         "Available at: https://www.nimh.nih.gov/health/topics/depression",
         "Accessed: 24 December 2024"}
    ],
    mnesia:transaction(fun() ->
        lists:foreach(fun(Ref) -> mnesia:write(Ref) end, References)
    end).

close() ->
    mnesia:stop().