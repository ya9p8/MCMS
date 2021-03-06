//
//  ViewController.m
//  MCMS
//
//  Created by Yemi Ajibola on 1/19/16.
//  Copyright © 2016 Yemi Ajibola. All rights reserved.
//

#import "ViewController.h"
#import "CreatureViewController.h"
#import "BattleViewController.h"

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
    
    if([segue.identifier isEqualToString:@"detailSegue"])
    {
        CreatureViewController *cvc = segue.destinationViewController;
        cvc.creature = [self.creatures objectAtIndex:[self.monsterTableView indexPathForSelectedRow].row];
    }
    else
    {
        BattleViewController* battleVC = segue.destinationViewController;
        battleVC.battleCreatures = [NSArray arrayWithArray:self.creatures];
        
    }
}

-(void)updateCreature:(MagicalCreature *)creature {
    [self.creatures removeObject:creature];
    [self.creatures addObject:creature];
    
    [self.monsterTableView reloadData];
}

- (IBAction)onBattleButtonTapped:(id)sender
{
    
    
}

-(IBAction)unwind:(UIStoryboardSegue *)sender {
    CreatureViewController *cvc = sender.sourceViewController;
    [self.creatures removeObject:cvc.creature];
    [self.creatures insertObject:cvc.creature atIndex:0];
    [self.monsterTableView reloadData];
}


@end
