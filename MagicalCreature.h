//
//  MagicalCreature.h
//  MCMS
//
//  Created by Yemi Ajibola on 1/19/16.
//  Copyright © 2016 Yemi Ajibola. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MagicalCreature : NSObject
@property NSString* name;
@property NSString* details;
@property UIImage* image;

- (instancetype)initWithName:(NSString*)name;


@end
