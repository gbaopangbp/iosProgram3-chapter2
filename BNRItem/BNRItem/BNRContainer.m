//
//  BNRContainer.m
//  BNRItem
//
//  Created by tirostiros on 14-12-26.
//  Copyright (c) 2014年 cn.com.tiros. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

-(NSMutableArray*)items
{
    if (!_items)
    {
        _items = [[NSMutableArray alloc] init];
    }
    return _items;
}

-(NSString*)description
{
    int value = 0;
    for (BNRItem *item in self.items)
    {
        value += item.valueInDollars;
        NSLog(@"ddddd:%d",value);
    }
    value += self.valueInDollars;
    return [NSString stringWithFormat:@"name:%@,value:%d,ttt:%d",self.itemName,value,self.valueInDollars];
}

@end
