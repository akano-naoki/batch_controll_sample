class BatchModel
  def self.sample_process1(count = 30, sleep_sec = 10)
    count.times do |n|
      puts "#" * n + "_" * (count - n - 1)
      sleep sleep_sec
    end
  end

  def self.sample_process2(count = 30, sleep_sec = 10)
    count.times do |n|
      puts "@" * n + "_" * (count - n - 1)
      sleep sleep_sec
    end
  end
end
