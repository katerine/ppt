class PPT

  def initialize

    @result = Array.new
    @result = {
      'Piedra' => 'Papel',
      'Papel' => 'Tijera',
      'Tijera' => 'Piedra'
    }

    @ganaHumano = 0
    @ganaMaquina = 0
    
    @seleccionHumano = ""
    @seleccionMaquina = ""

  end

  def NuevaRonda
    
    TurnoHumanos rand(3)
    TurnosMaquina()
    Evaluar()
    MostrarResult()
    
  end
 
  def NuevaRondas h,c

    TurnoHumanos h
    TurnoMaquina c
    return Evaluar()

  end
 
def TurnoHumano

    puts "Introduce tu eleccion:"

    instring = gets
    humano = instring[0,instring.length-1]
    humano.to_sym
    
    while humano != 'Piedra' and humano != 'Papel' and humano != 'Tijera' do
      
      puts "Cadena invalida"
      instring = gets
      humano = instring[0,instring.length-1]
      humano.to_sym
    
    end
    
    @seleccionHumano = humano
    
  end
  
  def TurnoHumanos val

    puts "Introduce tu eleccion:"
    @seleccionHumano = Number2Value  val
    puts @seleccionHumano

  end
  
  def TurnosMaquina
    
    elec = rand(3);
    
    @seleccionMaquina = Number2Value elec

    puts "seleccion de maquina: "+@seleccionMaquina
  end
  
  def TurnoMaquina v
     
    @seleccionMaquina = Number2Value v

    puts "seleccion de maquina: "+@seleccionMaquina
  end

  def Evaluar
    
    if(@seleccionMaquina != @seleccionHumano)

      if(@result[@seleccionMaquina] == @seleccionHumano)
        @ganaHumano+= 1
        puts "gana humano"
        return 0
      else
        @ganaMaquina+=1
        puts "gana maquina"
        return 1
      end
    end
    
    
  end
  
  def mostrarResult
    
    puts "Humano: "
    puts @ganahumano
    puts "Maquina: "
    puts @ganaMaquina
  end

  def Number2Value  elec

    case
    when elec == 0 then return 'Piedra'
    when elec == 1 then return 'Papel'
    when elec == 2 then return 'Tijera'
    else
    end

  end
end

Juego = PPT.new

Juego.NewRound
