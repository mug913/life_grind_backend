# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all


 user = User.create({ username: 'john doe', email: 'john@email.com', id:50})
 user2 = User.create({username: 'jane doe', email: 'jane@email.com', id:52})

 goal1 = Goal.create({ name: 'day', field_number: 2, position: 0, streak:3, level:3, user_id:50, id:53})
 goal2 = Goal.create({ name: 'jog', field_number: 3, position: 1, streak:1, level:1, user_id:50, id:54})

 goal_entry1 = GoalRecord.create({ date: "2020-11-11 10:11:23. 111", field_1_name: "energy", field_1_type: "number", field_1_data: "10", field_2_name: "mood", field_2_type: "string", field_2_data: "fine", goal_id: 53})
 goal_entry1 = GoalRecord.create({ date: "2020-12-11 10:11:23. 111", field_1_name: "energy", field_1_type: "number", field_1_data: "9", field_2_name: "mood", field_2_type: "string", field_2_data: "great", goal_id: 53})
 goal_entry1 = GoalRecord.create({ date: "2020-13-11 10:11:23. 111", field_1_name: "energy", field_1_type: "number", field_1_data: "8", field_2_name: "mood", field_2_type: "string", field_2_data: "bad", goal_id: 53})
 goal_entry1 = GoalRecord.create({ date: "2020-11-11 10:11:23. 111", field_1_name: "distance", field_1_type: "number", field_1_data: "10", field_2_name: "time", field_2_type: "number", field_2_data: "50:00", field_3_name: "felt", field_3_type: "string", field_3_data: "fine", goal_id: 54})