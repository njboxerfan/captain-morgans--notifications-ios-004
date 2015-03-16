//
//  Pirate+PirateFromDictionary.h
//  OpenMe
//
//  Created by Bert Carr on 3/16/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "Pirate.h"

@interface Pirate (PirateFromDictionary)

+(instancetype)pirateFromDictionary:(NSDictionary *)dictionary
                         andContext:(NSManagedObjectContext *)context;

@end
