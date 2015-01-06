//
//  ViewController.m
//  gitReferencePro
//
//  Created by Derek on 1/6/15.
//  Copyright (c) 2015 WiredApplications. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"gitReferencePro";
    // Do any additional setup after loading the view.
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height*1.2);
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.referenceTitle = [NSMutableArray arrayWithObjects:
                           @"1. Tell Git who you are",
                           @"2. Create a new local repository",
                           @"3. Check out a repository",
                           @"4. Add files"
                           @"5. Commit",
                           @"6. Push",nil];
    [self.view addSubview:self.scrollView];
    [self.view addSubview:self.scrollView];
    [self createSubviewForViewController:0];
    [self createSubviewForViewController:1];
    [self createSubviewForViewController:2];
    [self createSubviewForViewController:3];
    [self createSubviewForViewController:4];
    
    self.refernceDescription = [NSArray arrayWithObjects:
                                @"git config --global user.name 'Sam Smith' git config --global user.email sam@example.com",
                                @"git init",
                                @"git clone /path/to/repository, git clone username@host:/path/to/repository",
                                @"git add <filename>, git add *",
                                @"git commit -m 'Commit message', git commit -a",
                                @"git push origin master, git status",nil];
    
    [self.view addSubview:self.scrollView];
    [self.view addSubview:self.scrollView];
    [self createSubviewForViewController2:0];
    [self createSubviewForViewController2:1];
    [self createSubviewForViewController2:2];
    [self createSubviewForViewController2:3];
    [self createSubviewForViewController2:4];


    
    
    self.view.backgroundColor = [UIColor blackColor];
}


- (void)createSubviewForViewController: (NSInteger)Index{
    
    UIView *titleView = [[UIView alloc] initWithFrame:CGRectMake(0,20+Index*150,self.view.frame.size.width,300)];
    titleView.backgroundColor = [UIColor blackColor];

    
    
    self.Label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 500, 30)];
    self.label.text = self.referenceTitle[Index];
    self.label.textColor = [UIColor greenColor];
    

    
    
    [titleView addSubview:self.label];
    [self.scrollView addSubview:titleView];

    
}

- (void)createSubviewForViewController2: (NSInteger)Index{
    UIView *descriptionView = [[UIView alloc] initWithFrame:CGRectMake(40,70+Index*150,self.view.frame.size.width,300)];
//    descriptionView.backgroundColor = [UIColor whiteColor];
    
    self.Label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 500, 20)];
    self.label.text = self.refernceDescription[Index];
    self.label.textColor = [UIColor greenColor];
    
    [descriptionView addSubview:self.label];
    [self.scrollView addSubview:descriptionView];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
