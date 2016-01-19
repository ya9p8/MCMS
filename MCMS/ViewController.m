//
//  ViewController.m
//  MCMS
//
//  Created by Yemi Ajibola on 1/19/16.
//  Copyright © 2016 Yemi Ajibola. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"
#import "CreatureViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property NSMutableArray* creatures;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITableView *monsterTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    MagicalCreature* magicalCreatureOne = [[MagicalCreature alloc] initWithName:@"TrogdorOne"];
    MagicalCreature* magicalCreatureTwo = [[MagicalCreature alloc] initWithName:@"TrogdorTwo"];
    MagicalCreature* magicalCreatureThree = [[MagicalCreature alloc] initWithName:@"TrogdorThree"];
    
    self.creatures = [NSMutableArray arrayWithObjects:magicalCreatureOne, magicalCreatureTwo, magicalCreatureThree, nil];
}
- (IBAction)onAddButtonTapped:(UIButton *)sender {
    
    MagicalCreature *newCreature = [[MagicalCreature alloc]initWithName:self.nameTextField.text];
    [self.creatures insertObject:newCreature atIndex:0];
    [self.monsterTableView reloadData];
    [self.nameTextField resignFirstResponder];
    self.nameTextField.text = @"";
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.creatures.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"monsterCell"];
    MagicalCreature* creature = [self.creatures objectAtIndex:indexPath.row];
    cell.textLabel.text = creature.name;
    cell.detailTextLabel.text = creature.details;
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    CreatureViewController *cvc = segue.destinationViewController;
    cvc.creature = [self.creatures objectAtIndex:[self.monsterTableView indexPathForSelectedRow].row];
}


@end
