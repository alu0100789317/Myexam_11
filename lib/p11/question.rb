class Question 

	include Comparable
	include Enumerable

	attr_accessor :pregunta, :respuestas, :respuesta_usuario

	def initialize(pregunta, respuesta_usuario,respuestas)
		@pregunta=pregunta
		@respuesta_usuario=respuesta_usuario
		@respuestas=respuestas.map{|x,y| Answer.new(x[0], x[1], y)}.sort
	end
	

	def to_s
	output = <<"FINFUNCION"
	#{@pregunta} 
	#{
		out = ""
		@respuestas.each do |answer|
      			out << "#{answer}\n"
    		end
   	 	out
	}

FINFUNCION
	end
	
	def ask
	 begin
	   puts self
	   print "Su respuesta: "
	   r = @respuesta_usuario.to_i - 1
	   puts " #{r + 1}"
	   
	 end while (r < 0 or r >=@respuestas.length)
	 @respuestas[r].is_right?
	
	end

end
