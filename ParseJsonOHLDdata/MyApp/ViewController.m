//
//  ViewController.m
//  MyApp
//
//  Created by Admin on 04.05.17.
//  Copyright © 2017 LoganCorporation. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *arrayData;
}

@property (strong, nonatomic) NSURLSessionTask *start;

@end

@implementation ViewController

@synthesize textField;
@synthesize myLabelTextError;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *url = [NSURL URLWithString:@"https://www.quandl.com/api/v3/datasets/WIKI/AAPL.json"];
    
    self.start = [[self getURLSession]
                                dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error)
                                  {
                                      dispatch_async( dispatch_get_main_queue(), ^{
                                          
                                          NSError *jsonError;
                                          NSDictionary *parseJSONArray = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&jsonError];
                                          
                                          NSDictionary *dataset = [parseJSONArray objectForKey:@"dataset"];
                                          NSArray *arrayOfData = [dataset objectForKey:@"data"];
                                          
                                          for (NSArray *ohlcArray in arrayOfData) {
                                              
                                              NSString *firstString = [ohlcArray objectAtIndex:0];
                                              NSString *secondString = [ohlcArray objectAtIndex:1];
                                              NSString *thirdStrint = [ohlcArray objectAtIndex:2];
                                              NSString *fourthString = [ohlcArray objectAtIndex:3];
                                              NSString *fifthString = [ohlcArray objectAtIndex:4];
                                              
                                              NSLog(@"\nDate: %@, \nOpen: %@, \nHigh: %@, \nLow: %@, \nClose: %@ ",
                                                    firstString,
                                                    secondString,
                                                    thirdStrint,
                                                    fourthString,
                                                    fifthString);
                                              
                                              [arrayData addObject:firstString];
                                              [arrayData addObject:secondString];
                                              [arrayData addObject:thirdStrint];
                                              [arrayData addObject:fourthString];
                                              [arrayData addObject:fifthString];
                                              
                                          }
                                          
                                          //[[self myTableViewForJson] reloadData];
                                          [self.start resume];
                                          
                                      });
                                  }];
    
    
    
    
}

- (NSURLSession *)getURLSession {
    
    static NSURLSession *session = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        NSURLSessionConfiguration *configuration  = [NSURLSessionConfiguration defaultSessionConfiguration];
        session = [NSURLSession sessionWithConfiguration:configuration];
        
    });
    
    return session;
}

/*- (void)showLog {
    
    NSString *log = @"";
    
    NSString *currentLog; //берете откуда вам надо то, что хотите добавить в лог
    log = [log stringByAppendingString:[NSString stringWithFormat:@"%@ \n", currentLog]];  //формируется новый лог с дополнениями
    self.logLabel.text = log; //выводите
}*/

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)startButtom:(id)sender {
    
    NSString *firstString = @"AAPL";
    NSString *secondString = @"aapl";
    
    if ([textField.text isEqualToString:firstString] || [textField.text isEqualToString:secondString]) {
        
        [self.start resume];
        myLabelTextError.text = @" ";
        
        NSString *logString = [NSString stringWithFormat:@"First name = %@, Last name = %@", [arrayData objectAtIndex:1], [arrayData objectAtIndex:2]];//firstNameField.text, lastNameField.text - текст из ваших полей, или строки вставляйте, как хотите
        
        NSLog(@"%@", logString);
        
    } else {
        
        myLabelTextError.text = @"Error: please re enter name";
        
    }
    
}

/*#pragma mark UITableView methods

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [arrayData count];
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [arrayData objectAtIndex:indexPath.row];
    return cell;
    
}*/

@end
