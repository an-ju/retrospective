module WastesHelper
  # summarize a list of wastes into a seriousness number
  def seriousness(wastes)
    wastes.inject(0) { |sum, waste| sum + waste.rating }
  end

  # collect the list of issues
  def issues(wastes)
    wastes.flat_map(&:issues).inject(Hash.new(0)) { |h, issue| h[issue] += 1; h }
  end

  # get the sum of ratings
  def rating_sum(wastes)
    wastes.inject(0) { |sum, v| sum + v.rating }
  end
end
