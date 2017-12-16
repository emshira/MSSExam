namespace :db do
  desc "Seeds Questions"

  task questions_seed: :environment do
    load(File.join(Rails.root, 'db', 'seeds', "questions.rb"))
  end
end
