//
//  ViewController.m
//  snake
//
//  Created by Etudiant on 03/02/2014.
//  Copyright (c) 2014 Etudiant. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

unsigned int x=30,yy=30,m=0;

- (void)viewDidLoad
{
[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIImageView *cadrageview =[[UIImageView alloc] initWithFrame:
                               CGRectMake(0, 0, 320,480)];
    [cadrageview setImage:[UIImage imageNamed : @"cadrage.png"]];
    [self.view addSubview :cadrageview];
    
    UIImageView *backroundImageview =[[UIImageView alloc]
    initWithFrame:CGRectMake(3, 4, 315,474)];
    [backroundImageview setImage:[UIImage imageNamed :@"fondver.png"]];
    [self.view addSubview : backroundImageview];
    
    UIImageView *Imageview =[[UIImageView alloc] initWithFrame:
    CGRectMake(30, 30, x,yy)];
    [Imageview setImage:[UIImage imageNamed : @"cell.png"]];
    [self.view addSubview : Imageview];
    
    while(m<4){
        //[NSThread sleepForTimeInterval:1.0f];
        [UIView setAnimationDuration:4];
        
        x+=30;
        yy+=30;
  UIImageView *backroundImageview =[[UIImageView alloc]
    initWithFrame:CGRectMake(3, 4, 315,474)];
        [backroundImageview setImage:[UIImage imageNamed :@"fondver.png"]];
        [self.view addSubview : backroundImageview];
        
        UIImageView *Imageview =[[UIImageView alloc]initWithFrame:
        CGRectMake(x, yy, 30,30)];
        [Imageview setImage:[UIImage imageNamed : @"cell.png"]];
        [self.view addSubview : Imageview];
        

        m++;

    }
    etat =0;
    compteur = 4; //compteur au départ du jeu
    
    timer1 = [NSTimer scheduledTimerWithTimeInterval:1.0f target: self selector:@selector(boucleJeu) userInfo: nil repeats:YES];
    
   }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)boucleJeu{
    switch (etat)
    {
            
     case 0:
    // Decompte de départ
    break;
    
    case 1:
            //Affichage de Snake
    break;
        case 2:
            // Commencer le Jeu
            break;
            if (compteur == 4)
            {
                [NSString stringWithFormat:@"Attention"];
                compteur--;
            }
            else if ((compteur >=1)&& (compteur <=3))
            {
                 [NSString stringWithFormat:@ "%i...",compteur ];
                compteur--;
            }
            else if (compteur == 0)
            {
                [NSString stringWithFormat:@"C'est à vous "];
                compteur = 4;
                etat = 1; // afficher un snake
            }
            break;
            
           
    }
    
    
}
    
    
   /*if (key.isDown(key.RIGHT))
    x++;  // traitement qui sera excuté dans l'appui sur la fleche  droite
    
    4else if (key.isDown(key.LEFT))
      x--} // traitement qui sera excuté dans l'appui sur la fleche gauche

   else if (key.isDowx(key.UP))
        yy++;  //traitement qui sera excuté des l'appui sur la fleche Haut
    
     else if (key.isDown(key.DOWN))
        yy--  //traitement qui sera excuté des l'appui sur la 
   fleche Bas */





@end