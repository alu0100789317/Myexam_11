class Answer 
	attr_accessor :kind, :order, :answer

	def initialize(order, kind, answer)
		@kind=kind
		@order=order
		@answer=answer	
	end

	def to_s
		"#{@order}- #{@answer}"
	end
	
	def is_right?
	    if @kind == Quiz::RIGHT  
	     true 
	    end
	end
	
	def <=>(other)
	 @order <=> other.order
	end

end
