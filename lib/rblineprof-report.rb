require 'rblineprof/report'

module LineProf
  def self.report
    Report.new.report(profile, options)
  end
end
