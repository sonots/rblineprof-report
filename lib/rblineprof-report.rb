require 'rblineprof/report'

module LineProf
  def self.report(profile, options = {})
    Report.new.report(profile, options)
  end
end
