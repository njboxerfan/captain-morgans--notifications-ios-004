//
//  Pirate+PirateFromDictionary.m
//  OpenMe
//
//  Created by Bert Carr on 3/16/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "Pirate+PirateFromDictionary.h"

@implementation Pirate (PirateFromDictionary)

+(instancetype)pirateFromDictionary:(NSDictionary *)dictionary
                         andContext:(NSManagedObjectContext *)context
{
    Pirate *newPirate = [NSEntityDescription insertNewObjectForEntityForName:@"Pirate" inManagedObjectContext:context];

    newPirate.name = dictionary[@"pirateName"];
    
    return newPirate;
}

@end
