//
//  ViewController.m
//  tableView
//

//  Copyright © 2017 Abbie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *sampleTableView;
@property (strong, nonatomic)  NSArray* nameArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.nameArr = [NSArray arrayWithObjects: @"Jill Valentine", @"Peter Griffin", @"Meg Griffin", @"Jack Lolwut",
                        @"Mike Roflcoptor", @"Cindy Woods", @"Jessica Windmill", @"Alexander The Great",
                        @"Sarah Peterson", @"Scott Scottland", @"Geoff Fanta", @"Amanda Pope", @"Michael Meyers",
                        @"Richard Biggus", @"Montey Python", @"Mike Wut", @"Fake Person", @"Chair",
                        nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"newFriendCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    //etc.
    cell.textLabel.text = [self.nameArr objectAtIndex:indexPath.row];
    return cell;
}
// number of row in the section, I assume there is only 1 row
- (NSInteger)tableView:(UITableView *)theTableView numberOfRowsInSection:(NSInteger)section
{
    return self.nameArr.count;
}

@end
