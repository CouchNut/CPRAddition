//
//  CPRAddition.h
//  CPRAddition
//
//  Created by Copper on 2018/4/27.
//  Copyright © 2018年 Copper. All rights reserved.
//

#ifndef CPRAddition_h
#define CPRAddition_h

// 弱引用
#define CPRWeakSelf                 __weak typeof(self) weakSelf = self;
// 强引用
#define CPRStrongSelf(weakSelf)     __strong typeof(weakself) strongSelf = (weakSelf);


#endif /* CPRAddition_h */
