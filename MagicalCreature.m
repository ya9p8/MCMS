//
//  MagicalCreature.m
//  MCMS
//
//  Created by Yemi Ajibola on 1/19/16.
//  Copyright © 2016 Yemi Ajibola. All rights reserved.
//

#import "MagicalCreature.h"

@implementation MagicalCreature


- (instancetype)initWithName:(NSString*)name
{
    self = [super init];
    if (self) {
        self.name = name;
        self.details = @"No details";
        self.image = [UIImage imageNamed:@"no_image"];
    }
    return self;
}
@end
