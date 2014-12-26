//
//  main.m
//  BNRItem
//
//  Created by tirostiros on 14-12-25.
//  Copyright (c) 2014年 cn.com.tiros. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
//        NSLog(@"Hello, World!");
        
        NSMutableArray *array = [[NSMutableArray alloc] init];
        for (int i = 0; i < 4; i++) {
            BNRItem *item = [BNRItem randomItem];
            [array addObject:item];
            NSLog(@"%@",item);

        }
        //越界
//        BNRItem *item = [array objectAtIndex:11];
        
//        [item doooo];
//        for (BNRItem*item in array) {
//            NSLog(@"%@\n",item);
//        }
        BNRContainer *container = [BNRContainer randomItem];
        [container setItems:array];
        NSLog(@"%@",container);
        [array addObject:container];
        
        BNRContainer *container2 = [BNRContainer randomItem];
        [container2 setItems:array];
        NSLog(@"%@",container2);


        
        
    }
    return 0;
}

