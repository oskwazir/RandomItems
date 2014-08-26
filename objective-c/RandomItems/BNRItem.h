//
//  BNRItem.h
//  RandomItems
//
//  Created by Omer Wazir on 8/26/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *dateCreated;
}

@end
