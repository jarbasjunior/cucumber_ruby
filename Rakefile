require 'awesome_print'
require 'time'

task :specs, [:tags] do |task, args|
  time = Time.now.utc.iso8601.tr(':', '')
  report = "--format html --out=log/report_#{time}.html"
  sh "cucumber #{args[:tags]} #{report}"
  # ex terminal "rake specs\["-t @tmp"]\"
end
