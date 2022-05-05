# VARIABLES
# LOCALES
puts 'LOCALES'
def manipulador_de_strings
  string_editado = 'hola estudiantes!'
end
puts manipulador_de_strings
# GLOBALES
puts 'GLOBALES'
$speed = 100
def manipulador_de_numeros
  $speed = $speed * 2
end
puts manipulador_de_numeros

# CLASE
puts 'CLASE'
# Controlador
# def index; end
# def create; end
# def update; end

# def procesar_datos_productos
  # @@products = TareaProgramada ( En otro hilo / Background ) CONNECTION TIMEOUT => 30 segs.
# end

# def descargar_productos
  # XLS => @@products if !@@products.nil?
# end

# INSTANCIA
# @name
class Auto
  attr_accessor :name, :model, :year

  def initialize(args)
    @name, @model = args["name"], args["model"]
    @year = 2000
  end

  def change_name(name)
    @name = name
  end
end

auto = Auto.new(name: 'Honda', model: 'CRV', year: 2020)
auto.change_name('HONDA')
p auto.name



# CONSTANTES
REGION = 'ea-east'
ACCESS_KEY_ID = 'asdflasdf'
SECRET_KEY_KEY = 1323445254
BUCKET = 'william'

def builded_aws_object
  result = 'Cualquier cosa'
  { region: REGION, access_key_id: ACCESS_KEY_ID, secret_access_key: SECRET_KEY_KEY, bucket: BUCKET }
end
p builded_aws_object

# Nota: Snakecase se usa tanto para las variables, como para los métodos y keywords.

carro = 'ASDLFASF'
p carro.class

carro = 12595
p carro.class