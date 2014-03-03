//
//  ViewController.h
//  snake
//
//  Created by Etudiant on 03/02/2014.
//  Copyright (c) 2014 Etudiant. All rights reserved.
//

#import <UIKit/UIKit.h>
UIImageView *backroundImageview ;
@interface ViewController : UIViewController

{

    NSTimer *timer1 ;
    int etat ;// Etat du jeu
    int etat1; // Etat1 du jeu
    int compteur;//Compteur de départ de jeu
    int deplacement; // deplacement
   }

@end