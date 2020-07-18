# Github action 尝试


## 背景

不得不承认Github 的理念很超前，整个 action 的规划真是超级棒，如果国内的速度再快些，服务再稳定性，真是无敌了。不过这只是时间问题，满怀期待。

今天(2020-07-18)的本想使用 action 发布自己的站点的，无奈调试到最后总提示`Host key verification failed.`，确认已经添加过服务器指纹，最后没找到原因，不得已使用忽略验证的方式` -o StrictHostKeyChecking=no`，没想到提交之后一直在排队中，真是没法儿等了，不得不暂时放弃。


## 参考网站

1. https://docs.github.com/cn/actions/creating-actions/dockerfile-support-for-github-actions
1. https://docs.github.com/cn/actions/creating-actions/creating-a-docker-container-action
1. https://segmentfault.com/a/1190000020873860
1. https://www.cnblogs.com/zkqiang/p/12217522.html
1. https://github.com/zkqiang/tencent-cos-action
1. https://segmentfault.com/a/1190000021815477