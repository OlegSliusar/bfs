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
  
  while !queue.is_empty?
    u = queue.dequeue

    graph[u].each do |v|
      if bfs_info[v][:distance].nil?
        queue.enqueue(v)
        bfs_info[v][:distance] = bfs_info[u][:distance] + 1
        bfs_info[v][:predecessor] = u
      end
    end
  end

  bfs_info
end
