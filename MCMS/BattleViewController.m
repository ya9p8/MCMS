//
//  BattleViewController.m
//  MCMS
//
//  Created by Yemi Ajibola on 1/19/16.
//  Copyright © 2016 Yemi Ajibola. All rights reserved.
//

#import "BattleViewController.h"
#import "MagicalCreature.h"

@interface BattleViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *creatureImageOne;
@property (weak, nonatomic) IBOutlet UIImageView *creatureImageTwo;
@property (weak, nonatomic) IBOutlet UILabel *creatureLabelOne;
@property (weak, nonatomic) IBOutlet UILabel *creatureLabelTwo;

@end

@implementation BattleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //NSLog(self.battleCreatures.description);
    int firstCreature = [self getRandomCreature:self.battleCreatures];
    MagicalCreature* creatureUno = [self.battleCreatures objectAtIndex:firstCreature];
    
    NSMutableArray *remainingCreatures = [NSMutableArray arrayWithArray:self.battleCreatures];
    
    [remainingCreatures removeObjectAtIndex:firstCreature];
    
     MagicalCreature* creatureDos = [remainingCreatures objectAtIndex:[self getRandomCreature:remainingCreatures]];
    
    self.creatureImageOne.image = creatureUno.image;
    self.creatureImageTwo.image = creatureDos.image;
    self.creatureLabelOne.text = creatureUno.name;
    self.creatureLabelTwo.text = creatureDos.name;

    
    
    
    
}


-(int) getRandomCreature:(NSArray*)creatures
{
    return arc4random_uniform((unsigned int)creatures.count);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
