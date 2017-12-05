#BDD for RomeConverter model

require "RomeConverter"

RSpec.describe RomeConverter do
	describe ".to_rome" do
		context "When testing for Basic Roman numerals" do
			it "should check if 1 equals I" do
				expect(RomeConverter.new.to_rome(1)).to eql("I")
			end

			it "should check if 5 equals V" do
				expect(RomeConverter.new.to_rome(5)).to eql("V")
			end

			it "should check if 10 equals X" do
				expect(RomeConverter.new.to_rome(10)).to eql("X")
			end

			it "should check if 50 equals L" do
				expect(RomeConverter.new.to_rome(50)).to eql("L")
			end

			it "should check if 100 equals C" do
				expect(RomeConverter.new.to_rome(100)).to eql("C")
			end

			it "should check if 500 equals D" do
				expect(RomeConverter.new.to_rome(500)).to eql("D")
			end

			it "should check if 1000 equals M" do
				expect(RomeConverter.new.to_rome(1000)).to eql("M")
			end
		end

		context "When testing for 4, 9 and numerals, divisible by 4 and 9" do
			it "should check if 4 equals IV" do
				expect(RomeConverter.new.to_rome(4)).to eql("IV")
			end

			it "should check if 9 equals IX" do
				expect(RomeConverter.new.to_rome(9)).to eql("IX")
			end

			it "should check if 40 equals XL" do
				expect(RomeConverter.new.to_rome(40)).to eql("XL")
			end

			it "should check if 90 equals XC" do
				expect(RomeConverter.new.to_rome(90)).to eql("XC")
			end

			it "should check if 400 equals CD" do
				expect(RomeConverter.new.to_rome(400)).to eql("CD")
			end

			it "should check if 900 equals CM" do
				expect(RomeConverter.new.to_rome(900)).to eql("CM")
			end
		end

		context "When testing for 0" do
			it "should check if 0 equals nihil" do
				expect(RomeConverter.new.to_rome(0)).to eql("")
			end
		end
	end

	describe ".to_dec" do
		context "When testing for Basic Roman numerals" do
			it "should check if I equals 1" do
				expect(RomeConverter.new.to_dec("I")).to eql(1)
			end

			it "should check if V equals 5" do
				expect(RomeConverter.new.to_dec("V")).to eql(5)
			end

			it "should check if X equals 10" do
				expect(RomeConverter.new.to_dec("X")).to eql(10)
			end

			it "should check if L equals 50" do
				expect(RomeConverter.new.to_dec("L")).to eql(50)
			end

			it "should check if C equals 100" do
				expect(RomeConverter.new.to_dec("C")).to eql(100)
			end

			it "should check if D equals 500" do
				expect(RomeConverter.new.to_dec("D")).to eql(500)
			end

			it "should check if M equals 1000" do
				expect(RomeConverter.new.to_dec("M")).to eql(1000)
			end
		end

		context "When testing for IV, IX and numerals, divisible by 4 and 9" do
			it "should check if IV equals 4" do
				expect(RomeConverter.new.to_dec("IV")).to eql(4)
			end

			it "should check if IX equals 9" do
				expect(RomeConverter.new.to_dec("IX")).to eql(9)
			end

			it "should check if XL equals 40" do
				expect(RomeConverter.new.to_dec("XL")).to eql(40)
			end

			it "should check if XC equals 90" do
				expect(RomeConverter.new.to_dec("XC")).to eql(90)
			end

			it "should check if CD equals 400" do
				expect(RomeConverter.new.to_dec("CD")).to eql(400)
			end

			it "should check if CM equals 900" do
				expect(RomeConverter.new.to_dec("CM")).to eql(900)
			end
		end

		context "When testing for nihil" do
			it "should check if nihil equals 0" do
				expect(RomeConverter.new.to_dec("")).to eql(0)
			end
		end
	end
end
