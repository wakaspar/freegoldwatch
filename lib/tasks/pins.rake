desc "Makes a call to PinballMap.com's API, to gather an index of all pinball machines, and store it in the database, making it searchable"

task :pins => :environment do
  res = HTTParty.get('http://pinballmap.com/api/v1/machines.json', format: :json)
  res['machines'].each do |new_pin|
    pin = Pin.new
    pin.name = new_pin['name']
    pin.manufacturer = new_pin['manufacturer']
    pin.year = new_pin['year']
    pin.pbm_id = new_pin['id']
    pin.save
  end
end
