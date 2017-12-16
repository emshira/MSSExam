namespace :db do
  desc "Seeds Subjects"

  task subjects_seed: :environment do
    load(File.join(Rails.root, 'db', 'seeds', "subjects.rb"))
  end
end
