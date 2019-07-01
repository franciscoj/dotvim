class Example
  def my_method
    %w[a b c].each do |el|
      puts el
    end
  end
end

ex = Example.new
ex.my_method
