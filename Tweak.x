@interface YTReelWatchRootViewController : UIPageViewController
@end

@interface _UIQueuingScrollView : UIScrollView
@end

// Tested with YouTube v17.33.2
%hook YTReelWatchRootViewController
- (void)viewDidLoad {
	%orig;
	[(_UIQueuingScrollView *)self.view.subviews[0] setScrollEnabled:NO];
}
%end
