class BatchConfig < ApplicationRecord

  def self.run(type = 'daily')
    where(running_type: type).each { |config| config.run }
  end

  def run
    return unless active_flg
    puts ""
    puts "process '#{process}' start (#{Time.now})"
    eval(process)
    puts "process '#{process}' stop (#{Time.now})"
    puts ""
  end
end
