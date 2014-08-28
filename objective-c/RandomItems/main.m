//
//  main.m
//  RandomItems
//
//  Created by Omer Wazir on 8/26/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Create a mutable array object,store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for(int i = 0; i < 10; i++){
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        
        for (int i = 0; i < [items count]; i++) {
            NSLog(@"%@", items[i]);
        }
        
        //Destroy the mutable array object;
        items = nil;
        
        
        
    }
    return 0;
}
