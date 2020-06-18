def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year from books WHERE series_id = 1"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters 
   ORDER BY LENGTH(motto) DESC LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) FROM characters
  WHERE species = 'human'"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
   FROM authors
   JOIN subgenres
   ON authors.id = subgenres.id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series
   JOIN characters
   ON series.id = characters.series_id
   WHERE species = 'human'
   GROUP BY series.title
   ORDER BY COUNT(characters.species) DESC LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(name) 
   FROM characters
   JOIN character_books
   ON characters.id =character_books.character_id
   GROUP BY name
   ORDER BY COUNT(name) DESC
   "
end
