package mesh;

@license(LGPL);

import ned.IdealChannel;

network Mesh
{
    parameters:
        int n = default(5);
    submodules:
        nodes[n]: Node {
            parameters:
                n = n;
        }
        Hub: Hub {
        }
    connections:

		for i=0..sizeof(nodes)-1{
		    Hub.outs++ --> nodes[i].in;
        	nodes[i].out --> Hub.ins++;
		}

}
