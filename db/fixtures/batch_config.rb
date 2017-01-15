# -*- coding: utf-8 -*-
BatchConfig.seed do |s|
  s.id = 1
  s.running_type = 'daily'
  s.process = 'BatchModel.sample_process1'
end
BatchConfig.seed do |s|
  s.id = 2
  s.running_type = 'hourly'
  s.process = 'BatchModel.sample_process2'
end

