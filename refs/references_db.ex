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
      end)
    end)
  end
end
