namespace :deploy do
  desc "enqueues post deploy tasks"
  task :tasks => :environment do
    Resque.enqueue(SiblingConsumer)
  end
end
