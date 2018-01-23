Dir.glob(File.expand_path('../../lib/', __FILE__)+'/**/*.rb') { |file| require_relative file }

module Sort
  class Sort
    def self.sort(bag, algorithm='insertion', form='iterative')
      algorithm_klass_name = algorithm.capitalize
      form_module = form.capitalize
      algorithm_klass = Object.const_get("Sort::#{form_module}::#{algorithm_klass_name}")
      algorithm_klass.sort(bag)
    end
  end
end
