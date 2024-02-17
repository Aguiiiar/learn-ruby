require 'pg'

class PostgresDB

  def initialize(dbname, user, password, host, port)
    @dbname = dbname
    @user = user
    @password = password
    @host = host 
    @port = port
    @conn = {}
  end
  
  def connection()
    begin
      @conn = PG.connect(
        dbname: @dbname,
        user: @user,
        password: @password,
        host: @host,
        port: @port
      )

      puts "Conexão estabelecida"
      rescue
        raise "Não foi possível se conectar"
    end
  end

  # @param [columns] Hash
  def insert(columns) 
    begin
      @conn.exec_params(
          "INSERT INTO gyms (id, title, description, phone, latitude, longitude) VALUES ($1, $2, $3, $4, $5, $6)",
          [columns[:id], columns[:title], columns[:description], columns[:phone], columns[:latitude], columns[:longitude]]
        )
        puts "Dados inseridos com sucesso!"
      rescue PG::Error => err
        raise "#{err.message}"        
    end
  end

  def select()
    begin
      
      result = @conn.exec("SELECT * FROM gyms")

      result.each do |row|
        puts "#{row['id']} - #{row['title']} - #{row['description']}"
      end
      rescue PG::Errno => err
        raise "#{err.message}"
    end
  end

  # @param [id] Integer
  def delete(id)
    begin
      
      @conn.exec("DELETE FROM gyms WHERE id = '#{id}'")
      puts 'Deletado'
      rescue PG::Errno => err
        raise "#{err.message}"
    end
  end

  def update(where, column, value)
    begin
      @conn.exec("UPDATE gyms SET #{column} = '#{value}' WHERE #{where[:name]} = '#{where[:value]}'")
      puts 'Atualizado\n'.chomp('\n')
      rescue PG::Errno => err
    end
  end
end

database = PostgresDB.new('postgres', 'postgres', 'postgres', 'localhost', 5432)

database.connection()

columns = {
  id: 1,
  title: 'SkyFit',
  description: 'SkyFit academia',
  phone: '12313213213',
  latitude: '-123213213213',
  longitude: '-2131313213'
}
database.insert(columns)

database.select()

where = {
  name: "id",
  value: "1"
}
database.update(where, 'title', 'SkyFit Academia Inovação')
database.update(where, 'description', 'Supere seus limites')

database.select()

database.delete(where[:value])