module WastesHelper
  # summarize a list of wastes into a seriousness number
  def seriousness(wastes)
    wastes.inject(0) { |sum, waste| sum + waste.rating }
  end

  # collect the list of issues
  def issues(wastes)
    wastes.flat_map(&:issues).inject(Hash.new(0)) { |h, issue| h[issue] += 1; h }
  end
end
