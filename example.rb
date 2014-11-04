require 'rblineprof'
require 'rblineprof-report'

target = /./
profile = lineprof(target) do
  sleep 0.1
end
LineProf::Report.report(profile)
