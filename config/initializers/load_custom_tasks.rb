Dir[Rails.root.join('lib', 'tasks', '*.rake')].each { |f| load f }