# 优雅处理右滑返回和scrollView手势冲突
#iOS

## 使用
* 下载，拖进项目
* 在需要兼容的页面`#import "UIScrollView+X.h"`
* `self.scrollView.allowPanGestureEventPass = YES;`

## 介绍
当自定义navgationController的时候，在遇到scrollView和tableView时，会引起手势冲突，scrollView的手势会优先响应，为了解决这个问题，简单实现了一个scrollView的分类，只需要一句话即可实现兼容右滑返回和scrollView的手势。

