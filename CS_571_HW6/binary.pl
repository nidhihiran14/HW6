% Binary Search Tree Rotation

% rotateRight(In, Out): right rotation at root
rotateRight(tree(K2, V2, tree(K1, V1, L1, R1), R2),
            tree(K1, V1, L1, tree(K2, V2, R1, R2))).

% rotateLeft(In, Out): left rotation at root
rotateLeft(tree(K1, V1, L1, tree(K2, V2, L2, R2)),
           tree(K2, V2, tree(K1, V1, L1, L2), R2)).

% Example test tree for rotateRight
ltree(tree(3, c,
           tree(2, b,
                tree(1, a, empty, empty),
                empty),
           empty)).

% Example test tree for rotateLeft
rtree(tree(1, a,
           empty,
           tree(2, b,
                empty,
                tree(3, c, empty, empty)))).
