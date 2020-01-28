public void setup()
{
	size(700,700);
	background(104, 252, 175);
}
int r = 70;
int g = 100;
int b = 225;
public void draw()
{
	fill(104,252,115);
	rect(0,0,700,700);
	int len = 500;
	len = mouseX;
	sierpinski(50,650,len);
}
public void mouseDragged()//optional
{

}
public void mousePressed(){
	r = (int) (Math.random()*255);
	g = (int) (Math.random()*255);
	b = (int) (Math.random()*255);
}
public void sierpinski(int x, int y, int len) 
{
	if(len < 20){
		fill(r, g, b);
		triangle(x,y,x + len/2, y - len,x + len, y);
	}else{
		sierpinski(x,y,len/2);
		sierpinski(x + len/2,y,len/2);
		sierpinski(x + len/4,y - len/2 ,len/2);

	}

}