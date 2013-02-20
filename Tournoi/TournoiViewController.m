//
//  TournoiViewController.m
//  Tournoi
//
//  Created by hajer on 20/02/13.
//  Copyright (c) 2013 hajer. All rights reserved.
//

#import "TournoiViewController.h"

@interface TournoiViewController ()

@end

@implementation TournoiViewController
{
    NSArray *tableData;
}

- (void)viewDidLoad
{
   [super viewDidLoad];
	// Initialize table data
    tableData = [NSArray arrayWithObjects:@"La difference entre toi et moi c'est que moi j'ai de la classe", @"Même apres la 3ème démarque j'ai pas besoin de toi", @"t'es aussi insupportable qu'un Kiko lol", @"Pour toi j'irais décrocher la lune", @"Veux tu être ma valentine???", nil];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
}
//- (void)didReceiveMemoryWarning
//{
  //  [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
//}

   


@end
