require 'awesome_print'
require 'time'

task :specs, [:tags, :browser] do |task, args|
  time = Time.now.utc.iso8601.tr(':', '')
  report = "--format html --out=log/report_#{time}.html"
  sh "cucumber #{args[:tags]} #{report} #{args[:browser]}"
  # ex terminal "rake specs\["-t @tmp"]\"
end
