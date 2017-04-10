require_relative 'bfs'

adj_list = [
            [1],
            [0, 4, 5],
            [3, 4, 5],
            [2, 6],
            [1, 2],
            [1, 2, 6],
            [3, 5],
            []
            ]
bfs_info = do_bfs(adj_list, 3)

def print_nil(obj)
  return "nil" if obj.nil?
  obj
end

bfs_info.each_with_index do |e, i|
  puts "vertex #{i}  : distance = #{print_nil(e[:distance])} predecessor = #{print_nil(e[:predecessor])}"
end
