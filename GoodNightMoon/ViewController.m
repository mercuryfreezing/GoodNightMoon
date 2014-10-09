//
//  ViewController.m
//  GoodNightMoon
//
//  Created by roshan on 09/10/2014.
//  Copyright (c) 2014 learningIOS. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewImageCell.h"

@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@property NSMutableArray *moonImages;
@property (weak, nonatomic) IBOutlet UIView *shadeView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.moonImages = [NSMutableArray array];

        [self.moonImages addObject:[UIImage imageNamed:@"moon_1"]];
        [self.moonImages addObject:[UIImage imageNamed:@"moon_2"]];
        [self.moonImages addObject:[UIImage imageNamed:@"moon_3"]];
        [self.moonImages addObject:[UIImage imageNamed:@"moon_4"]];
        [self.moonImages addObject:[UIImage imageNamed:@"moon_5"]];
        [self.moonImages addObject:[UIImage imageNamed:@"moon_6"]];

    self.shadeView.backgroundColor = [UIColor greenColor];

}

- (IBAction)handlePane:(UIPanGestureRecognizer *)gesture{

    CGPoint point = [gesture translationInView:gesture.view];
    self.shadeView.center = CGPointMake(self.shadeView.center.x, self.shadeView.center.y + point.y);
    [gesture setTranslation:CGPointMake(0, 0) inView:gesture.view];
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{

    return 6;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{

    CollectionViewImageCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];


    cell.imageView.image = [self.moonImages objectAtIndex:indexPath.row];
        return cell;


}

@end
