namespace "time_travel" do
  
  task :setup => ["db:create", "db:migrate", "db:seed"]

end