require 'rblineprof'
require 'term/ansicolor'
require 'rblineprof/report/sample'
require 'rblineprof/report/source'

module LineProf

  CONTEXT  = 0
  NOMINAL  = 1
  WARNING  = 2
  CRITICAL = 3

  class Report
    def self.report(profile, options = {})
      self.new.report(profile, options)
    end

    # options
    #   :context
    #   :thresholds
    def report(profile, options = {})
      puts Term::ANSIColor.blue("\n[LineProf] #{'=' * 63}") + "\n\n" +
        format_profile(profile, options) + "\n"
    end

    def format_profile(profile, options = {})
      sources = profile.map do |filename, samples|
        Source.new filename, samples, options
      end

      sources.map(&:format).compact.join "\n"
    end
  end
end
