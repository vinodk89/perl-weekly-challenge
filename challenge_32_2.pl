use Graph::Easy;
 
my $graph = Graph::Easy->new();
 
# make a fresh copy of the graph
my $new_graph = $graph->copy();
 
$graph->add_edge ('Bonn', 'Berlin');
 
# will not add it, since it already exists
$graph->add_edge_once ('Bonn', 'Berlin');
 
print $graph->as_ascii( );