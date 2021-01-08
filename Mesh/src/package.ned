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
}
