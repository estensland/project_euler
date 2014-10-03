class Integer
  def !
    (1..self).to_a.inject(&:*)
  end
end

p 100.!.to_s.split('').map(&:to_i).inject(&:+)