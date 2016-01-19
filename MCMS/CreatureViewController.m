//
//  CreatureViewController.m
//  MCMS
//
//  Created by Michael Berger on 1/19/16.
//  Copyright © 2016 Yemi Ajibola. All rights reserved.
//

#import "CreatureViewController.h"

@interface CreatureViewController ()
@property (weak, nonatomic) IBOutlet UILabel *creatureNameLabel;

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.navigationItem.title= self.creature.name;
}



@end
