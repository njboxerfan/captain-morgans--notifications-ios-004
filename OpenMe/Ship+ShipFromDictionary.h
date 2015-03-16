//
//  Ship+ShipFromDictionary.h
//  OpenMe
//
//  Created by Bert Carr on 3/16/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "Ship.h"

@interface Ship (ShipFromDictionary)

+(instancetype)shipFromDictionary:(NSDictionary *)dictionary
                       andContext:(NSManagedObjectContext *)context;

@end
