































# def array_func
#
#   ray = [0,3,4,91,21,41,71]
#   random_seeds_array = []
#   i = 0
#   while i < 5 do
#
#     random_number = false
#
#     while true do
#       random_number = rand(0..ray.length - 1)
#       if !random_seeds_array.include? random_number
#         break
#       end
#     end
#
#     random_seeds_array.push(random_number);
#
#     i += 1
#
#   end
#
#
#
#   # puts ray.to_s
#   # puts random_seeds_array.to_s
#
#   puts "randomized array: #{ray[random_seeds_array[0]].to_s.rjust(2,'0')} #{ray[random_seeds_array[1]].to_s.rjust(2,'0')} #{ray[random_seeds_array[2]].to_s.rjust(2,'0')} #{ray[random_seeds_array[3]].to_s.rjust(2,'0')} #{ray[random_seeds_array[4]].to_s.rjust(2,'0')}"
#
# end
#
#
# it = 0
# while it < 3 do
#    array_func
#    sleep(1.2)
#    it +=  1 # where you may freely set i to any value
#
# end
