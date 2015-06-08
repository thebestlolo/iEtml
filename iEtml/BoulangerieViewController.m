//
//  Created by Informatique on 05.03.15.
//  Copyright (c) 2015 Etml. All rights reserved.
//
//  Modifier par : Loïc Nguyen
//  Modifier le : Jeudi 19 mars 2015
//  Nom du fichier : boulangerieViewController.h
//  Nom de l'application : iEtml
//  Descrition : Ce fichier est un fichier objetcif-c qui faire faire des actions aux elements de l'interace CafeViewController qui est dans le fichier MainSotryboard.   Cette page aura une simple plusieurs label qui donneront des infomrations sur les différentes boulangeries à disposition autours de l'etml.

#import "BoulangerieViewController.h"
#import "SWRevealViewController.h"

// Interface avec le fichier "MainStoryboard"
@interface BoulangerieViewController ()

@end


@implementation BoulangerieViewController


// Méthode viewDidload
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Titre placé dans la barre d'entête de la page
    self.title = NSLocalizedString (@"BOULANGERIE", @"Message");
    
    
}
// Méthode didReceiveMemoryWarning
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
