require_relative 'queue'
def do_bfs(graph, source)
  bfs_info = []
  graph.length.times do |i|
    bfs_info[i] = {
      distance: nil,
      predecessor: nil
    }
  end

  bfs_info[source][:distance] = 0;

  queue = Queue.new
  queue.enqueue(source)
  
  bfs_info
end
