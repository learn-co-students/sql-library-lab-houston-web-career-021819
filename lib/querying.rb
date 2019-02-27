def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT Books.title, Books.year FROM Books
  WHERE Books.series_id = 1
  ORDER BY Books.year
  "
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM Characters
  ORDER BY length(Characters.motto) DESC
  LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT (species) FROM Characters
  GROUP BY species
  ORDER BY COUNT (species) DESC
  LIMIT 1
  "
end

def select_name_and_series_subgenres_of_authors
  "SELECT Authors.name, subgenres.name FROM Authors
  JOIN series ON authors.id = series.author_id
  JOIN subgenres ON series.subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
  "SELECT Series.title FROM Series
  JOIN Characters ON Characters.series_id = Series.id
  WHERE Characters.species = 'human'
  GROUP BY series.title
  ORDER BY COUNT(Characters.species) DESC
  LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT name, COUNT (name) FROM Characters
  JOIN character_books ON Characters.id = character_books.character_id
  GROUP BY name
  ORDER BY Count (name) DESC
  "
end