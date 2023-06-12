# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
categories = {
    'Кардіологія' => 'Діагностика та лікування захворювань серця.',
    'Неврологія' => 'Діагностика та лікування захворювань нервової системи.',
    'Дерматологія' => 'Діагностика та лікування шкірних захворювань.',
    'Офтальмологія' => 'Діагностика та лікування захворювань очей.',
    'Стоматологія' => 'Лікування та профілактика захворювань порожнини рота.',
    'Гастроентерологія' => 'Діагностика та лікування захворювань шлунково-кишкового тракту.',
    'Педіатрія' => 'Медична допомога дітям та підліткам.',
    'Онкологія' => 'Діагностика та лікування онкологічних захворювань.',
    'Гінекологія' => 'Діагностика та лікування захворювань жіночої репродуктивної системи.',
    'Урологія' => 'Діагностика та лікування захворювань сечостатевої системи.'
  }

categories.each do |k, v| 
  Category.create(name: k, description: v)
end
