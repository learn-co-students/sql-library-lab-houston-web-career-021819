def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE series_id = 1 ORDER BY year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER BY motto ASC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "WITH temp_table (species_value, SumOfSpecies) AS(
    SELECT species, COUNT(species)
    FROM characters
    GROUP BY species)
  SELECT species_value, SumOfSpecies
  FROM temp_table
  ORDER BY SumOfSpecies DESC
  LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM subgenres
  JOIN series
  ON series.subgenre_id = subgenres.id
  JOIN authors
  ON authors.id = series.author_id;"
end

def select_series_title_with_most_human_characters
  "WITH temp_table (species_value, SumOfSpecies, series_id) AS(
    SELECT species, COUNT(species), series_id
      FROM characters
      GROUP BY series_id, species)
  SELECT title
  FROM series
  JOIN temp_table
  ON series.id = temp_table.series_id
  WHERE species_value = 'human'
  ORDER BY SumOfSpecies DESC
  LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "WITH temp_table (character_id, SumOfAppearances) AS(
    SELECT character_id, COUNT(book_id)
    FROM character_books
    GROUP BY character_id)
  SELECT name, SumOfAppearances
  FROM temp_table
  JOIN characters
  ON characters.id = temp_table.character_id
  ORDER BY SumOfAppearances DESC, name;"
end
