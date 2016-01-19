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
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.navigationItem.title= self.creature.name;
}


//-(void)setEditing:(BOOL)editing animated:(BOOL)animated {
//    NSLog(@"Random string literal");
//    self.nameTextField.hidden = !editing;
//     [super setEditing:editing animated:animated];
//    
//}


@end
