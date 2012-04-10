Add done button to iOS number pad
-------------


![Demo image](http://cdn-ak.f.st-hatena.com/images/fotolife/p/paraches/20111201/20111201024718.png "Title")



Demo code
----------

In your view controller

``` objective-c
- (void)viewDidLoad{
    self.numberpadDonehelper = [[[DZNumberpadDoneHelper alloc] initWithTarget:self doneAction:@selector(doneAction:)] autorelease]; 
}
- (void)doneAction:(id)sender{
    NSLog(@"Done");    
}
- (void)viewDidUnload{
    self.numberpadDonehelper = nil;
}
- (void)viewWillAppear:(BOOL)animated{
    [self.numberpadDonehelper registerObservers];
}
- (void)viewDidDisappear:(BOOL)animated{
    [self.numberpadDonehelper unRegisterObservers];
}
```

Copyright
----------

All credit belongs to [paraches](http://d.hatena.ne.jp/paraches/20111130/1322675655),  I just refactor his code a little bit for easy of use.
