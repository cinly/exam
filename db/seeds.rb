# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.new
u.email = "123admin@test.com"
u.password = "123456"
u.password_confirmation = "123456"
u.is_admin = true
u.save

Category.create(name: "全国卷")
Category.create(name: "山东省")
Category.create(name: "北京市")
Category.create(name: "四川省")
Category.create(name: "上海市")
Category.create(name: "江苏省")




for i in 1..18
  Quiz.create!([title: "2017年考题",description:"2017年高考选择题", product_id: i])

create_quizzes =
    Quiz.create!([title: "2016年考题",description:"2016年高考选择题", product_id: i])

create_quizzes =
    Quiz.create!([title: "2015年考题",description:"2015年高考选择题", product_id: i])

end

for i in 1..54

create_questions =
  Question.create!([content: "1+1=？",answer_1:"2", answer_2:"1",answer_3:"3",answer_4:"4" ,
    quiz_id: 1, is_a1en: true ,is_b1en: false,is_c1en: false,is_d1en: false])

create_questions =
  Question.create!([content: "category什么意思？",answer_1:"类", answer_2:"类别",answer_3:"不知道",answer_4:"好",
    quiz_id: 1, is_a1en: false ,is_b1en: true,is_c1en: false,is_d1en: false])

create_questions =
  Question.create!([content: "要如何背单词？",answer_1:"背诵", answer_2:"书写",answer_3:"默念",answer_4:"hello",
    quiz_id: 1, is_a1en: false ,is_b1en: false,is_c1en: true,is_d1en: false])

create_questions =
  Question.create!([content: "false怎么读？",answer_1:"不会", answer_2:"没答案",answer_3:"乱写的",answer_4:"问google",
     quiz_id: 1, is_a1en: false ,is_b1en: false,is_c1en: false,is_d1en: true])

create_questions =
 Question.create!([content: "1+3=？",answer_1:"1", answer_2:"2",answer_3:"4",answer_4:"5",
    quiz_id: 1, is_a1en: false ,is_b1en: false,is_c1en: false,is_d1en: true])

create_questions =
  Question.create!([content: "你好用英语怎么说",answer_1:"hello", answer_2:"hi",answer_3:"good",answer_4:"fine" ,
    quiz_id: 1, is_a1en: true ,is_b1en: false,is_c1en: false,is_d1en: false])


create_questions =
  Question.create!([content: "乱写的题目？",answer_1:"第一类", answer_2:"第二类",answer_3:"第三类",answer_4:"第四类",
    quiz_id: 1, is_a1en: false ,is_b1en: true,is_c1en: false,is_d1en: false])

create_questions =
  Question.create!([content: "努力学习？",answer_1:"规范一", answer_2:"规范二",answer_3:"规范三",answer_4:"规范四",
    quiz_id: 1, is_a1en: false ,is_b1en: false,is_c1en: true,is_d1en: false])



    create_questions =
      Question.create!([content: "false怎么读？",answer_1:"不会", answer_2:"没答案",answer_3:"乱写的",answer_4:"问google",
         quiz_id: 2, is_a1en: false ,is_b1en: false,is_c1en: false,is_d1en: true])

    create_questions =
     Question.create!([content: "1+3=？",answer_1:"1", answer_2:"2",answer_3:"4",answer_4:"5",
        quiz_id: 2, is_a1en: false ,is_b1en: false,is_c1en: false,is_d1en: true])

    create_questions =
      Question.create!([content: "你好用英语怎么说",answer_1:"hello", answer_2:"hi",answer_3:"good",answer_4:"fine" ,
        quiz_id: 2, is_a1en: true ,is_b1en: false,is_c1en: false,is_d1en: false])


    create_questions =
      Question.create!([content: "乱写的题目？",answer_1:"第一类", answer_2:"第二类",answer_3:"第三类",answer_4:"第四类",
        quiz_id: 2, is_a1en: false ,is_b1en: true,is_c1en: false,is_d1en: false])

    create_questions =
      Question.create!([content: "努力学习？",answer_1:"规范一", answer_2:"规范二",answer_3:"规范三",answer_4:"规范四",
        quiz_id: 2, is_a1en: false ,is_b1en: false,is_c1en: true,is_d1en: false])

        create_questions =
          Question.create!([content: "1+1=？",answer_1:"2", answer_2:"1",answer_3:"3",answer_4:"4" ,
            quiz_id: 3, is_a1en: true ,is_b1en: false,is_c1en: false,is_d1en: false])

        create_questions =
          Question.create!([content: "category什么意思？",answer_1:"类", answer_2:"类别",answer_3:"不知道",answer_4:"好",
            quiz_id: 3, is_a1en: false ,is_b1en: true,is_c1en: false,is_d1en: false])

        create_questions =
          Question.create!([content: "要如何背单词？",answer_1:"背诵", answer_2:"书写",answer_3:"默念",answer_4:"hello",
            quiz_id: 3, is_a1en: false ,is_b1en: false,is_c1en: true,is_d1en: false])

        create_questions =
          Question.create!([content: "false怎么读？",answer_1:"不会", answer_2:"没答案",answer_3:"乱写的",answer_4:"问google",
             quiz_id: 3, is_a1en: false ,is_b1en: false,is_c1en: false,is_d1en: true])

        create_questions =
         Question.create!([content: "1+3=？",answer_1:"1", answer_2:"2",answer_3:"4",answer_4:"5",
            quiz_id: 3, is_a1en: false ,is_b1en: false,is_c1en: false,is_d1en: true])
