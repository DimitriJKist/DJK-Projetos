
int inverso=1;
int direcao=1;
int Tel_ref0=0;
int inicio=1;
int x=0;
int amostras[10];
int *vel_antiga=1;
int *VEL_ANG_ANTIGA=0;
int *DIRECAO_VELOCIDADE=0;

int TORQ_REAL(int MITel_Ref, int MITel);




TORQ_REAL(int MITel_Ref, int MITel){
int Tel_ref;
int Torq_novo;

 Tel_ref = MITel_Ref*0.0063 + Tel_ref0*0.9937;

 if (abs(Tel_ref)>0.4){
     if (Tel_ref<0){
          direcao=0;
     }
     if (Tel_ref>0){
          direcao=2;
     }
     if (Tel_ref==0){
          direcao=1;
     }
 }

    if (abs(MITel)<0.005){
        if(direcao==0){
           inverso=(-1);
        }
        if(direcao==2){
           inverso=1;
        }
    }

    Tel_ref0=Tel_ref;
    Torq_novo=MITel*inverso;

   return Torq_novo;
}

void VEL_DIRECAO(int *VEL_ANG){
    int media=0;
    int vel=0;
    int dir=0;
    int z;

    if(*VEL_ANG > *VEL_ANG_ANTIGA){dir=1;}
    if(*VEL_ANG < *VEL_ANG_ANTIGA){dir=(-1);}
    if(*VEL_ANG == *VEL_ANG_ANTIGA){dir=0;}

    if(inicio==1){
        amostras[x]=dir;
        x++;
    }

    if(inicio==0){
        for(z=1;z<=9;z++){amostras[z]=amostras[z+1];}
        amostras[10]=dir;
        for(z=1;z<=10;z++){media=amostras[z]+media;}
        if(media>0){vel=2;}
        if(media<0){vel=0;}
        if(media==0){vel=1;}
        if(*vel_antiga > vel){*DIRECAO_VELOCIDADE=2;}
        if(*vel_antiga < vel){*DIRECAO_VELOCIDADE=0;}
        if(*vel_antiga ==vel){*DIRECAO_VELOCIDADE=1;}
        *vel_antiga= vel;
    }

    if(x==10 && inicio==1){
            inicio=0;
            for(z=1;z<=10;z++){media=amostras[z]+media;}
            if(media>0){vel=2;}
            if(media<0){vel=0;}
            if(media==0){vel=1;}
            if(*vel_antiga > vel){*DIRECAO_VELOCIDADE=2;}
            if(*vel_antiga < vel){*DIRECAO_VELOCIDADE=0;}
            if(*vel_antiga ==vel){*DIRECAO_VELOCIDADE=1;}
            *vel_antiga= vel;

     }

}

TORQ_REAL_IND(*DIRECAO_VELOCIDADE, *MSTel){
int FLAG_TORQ_IND_ZERO;
int Torq_novo;


 if (abs(*MSTel)<0.5){

    if (abs(MSTel)<0.005){
        if(*DIRECAO_VELOCIDADE==0){
           inverso=(-1);
        }
        if(*DIRECAO_VELOCIDADE==2){
           inverso=1;
        }
    }
 }
    *Torq_ind_novo= *MSTel*inverso;

}










