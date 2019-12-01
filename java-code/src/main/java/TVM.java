import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by GaPhil on 2019-11-30.
 */
class Node {
    private Node prev;
    private Node next;
    private Map<String, Integer> data;

    public Node() {
    }

    public Node(Node prev, Node next, Map<String, Integer> data) {
        this.prev = prev;
        this.next = next;
        this.data = data;
    }

    public Node getPrev() {
        return prev;
    }

    public void setPrev(Node prev) {
        this.prev = prev;
    }

    public Node getNext() {
        return next;
    }

    public void setNext(Node next) {
        this.next = next;
    }

    public Map<String, Integer> getData() {
        return data;
    }

    public void setData(Map<String, Integer> data) {
        this.data = data;
    }
}

public class TVM {

//    public static bool branch(currentbit, node)
//          new_nodes = generate_candidates(currentbit)
//          for node in new_nodes:
//              check_legality(node)

    public static void main(String[] args) {
        System.out.println("Hello TVM");
        List<Node> nodes = new ArrayList<>();
        for (int k = 0; k < 64; k++)
            nodes.add(new Node()); // create first level of nodes
        int i = 0;
        for (Node n : nodes) {       // 64 iterations
            Map<String, Integer> map = new HashMap<>();
            // alternate 2, 4, 8, 16, 32
            map.put("s66", i % 2);
            map.put("s93", (i >> 1) % 2);
            map.put("s162", (i >> 2) % 2);
            map.put("s177", (i >> 3) % 2);
            map.put("s243", (i >> 4) % 2);
            map.put("s288", (i >> 5) % 2);
            n.setData(map);
            i++;
        }
        for (int j = 0; j < 64; j++) {
            System.out.println("Node: " + j + " " + nodes.get(j).getData());
        }
    }


    // returns t1, t2, t3
    static int[][] z(int in) {
        if (in == 1) {
            return new int[][]{{0, 0, 1}, {0, 1, 0}, {1, 0, 0}, {1, 1, 1}};
        } else if (in == 0) {
            return new int[][]{{1, 1, 0}, {1, 0, 1}, {0, 1, 1}, {0, 0, 0}};
        }
        return null;
    }

    // returns s66, s93
    static int[][] t1(int in) {
        if (in == 1) {
            return new int[][]{{0, 1}, {1, 0}};
        } else if (in == 0) {
            return new int[][]{{1, 1}, {0, 0}};
        }
        return null;
    }

    // returns s162, s177
    static int[][] t2(int in) {
        if (in == 1) {
            return new int[][]{{0, 1}, {1, 0}};
        } else if (in == 0) {
            return new int[][]{{1, 1}, {0, 0}};
        }
        return null;
    }

    // returns s243, s288
    static int[][] t3(int in) {
        if (in == 1) {
            return new int[][]{{0, 1}, {1, 0}};
        } else if (in == 0) {
            return new int[][]{{1, 1}, {0, 0}};
        }
        return null;
    }

    // returns s69, t3
    static int[][] s1(int in) {
        if (in == 1) {
            return new int[][]{{0, 1}, {1, 0}};
        } else if (in == 0) {
            return new int[][]{{1, 1}, {0, 0}};
        }
        return null;
    }

    // returns s171, t1
    static int[][] s94(int in) {
        if (in == 1) {
            return new int[][]{{0, 1}, {1, 0}};
        } else if (in == 0) {
            return new int[][]{{1, 1}, {0, 0}};
        }
        return null;
    }

    // returns s64, t2
    static int[][] s178(int in) {
        if (in == 1) {
            return new int[][]{{0, 1}, {1, 0}};
        } else if (in == 0) {
            return new int[][]{{1, 1}, {0, 0}};
        }
        return null;
    }
}
