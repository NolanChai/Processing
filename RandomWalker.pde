class Walker {
    int x;
    int y;
    
    Walker() {
        x = width/2;
        y = height/2;
    }
    
    void display() {
        stroke(0);
        point(x, y);
    }
    
    void step() {
        int choice = int(random(4));
        //left
        if (choice == 0) {
            x++;
        }
        //right
        if (choice == 1) {
            x--;
        }
        //up
        if (choice == 2) {
            y++;
        }
        //down
        if (choice == 3) {
            y--;
        }
    }
}

Walker w;

void setup() {
    size(640, 360);
    w = new Walker();
    background(255);
}

void draw() {
    w.step();
    w.display();
}
