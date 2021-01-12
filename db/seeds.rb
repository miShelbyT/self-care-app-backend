# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
activities = Activity.create([
  {name: 'running', category: 'cardio', benefits: 'Regular cardiovascular exercise can spark growth of new blood vessels to nourish the brain. Exercise may also produce new brain cells in certain locations through a process called neurogenesis, which may lead to an overall improvement in brain performance and prevent cognitive decline.'},
  {name: 'spinning or cycling', category: 'cardio', benefits: 'Easier on the joints than higher impact exercise but has all of the other mental and physical benefits that other cardiovascular exercise provides. Cycling with a friend increases the mental health benefits even more.'},
  {name: 'meditation', category: 'reset', benefits: 'When you meditate, you may clear away the information overload that builds up every day and contributes to your stress.
  The emotional benefits of meditation can include: gaining a new perspective on stressful situations, building skills to manage your stress, increasing self-awareness, focusing on the present, etc'},
  {name: 'hiking', category: 'varies, depending on the terrain', benefits: 'Being in nature can boost your mood and improve mental health. Spending quality time in the great outdoors reduces stress, calms anxiety, and can lead to a lower risk of depression, according to a study done by researchers at Stanford University.'},
  {name: 'sleep', category: 'reset', benefits: 'The mutual relationship between sleep and mental health is not yet completely understood. But neuroimaging and neurochemistry studies suggest that a good night`s sleep helps foster both mental and emotional resilience'}
])
  
