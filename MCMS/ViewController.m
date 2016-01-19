//
//  ViewController.m
//  MCMS
//
//  Created by Yemi Ajibola on 1/19/16.
//  Copyright © 2016 Yemi Ajibola. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property NSMutableArray* creatures;

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
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.creatures.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"monsterCell"];
    MagicalCreature* creature = [self.creatures objectAtIndex:indexPath.row];
    cell.textLabel.text = creature.name;
    
    
    return cell;
}


@end
