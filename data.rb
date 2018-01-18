# data for last 5 Premier League winners
module Champions
  def self.json
    {values: ['Chelsea', 'Leicester City', 'Chelsea', 'Manchester City', 'Manchester United'] }.to_json
  end
end
