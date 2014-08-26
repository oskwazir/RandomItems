//
//  main.m
//  RandomItems
//
//  Created by Omer Wazir on 8/26/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Create a mutable array object,store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        //Send the message addObject to the NSMutableArray pointed to
        //by the variable items, passing a string each time
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        //Send another message, insertObject:atIndex, to the same array object
        [items insertObject:@"Zero" atIndex:0];
        
        //Fast iteration
        //For every item in items array
        for(NSString *string in items){
            //Log the description of the item
            NSLog(@"%@",string);
        }
        
        //Destroy the mutable array object;
        items = nil;
        
        
        
    }
    return 0;
}
