//
//  NSString+CPRAddition.h
//  CPRAddition
//
//  Created by Copper on 2018/4/27.
//  Copyright © 2018 Copper. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (CPRAddition)

@end

@interface NSString (Security)

/**
 MD5 加密字符串

 @return 加密之后的字符串
 */
- (NSString *)cpr_md5;

/**
 Base64 加密字符串
 
 @return 密文(已经加密的字符串)
 */
- (NSString *)cpr_base64Encode;

/**
 Base64 解密字符串
 
 @return 明文(已解密的字符串)
 */
- (NSString *)cpr_base64Decode;

/**
 3DES 加密方法

 @param gkey 密钥
 @param gIv 偏移量
 @return 密文(已经加密的字符串)
 */
- (NSString*)cpr_tripleDESEncryptWithKey:(NSString *)gkey iv:(NSString *)gIv;

/**
 3DES 解密方法

 @param gkey 密钥
 @param gIv 偏移量
 @return 明文(已解密的字符串)
 */
- (NSString*)cpr_tripleDESDecryptWithKey:(NSString *)gkey iv:(NSString *)gIv;

@end
