# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


activities = Activity.create([
  {name: 'Running/Jogging', category: 'cardio', benefits: 'Regular cardiovascular exercise can spark growth of new blood vessels to nourish the brain. Exercise may also produce new brain cells in certain locations through a process called neurogenesis, which may lead to an overall improvement in brain performance and prevent cognitive decline.', url: 'https://www.hopkinsmedicine.org/health/wellness-and-prevention/the-truth-behind-runners-high-and-other-mental-benefits-of-running#:~:text=Other%20mental%20benefits%20include%3A,Elevated%20mood'},
  {name: 'Spinning/Cycling', category: 'cardio', benefits: 'Easier on the joints than higher impact exercise but has all of the mental and physical benefits that other cardiovascular exercise provides. Cycling with a friend increases the mental health benefits even more.', url: 'https://www.bicycling.com/news/a22787278/cycling-mental-health-benefits/'},
  {name: 'Meditation', category: 'reset', benefits: 'When you meditate, you may clear away the information overload that builds up every day and contributes to your stress. The emotional benefits of meditation can include: gaining a new perspective on stressful situations, building skills to manage your stress, increasing self-awareness, focusing on the present, etc.', url: 'https://www.mayoclinic.org/tests-procedures/meditation/in-depth/meditation/art-20045858#:~:text=Meditation%20can%20give%20you%20a,symptoms%20of%20certain%20medical%20conditions'},
  {name: 'Hiking', category: 'low impact/varies, depending on the terrain', benefits: 'Being in nature can boost your mood and improve mental health. Spending quality time in the great outdoors reduces stress, calms anxiety, and can lead to a lower risk of depression, according to a study done by researchers at Stanford University.', url: 'https://www.nps.gov/subjects/trails/benefits-of-hiking.htm#:~:text=Being%20in%20nature%20can%20boost,by%20researchers%20at%20Stanford%20University'},
  {name: 'Sleep', category: 'reset', benefits: 'The mutual relationship between sleep and mental health is not yet completely understood. But neuroimaging and neurochemistry studies suggest that a good night`s sleep helps foster both mental and emotional resilience.', url: 'https://www.health.harvard.edu/newsletter_article/sleep-and-mental-health'},
  {name: 'Yoga', category: 'reset, stretch, can be strenuous or restorative', benefits: 'Available reviews of a wide range of yoga practices suggest they can reduce the impact of exaggerated stress responses and may be helpful for both anxiety and depression. There is also evidence that yoga practices help increase heart rate variability, an indicator of the body`s ability to respond to stress more flexibly.', url: 'https://www.health.harvard.edu/mind-and-mood/yoga-for-anxiety-and-depression'}
])

users = User.create([
  {name: "Shelby", password: '123', city: "NYC", email_address: "shelby@shel.com"},
  {name: "Chris", password: '123', city: "NYC", email_address: "chris@c.com"}
])

user_activities = UserActivity.create([
  {user_id: 1, activity_id: 2}, 
  {user_id: 1, activity_id: 4},
  {user_id: 1, activity_id: 2},
  {user_id: 2, activity_name: "spending time with friends"},
  {user_id: 2, activity_name: "date night with SO"}
])


JournalEntry.create([
  {user_id: 1, user_activity_id: 1, date: "2020-12-20", length_of_time: 30, comments: "This was a very good spin session, I sweated out all my stress!"}, 
  {user_id: 1, user_activity_id: 2, date: "2020-12-24", length_of_time: 90, comments: "Went to Harriman, felt great to get outside"}, 
  {user_id: 1, user_activity_id: 3, date: "2020-12-31", length_of_time: 20, comments: "Eek. I didn't finish this session."},
  {user_id: 1, user_activity_id: 4, date: "2021-01-04", length_of_time: 20, comments: "Great meditation session, I felt very focused!!"},
  {user_id: 1, user_activity_id: 5, date: "2021-01-10", length_of_time: 30, comments: "Great spin!"},
  {user_id: 1, user_activity_id: 5, date: "2021-01-12", length_of_time: 45, comments: "Oof this was a tough session but I felt so accomplished, after"},
  {user_id: 2, user_activity_id: 4, date: "2021-01-10", length_of_time: 90, comments: "Such a good session"},
  {user_id: 2, user_activity_id: 4, date: "2021-01-12", length_of_time: 90, comments: "felt more relaxed and centered, after"}
])


  

