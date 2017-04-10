# Breadth-first search
Breadth-first search assigns two values to each vertex *v*:
- A distance, giving the minimum number of edges in any path from the source vertex to vertex *v*.
- The predecessor vertex of *v* along some shortest path from the source vertex. The source vertex's predecessor is some special value, such as `nil`, indicating that it has no predecessor.

#### How it works
The function `do_bfs` performs a breadth-first search on a graph. It accepts a graph, represented as adjacency lists, and the index of the source vertex. Then returns an array of objects describing each vertex, like `[{distance: _, predecessor: _ }]`

You can use `test.rb` script to test it out.
