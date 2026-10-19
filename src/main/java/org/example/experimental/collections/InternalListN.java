package org.example.experimental.collections;

//import java.util.ImmutableCollections;

import java.util.List;

public class InternalListN {
    static void main() {
        List<Integer> list = List.of(1, 2, 3, 4, 5); // returns ImmutableCollections>ListN

        // Compile error due to it's package-private
        // ImmutableCollections.listFromTrustedArray(1,2,3,4,5);
        System.out.println(list);
    }
}
