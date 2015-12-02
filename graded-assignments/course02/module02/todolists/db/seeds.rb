User.destroy_all
Profile.destroy_all
TodoList.destroy_all
TodoItem.destroy_all

User.create! [
  { username: "Fiorina", password_digest: "1234" },
  { username: "Trump", password_digest: "1234" },
  { username: "Carson", password_digest: "1234" },
  { username: "Clinton", password_digest: "1234" },
]

User.find_by!(username: "Fiorina").create_profile(gender: "female", birth_year: 1954, first_name: "Carly", last_name: "Fiorina")
User.find_by!(username: "Trump").create_profile(gender: "male", birth_year: 1946, first_name: "Donald", last_name: "Trump")
User.find_by!(username: "Carson").create_profile(gender: "male", birth_year: 1951, first_name: "Ben", last_name: "Carson")
User.find_by!(username: "Clinton").create_profile(gender: "female", birth_year: 1947, first_name: "Hillary", last_name: "Clinton")

User.all.each do | user |
	TodoList.create!(list_name: user.username, list_due_date: Date.today + 1.year, user_id: user.id)
end

TodoList.all.each do | todo_list |
	TodoItem.create!(due_date: Date.today + 1.year, title: todo_list.list_name + "1", description: "some text", todo_list_id: todo_list.id)
	TodoItem.create!(due_date: Date.today + 1.year, title: todo_list.list_name + "2", description: "some text", todo_list_id: todo_list.id)
	TodoItem.create!(due_date: Date.today + 1.year, title: todo_list.list_name + "3", description: "some text", todo_list_id: todo_list.id)
	TodoItem.create!(due_date: Date.today + 1.year, title: todo_list.list_name + "4", description: "some text", todo_list_id: todo_list.id)
	TodoItem.create!(due_date: Date.today + 1.year, title: todo_list.list_name + "5", description: "some text", todo_list_id: todo_list.id)
end