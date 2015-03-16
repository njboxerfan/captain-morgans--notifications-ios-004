//
//  Ship+ShipFromDictionary.m
//  OpenMe
//
//  Created by Bert Carr on 3/16/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "Ship+ShipFromDictionary.h"

@implementation Ship (ShipFromDictionary)

+(instancetype)shipFromDictionary:(NSDictionary *)dictionary
                       andContext:(NSManagedObjectContext *)context
{
    Ship *newShip = [NSEntityDescription insertNewObjectForEntityForName:@"Ship" inManagedObjectContext:context];
    
    newShip.name = dictionary[@"shipName"];
    
    newShip.engine = [NSEntityDescription insertNewObjectForEntityForName:@"Engine" inManagedObjectContext:context];
    
    newShip.engine.engineType = dictionary[@"shipEngineType"];
    
    Pirate *pirate = dictionary[@"pirate"];
    
    [pirate addShipsObject:newShip];
    
    return newShip;
}

@end
