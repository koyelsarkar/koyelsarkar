def gcd(a,b)
begin
puts "the numbers are #{a},#{b}"
if (a and b)!=0
puts "no error"
while a!=0
c=a
a=b%a
b=c
end
puts "the gcd is #{b}"
end
rescue 
puts "I am rescuing only Zero Division Error"
if a==0
a=a+1
else
b=b+1
end
retry
end
end

