public class misil extends cosmo{
  public boolean contacto=false,iz,de,acceso;
  public misil (int _x, int _y, int _d, int _a , boolean _iz, boolean _de ){ 
    x=_x;
    y=_y;
    d=_d;
    a=_a;
    iz=_iz;
    de=_de;
  }
  public void display(){
     image(misil,x,y,d,a);
  }
  public void disparo(){
     display();
     y-=7; 
     if(y<30){ // LIMITE DE ALCANCE DEL MISIL
       if(iz){
        n.disparo1=false;
       }else{
        n.disparo2=false;
       }
       
     }
     if(contacto==true){ // CASO DE COLISION
        if(iz){ // MISIL IZQUIERDO
         n.disparo1=false;
         
        }else{ // MISIL DERECHO
         n.disparo2=false;
         
        }
        image(explosion,x-50,y,100,96); //ANIMACION
        // PUNTUACION POR IMPACTO                            
        if(n.vida==99){
            n.vida++;
        }
        if(n.vida<99){ 
           n.vida+=2; // DAÑO MISIL
        }
       
     }
  }
}
