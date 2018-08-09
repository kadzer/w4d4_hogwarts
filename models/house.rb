require_relative('../db/sql_runner')

class House
  attr_reader :id, :name, :logo

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @logo = options['logo']
  end

  def save()
    sql = "INSERT INTO houses (name, logo) VALUES ($1, $2) RETURNING id"
    values = [@name, @logo]
    house = SqlRunner.run(sql, values).first
    @id = house['id'].to_i()
  end

  def self.find_by_id(id)
    sql = "SELECT * FROM houses WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values).first
    return houses = House.new(result)
  end

  def self.all()
    sql = "SELECT * FROM houses"
    houses = SqlRunner.run(sql)
    return houses.map {|house| House.new(house)}
  end

end
