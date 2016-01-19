//
//  CreatureViewController.m
//  MCMS
//
//  Created by Michael Berger on 1/19/16.
//  Copyright © 2016 Yemi Ajibola. All rights reserved.
//

#import "CreatureViewController.h"

@interface CreatureViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UITextView *detailsTextView;
@property (weak, nonatomic) IBOutlet UIImageView *monsterImageView;

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    //self.navigationItem.title= self.creature.name;
    self.nameLabel.text = self.creature.name;
    self.detailsTextView.text = self.creature.details;
    self.monsterImageView.image = self.creature.image;
}


-(void)setEditing:(BOOL)editing animated:(BOOL)animated {
   // NSLog(@"Random string literal");
    self.nameTextField.hidden = !editing;
     [super setEditing:editing animated:animated];
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"accessoryCell"];
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.creature.accessories.count;
}

@end
