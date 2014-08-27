//
//  BNRItem.m
//  RandomItems
//
//  Created by Omer Wazir on 8/26/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

-(instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)serialNumber{
    self = [super init];
    
    if(self){
        self.itemName = name;
        self.valueInDollars = value;
        self.serialNumber = serialNumber;
        self.dateCreated = [[NSDate alloc]init];
    
    }
    
    return self;
}

-(instancetype)initWithItemName:(NSString *)name{
    return [self initWithItemName:name valueInDollars:0 serialNumber:@""];
}

-(instancetype)init{
    return [self initWithItemName:@"Item"];
}

-(NSString*)description{
    
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth %d, recorded on %@", self.itemName, self.serialNumber, self.valueInDollars, self.dateCreated];
    
    return descriptionString;
}

@end
