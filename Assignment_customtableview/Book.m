//
//  Book.m
//  Assignment_customtableview
//
//  Created by Rajesh on 11/12/15.
//  Copyright (c) 2015 CDAC. All rights reserved.
//

#import "Book.h"

@implementation Book
@synthesize bookAuthor,bookTitle,price,availabality;

-(NSString *)description
{
    NSString *str=[NSString stringWithFormat:@"%@:%@:%f:%@",bookTitle,bookAuthor,price,availabality];
    return str;
}
@end
