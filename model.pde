PShape model,model2;
void model(){
 model = loadShape("model.obj");
 model.scale(200);
 model.rotateX(PI);

}
void displayModel(){
 translate(x, y, z);
 shape(model);

}
