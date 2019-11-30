import java.util.HashMap;
import java.util.Map;

/**
 * Created by GaPhil on 2019-11-30.
 */
class Node {
    private Node prev;
    private Node next;
    private Map<String, int[][]> data;

    public Node() {
    }

    public Node(Node prev, Node next, Map<String, int[][]> data) {
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

    public Map<String, int[][]> getData() {
        return data;
    }

    public void setData(Map<String, int[][]> data) {
        this.data = data;
    }

    @Override
    public String toString() {
//        String aString = "";
        String aString = "Node{" +
                "prev=" + prev +
                ", next=" + next +
                ", data=";
        for (String key : this.data.keySet()) {
            aString += key + ": [";
            int[][] in = this.data.get(key);
            for (int row = 0; row < in.length; row++) {
                for (int col = 0; col < in[row].length; col++) {
                    aString += in[row][col];
                    if (col != in[row].length - 1) aString += " ";
                }
                if (row != in.length - 1) aString += ", ";
            }
            aString += "], ";
        }
        aString += '}';
        return aString;
    }
}

public class TVM {

//    public static bool branch(currentbit, node)
//          new_nodes = generate_candidates(currentbit)
//          for node in new_nodes:
//              check_legality(node)


    public static void main(String[] args) {
        System.out.println("Hello TVM");
        Node node = new Node();
        Map<String, int[][]> map = new HashMap<String, int[][]>();
        map.put("tempZ", z(1));
        map.put("tempT1", t1(1));
        map.put("tempT2", t2(1));
        map.put("tempT3", t3(1));
        map.put("tempS1", s1(1));
        map.put("tempS94", s94(1));
        map.put("tempS178", s178(1));
        node.setData(map);
        System.out.println(node.toString());
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
