//
//  Created by Informatique on 05.03.15.
//  Copyright (c) 2015 Etml. All rights reserved.
//
//  Modifier par : Loïc Nguyen
//  Modifier le : jeudi 19 mars 2015
//  Nom du fichier : TransportViewControlle
//  Nom de l'application : iEtml
//  Descrition : Ce fichier est un fichier objetcif-c qui faire faire des actions aux elements de l'interace TrasnportViewController qui est dans le fichier MainSotryboard. Cette page sert a des donnée des infomration sur les transports lausannois garce a une webview qui donne sur le site des tl et qui donne la possibilter de rentrer un itiniéraire et de voir les potentionelle perturbation du travfic

#import "HoraireViewController.h"
#import "SWRevealViewController.h"

// Interface avec le fichier "MainStoryboard"
@interface HoraireViewController ()

@end


@implementation HoraireViewController


// Méthode viewDidload
- (void)viewDidLoad
{
    
    {
        [super viewDidLoad];
        // Démarage de l'annimation de chargement
        [_activityIndicator startAnimating];
        // lien du site que sera utiliser pour afficher les horraires
        NSString *strURL = @"https://www.portail.vd.ch/formation/hyperplanning/etml/invite";
        // Affichage de la page web dans le UIWebView
        NSURL *url = [NSURL URLWithString:strURL];
        NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
        [self.webView loadRequest:urlRequest];
        
    
    
    // Commande permmetant au menu de savoir quand rentré en action
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        // Quand le bouton du menu est actionné
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        // Quand le menu est glissé vers la doite
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
    // Titre de la page placé dans l'entête de la page
    self.title = NSLocalizedString (@"HORAIRE", @"Message");
    }
    _activityIndicator.hidden = TRUE;
}
// Méthode didReceiveMemoryWarning
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
