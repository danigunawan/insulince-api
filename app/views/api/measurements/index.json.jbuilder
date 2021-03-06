@measurements.each do |measurement|
  json.set! measurement.id do
    json.extract! measurement, :chest, :waist, :hips, :weight, :height
    json.created_at measurement.created_at.to_f * 1000
  end
end
