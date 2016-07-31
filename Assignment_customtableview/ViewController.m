//
//  ViewController.m
//  Assignment_customtableview
//
//  Created by Rajesh on 11/12/15.
//  Copyright (c) 2015 CDAC. All rights reserved.
//

#import "ViewController.h"
#import "Book.h"
@interface ViewController ()

@end

@implementation ViewController

@synthesize textFieldAuthor,textFieldBookName,textFieldprice,switchEnabled,tableViewData,arrayData,label1;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    tableViewData.dataSource=self;
    tableViewData.delegate=self;
    Book *b1=[[Book alloc]init];
    b1.bookTitle=@"Stark";b1.bookAuthor=@"Stark";b1.price=634,b1.availabality=@"Issued";
    
    Book *b2=[[Book alloc]init];
    b2.bookTitle=@"Wayne";b2.bookAuthor=@"Wayne";b2.price=439,b2.availabality=@"Available";

    Book *b3=[[Book alloc]init];
    b3.bookTitle=@"Parker";b3.bookAuthor=@"Parker";b3.price=232,b3.availabality=@"Issued";

    Book *b4=[[Book alloc]init];
    b4.bookTitle=@"Queen";b4.bookAuthor=@"Oliver";b4.price=843,b4.availabality=@"Available";

    
    arrayData=[[NSMutableArray alloc]initWithObjects:b1,b2,b3,b4, nil];
    
    
    [tableViewData setEditing:true];
    
    
}

-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return true;
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [arrayData removeObjectAtIndex:indexPath.row];
    NSArray *arrayIndex=[[NSArray alloc]initWithObjects:indexPath, nil];
    [tableViewData deleteRowsAtIndexPaths:arrayIndex withRowAnimation:UITableViewRowAnimationFade];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arrayData.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[[UITableViewCell alloc]init];
    Book *b=[arrayData objectAtIndex:indexPath.row];
    cell.textLabel.text=[NSString stringWithFormat:@"%@",b];
    return cell;
    
}

- (IBAction)buttonAdd:(id)sender {
    
    float p=[textFieldprice.text floatValue];
    
   
    Book *b=[[Book alloc]init];
    b.bookTitle=textFieldBookName.text;
    b.bookAuthor=textFieldAuthor.text;
    b.price=p;
    b.availabality=label1.text;
    [arrayData addObject:b];
    [tableViewData reloadData];
    
}

- (IBAction)switchEnabled:(id)sender {
    
    if ([switchEnabled isOn]) {
        label1.text=@"Issued";
        
        
    }
    else{
        label1.text=@"Available";
    }
}
@end
