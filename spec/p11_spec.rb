require 'lib/p11/quiz.rb'
#!/usr/bin/env ruby
# encoding: utf-8
require 'net/http'

describe Quiz do

	before :each do
		@quiz = Quiz.new("Cuestionario de PFS 10/12/2011") do
			question '¿En que año Cristobal Colón descubrió América?', 2,
			wrong =>'1942',
			right =>'1492',
			wrong =>'1808',
			wrong =>'1914'
			a = rand(10)
			b = rand(10)
			question "#{a}+#{b} = ", 3,
			wrong =>"44",
			wrong =>"#{a + b + 2}",
			right =>"#{a + b}",
			wrong =>"#{a + b - 2}"
		end
	end

	describe "Quiz" do

		it "Comprobar clase quiz" do
			expect(@quiz.class).to eq(Quiz)
		end

		it "Numero preguntas" do
			expect(@quiz.run).to eq(2)
		end
	end

end
