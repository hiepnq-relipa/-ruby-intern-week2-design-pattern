class Logistics
  def planDelivery 
    t = createTransport()
    puts t 
  end

  def createTransport
    fail "Method missing"
  end
end

class RoadLogistics < Logistics
  def createTransport
    "This is RoadLogistic"
  end
end

class SeaLogistics < Logistics
  def createTransport
    "This is SeaLogistics"
  end
end

road_logistic = RoadLogistics.new
road_logistic.planDelivery

sea_logistic = SeaLogistics.new
sea_logistic.planDelivery