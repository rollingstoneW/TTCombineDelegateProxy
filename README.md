# TTCombineDelegateProxy

Dispatch proxy methods with multi delegates using runtime.
通过runtime把代理方法分发给多个代理。

## Example:
in TTCycleBanner.m

``` objective-c
- (void)setDelegate:(id<TTCycleBannerDelegate>)delegate {
    TTCombineDelegateProxy *proxy;
    if (delegate && delegate != (id<TTCycleBannerDelegate>)self) {
        proxy = [TTCombineDelegateProxy proxyWithPriorDelegate:self secondaryDelegate:delegate];
    } else {
        proxy = [TTCombineDelegateProxy proxyWithPriorDelegate:self secondaryDelegate:nil];
    }
    proxy.whitelistForPriorDelegateSelector = @[NSStringFromSelector(@selector(pagingCollectionView:didSelectCellAtIndex:)),
                                                NSStringFromSelector(@selector(pagingCollectionView:didScrollToIndex:))];
    self.delegateProxy = proxy;
    [super setDelegate:(id<TTCycleBannerDelegate>)proxy];
}
```