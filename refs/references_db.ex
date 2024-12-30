defmodule ReferencesDB do
  @moduledoc """
  A module to manage references dynamically in an in-memory database.
  """

  use Agent

  # Starts the Agent with an empty list as the initial state.
  def start_link(_) do
    Agent.start_link(fn -> [] end, name: __MODULE__)
  end

  @doc """
  Adds a new reference to the database.
  The reference should be a map with the keys: :author, :year, :title, :source, :url, :accessed_date.
  """
  def add_reference(reference) when is_map(reference) do
    Agent.update(__MODULE__, fn references -> [reference | references] end)
  end

  @doc """
  Retrieves all references stored in the database.
  """
  def get_references do
    Agent.get(__MODULE__, & &1)
  end

  @doc """
  Clears all references from the database.
  """
  def clear_references do
    Agent.update(__MODULE__, fn _ -> [] end)
  end
end

# Start the ReferencesDB module
ReferencesDB.start_link(nil)

defmodule ReferenceDB do
  @moduledoc """
  A module to manage the reference database.
  """
  use Mnesia

  def add_references do
    :mnesia.transaction(fn ->
      :mnesia.write({:reference, "Care Quality Commission (CQC)", 2019,
        "How to raise a concern",
        "https://www.cqc.org.uk",
        "24 December 2024"
      })

      :mnesia.write({:reference, "Health and Safety Executive (HSE)", 2022,
        "Health and safety in care settings: Policies and procedures",
        "https://www.hse.gov.uk",
        "24 December 2024"
      })

      :mnesia.write({:reference, "National Institute for Health and Care Excellence (NICE)", 2021,
        "Managing acute deterioration in care settings",
        "https://www.nice.org.uk",
        "24 December 2024"
      })

      :mnesia.write({:reference, "NHS England", 2018,
        "SBAR communication tool – Situation, Background, Assessment, Recommendation",
        "https://www.england.nhs.uk",
        "24 December 2024"
      })

      :mnesia.write({:reference, "Royal College of Physicians", 2017,
        "National Early Warning Score (NEWS) 2 – Standardizing the assessment of acute illness severity in the NHS",
        "https://www.rcplondon.ac.uk",
        "24 December 2024"
      })

      :mnesia.write({:reference, "Alagiakrishnan, K., & Wiens, C. A.", 2004,
        "An approach to drug-induced delirium in the elderly",
        "Postgraduate Medical Journal, 80(945), 388-393",
        nil
      })

      :mnesia.transaction(fn ->
        :mnesia.write({:reference, "Baglioni, C., Battagliese, G., Feige, B., Spiegelhalder, K., Nissen, C., & Riemann, D.", 2016,
          "Insomnia as a predictor of depression: A meta-analytic evaluation of longitudinal epidemiological studies",
          "Journal of Affective Disorders, 193, 10-19",
          nil
        })

        :mnesia.write({:reference, "Clegg, A., Young, J., Iliffe, S., Rikkert, M. O., & Rockwood, K.", 2013,
          "Frailty in elderly people",
          "The Lancet, 381(9868), 752-762",
          nil
        })

        :mnesia.write({:reference, "Coleman, S., Gorecki, C., Nelson, E. A., Closs, S. J., Defloor, T., Halfens, R., & Nixon, J.", 2014,
          "Patient risk factors for pressure ulcer development: Systematic review",
          "International Journal of Nursing Studies, 51(5), 947-962",
          nil
        })

        :mnesia.write({:reference, "Cornwell, E. Y., & Waite, L. J.", 2009,
          "Social disconnectedness, perceived isolation, and health among older adults",
          "Journal of Health and Social Behavior, 50(1), 31-48",
          nil
        })

        :mnesia.write({:reference, "El-Sharkawy, A. M., Watson, P., & Jack, S.", 2015,
          "Hydration and outcome in older adults",
          "Current Opinion in Clinical Nutrition & Metabolic Care, 18(1), 17-22",
          nil
        })

        :mnesia.transaction(fn ->
          :mnesia.write({:reference, "Herr, K., Coyne, P. J., McCaffery, M., Manworren, R., & Merkel, S.", 2011,
              "Pain assessment in the patient unable to self-report: Position statement with clinical practice recommendations",
              "Pain Management Nursing, 12(4), 230-250",
              nil
          })

          :mnesia.write({:reference, "Lacey, K., & Pritchett, E.", 2003,
              "Nutritional assessment and intervention in older adults",
              "British Journal of Nursing, 12(4), 237-241",
              nil
          })

          :mnesia.write({:reference, "National Institute for Health and Care Excellence (NICE)", 2021,
              "Respiratory tract infections (self-limiting): NICE clinical guideline",
              "Available at: https://www.nice.org.uk",
              nil
          })

          :mnesia.write({:reference, "National Institute of Mental Health", 2020,
              "Depression",
              "Available at: https://www.nimh.nih.gov/health/topics/depression",
              nil
          })

          :mnesia.write({:reference, "Royal College of Physicians", 2017,
              "National Early Warning Score (NEWS) 2. Improving detection and response to clinical deterioration in adults",
              "Available at: https://www.rcplondon.ac.uk",
              nil
          })


        :mnesia.write({:reference, "Coleman, S., Gorecki, C., Nelson, E. A., Closs, S. J., Defloor, T., Halfens, R., & Nixon, J.", 2014,
          "Patient risk factors for pressure ulcer development: Systematic review",
          "International Journal of Nursing Studies, 51(5), 947-962",
          nil
        })

        :mnesia.write({:reference, "Cornwell, E. Y., & Waite, L. J.", 2009,
          "Social disconnectedness, perceived isolation, and health among older adults",
          "Journal of Health and Social Behavior, 50(1), 31-48",
          nil
        })

        :mnesia.write({:reference, "El-Sharkawy, A. M., Watson, P., & Jack, S.", 2015,
          "Hydration and outcome in older adults",
          "Current Opinion in Clinical Nutrition & Metabolic Care, 18(1), 17-22",
          nil
        })

        :mnesia.write({:reference, "Holt-Lunstad, J., Smith, T. B., Baker, M., Harris, T., & Stephenson, D.", 2015,
          "Loneliness and social isolation as risk factors for mortality: A meta-analytic review",
          "Perspectives on Psychological Science, 10(2), 227-237",
          nil
        })

        :mnesia.write({:reference, "Lupton, D.", 2018,
          "Digital health: Critical and cross-disciplinary perspectives",
          "Routledge",
          nil
        })

        :mnesia.write({:reference, "McCabe, C., & Timmins, F.", 2013,
          "Communication skills for nursing practice. 2nd edn.",
          "Palgrave Macmillan",
          nil
        })

        :mnesia.write({:reference, "McCormack, B., & McCance, T.", 2017,
          "Person-centred practice in nursing and health care: Theory and practice",
          "Wiley-Blackwell",
          nil
        })

        :mnesia.write({:reference, "NHS", 2023,
          "NHS weight loss plan",
          "Available at: https://www.nhs.uk/live-well/healthy-weight/start-the-nhs-weight-loss-plan/",
          "Accessed: 24 December 2024"
        })

        :mnesia.write({:reference, "NICE", 2016,
          "Patient experience in adult NHS services: improving the experience of care for people using adult NHS services",
          "National Institute for Health and Care Excellence",
          nil
        })

        :mnesia.transaction(fn ->
          :mnesia.write({:reference, "Herr, K., Coyne, P. J., McCaffery, M., Manworren, R., & Merkel, S.", 2011,
              "Pain assessment in the patient unable to self-report: Position statement with clinical practice recommendations",
              "Pain Management Nursing, 12(4), 230-250",
              nil
          })

          :mnesia.write({:reference, "Lacey, K., & Pritchett, E.", 2003,
              "Nutritional assessment and intervention in older adults",
              "British Journal of Nursing, 12(4), 237-241",
              nil
          })

          :mnesia.write({:reference, "National Institute for Health and Care Excellence (NICE)", 2021,
              "Respiratory tract infections (self-limiting): NICE clinical guideline",
              "Available at: https://www.nice.org.uk",
              nil
          })

          :mnesia.write({:reference, "National Institute of Mental Health", 2020,
              "Depression",
              "Available at: https://www.nimh.nih.gov/health/topics/depression",
              nil
          })

          :mnesia.write({:reference, "Royal College of Physicians", 2017,
              "National Early Warning Score (NEWS) 2. Improving detection and response to clinical deterioration in adults",
              "Available at: https://www.rcplondon.ac.uk",
              nil
          })

        :mnesia.write({:reference, "NHS", 2023,
          "NHS weight loss plan",
          "Available at: https://www.nhs.uk/live-well/healthy-weight/start-the-nhs-weight-loss-plan/",
          "Accessed: 24 December 2024"
        })

        :mnesia.write({:reference, "NICE", 2016,
          "Patient experience in adult NHS services: improving the experience of care for people using adult NHS services",
          "National Institute for Health and Care Excellence",
          nil
        })

        :mnesia.write({:reference, "Vermeulen, J., Neyens, J. C., van Rossum, E., Spreeuwenberg, M. D., & de Witte, L. P.", 2018,
          "The use of assistive devices for independence in daily life: A review",
          "Ageing Research Reviews, 5(1), 31-42",
          nil
        })

        :mnesia.write({:reference, "World Health Organization", 2021,
          "Promoting health and well-being",
          "Available at: https://www.who.int/health-topics/health-promotion",
          "Accessed: 24 December 2024"
        })

        :mnesia.write({:reference, "Baumeister, R. F., & Leary, M. R.", 1995,
          "The need to belong: Desire for interpersonal attachments as a fundamental human motivation",
          "Psychological Bulletin, 117(3), 497-529",
          nil
        })

        :mnesia.write({:reference, "Fallowfield, L., Jenkins, V., Farewell, V., & Solis-Trapala, I.", 2002,
          "Endocrine therapy for older women with breast cancer: The impact on quality of life of women randomized to tamoxifen alone compared to tamoxifen and radiotherapy",
          "British Journal of Cancer, 86(1), 65-71",
          nil
        })

        :mnesia.write({:reference, "Holt-Lunstad, J., Smith, T. B., Baker, M., Harris, T., & Stephenson, D.", 2015,
          "Loneliness and social isolation as risk factors for mortality: A meta-analytic review",
          "Perspectives on Psychological Science, 10(2), 227-237",
          nil
        })

        :mnesia.write({:reference, "McCormack, B., & McCance, T.", 2017,
          "Person-centred practice in nursing and health care: Theory and practice",
          "Wiley-Blackwell",
          nil
        })

        :mnesia.write({:reference, "NICE", 2018,
          "Dementia: assessment, management and support for people living with dementia and their careers",
          "National Institute for Health and Care Excellence",
          nil
        })

        :mnesia.write({:reference, "Ryan, R. M., & Deci, E. L.", 2000,
          "Self-determination theory and the facilitation of intrinsic motivation, social development, and well-being",
          "American Psychologist, 55(1), 68-78",
          nil
        })

        :mnesia.transaction(fn ->
          :mnesia.write({:reference, "Herr, K., Coyne, P. J., McCaffery, M., Manworren, R., & Merkel, S.", 2011,
              "Pain assessment in the patient unable to self-report: Position statement with clinical practice recommendations",
              "Pain Management Nursing, 12(4), 230-250",
              nil
          })

          :mnesia.write({:reference, "Lacey, K., & Pritchett, E.", 2003,
              "Nutritional assessment and intervention in older adults",
              "British Journal of Nursing, 12(4), 237-241",
              nil
          })

          :mnesia.write({:reference, "National Institute for Health and Care Excellence (NICE)", 2021,
              "Respiratory tract infections (self-limiting): NICE clinical guideline",
              "Available at: https://www.nice.org.uk",
              nil
          })

          :mnesia.write({:reference, "National Institute of Mental Health", 2020,
              "Depression",
              "Available at: https://www.nimh.nih.gov/health/topics/depression",
              nil
          })

          :mnesia.write({:reference, "Royal College of Physicians", 2017,
              "National Early Warning Score (NEWS) 2. Improving detection and response to clinical deterioration in adults",
              "Available at: https://www.rcplondon.ac.uk",
              nil
          })
       end)
# ...existing code...
       end)
      end)
    end)
  end
end
