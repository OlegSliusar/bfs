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

bfs_info.each_with_index do |e, i|
  puts "vertex #{i}  : distance = #{e[:distance]} predecessor = #{e[:predecessor]}"
end
