def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_title
  "SELECT projects.title, SUM(pledges.amount) FROM projects JOIN pledges ON projects.id = pledges.project_id GROUP BY projects.title;"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
  "SELECT users.name, users.age, SUM(pledges.amount) FROM users JOIN pledges ON users.id = pledges.user_id GROUP BY users.name;"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  "SELECT Projects.title, (SUM(Pledges.amount) - Projects.funding_goal) FROM pledges INNER JOIN Projects ON Pledges.project_id = Projects.id GROUP BY project_id HAVING SUM(amount) >= funding_goal;"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_summed_amount
  "SELECT Users.name, SUM(Pledges.amount) FROM pledges INNER JOIN Users ON Pledges.user_id = Users.id GROUP BY Users.name ORDER BY SUM(Pledges.amount);"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
  "SELECT Projects.category, Pledges.amount FROM pledges INNER JOIN Projects ON Pledges.project_id = Projects.id WHERE Projects.category = 'music';"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
  "SELECT Projects.category, SUM(Pledges.amount) FROM pledges INNER JOIN Projects ON Pledges.project_id = Projects.id WHERE Projects.category = 'books';"
end