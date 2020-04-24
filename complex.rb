class ComplexNum
    attr_reader :real, :imag
    
    # init the variable
    def initialize(real, imag)
		@real = real
		@imag = imag
    end

    # addition
    def +(num)
		real = self.real + num.real
		imag = self.imag + num.imag
		
		puts "(#{self.real} + #{self.imag}i) + (#{num.real} + #{num.imag}i) = #{real} + #{imag}i"
		return ComplexNum.new(real, imag)
    end

    # multiplication 
    def *(num)
		real = (self.real * num.real) - (self.imag * num.imag)
		imag = (self.real * num.imag) + (self.imag * num.real)
	
		puts "(#{self.real} + #{self.imag}i) * (#{num.real} + #{num.imag}i) = #{real} + #{imag}i"		

		return ComplexNum.new(real, imag)
	end
    
    # bulk_add
    def self.bulk_add(nums)
		complex_num = nums[0]
		i = 1
        puts "Add array complex number\n\n"
			while i < nums.count
				complex_num += nums[i]
				i += 1
			end 		
			puts "the add bulk ===>>> (#{complex_num.real} + #{complex_num.imag}i)"
			return complex_num
	end

    # bulk_mul
	def self.bulk_multiply(nums)
        complex_num = nums[0]
            i = 1
            puts "Multiply array complex number\n\n"
                    while i < nums.count
                        complex_num *= nums[i]
                            i += 1
                    end

                    puts "the mult bulk ===>>> (#{complex_num.real} + #{complex_num.imag}i)"
            return complex_num
	end

end

complex1 = ComplexNum.new(5, 3)
complex2 = ComplexNum.new(4, 2)
complex3 = ComplexNum.new(4, 3)


complex_array = [complex1, complex2, complex3]

add = complex1 + complex2
mult = complex1 * complex2
ComplexNum.bulk_add(complex_array)
ComplexNum.bulk_multiply(complex_array)