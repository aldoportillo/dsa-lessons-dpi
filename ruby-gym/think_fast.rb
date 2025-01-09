# Input: Any data type excluding arrays and classes
# Output: A string a boolean or array
require 'debug'

unpredictable_inputs = [
  "Hello!", # downcase print
  Time.now, #figure out the day of the week, downcased, and print
  rand(100), # figure out whether it’s odd or even and print (where X is the number) "X is odd", or "X is even"
  :GOODBYE, #Symbol: downcase it and print it
  nil, # Symbol: downcase it and print it
  true,  # "you may pass"
  false, # "you may not pass"
  { :city => "Chicago", :state => "IL", :zip => 60654 } #: print the list of keys within the Hash, as an Array.
]

some_random_input = unpredictable_inputs.sample


def think_fast(obj)

    case obj
    when String
        pp obj.downcase
    when Time
        pp obj.strftime("%A").downcase
    when Integer
        pp obj.even? ? "#{obj} is even": "#{obj} is odd"
    when Hash
        pp obj.keys
    else
    print('It is not a string or number')
    end

end

think_fast({ :city => "Chicago", :state => "IL", :zip => 60654 })
