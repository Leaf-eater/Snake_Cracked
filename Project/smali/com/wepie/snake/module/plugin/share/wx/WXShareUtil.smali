.class public Lcom/wepie/snake/module/plugin/share/wx/WXShareUtil;
.super Ljava/lang/Object;
.source "WXShareUtil.java"


# static fields
.field private static final LOGIN_STATE:Ljava/lang/String; = "wx_login"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doWXLogin(Landroid/content/Context;Ldalvik/system/DexClassLoader;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dexLoader"    # Ldalvik/system/DexClassLoader;

    .prologue
    .line 29
    :try_start_0
    const-string v5, "com.wepie.dyshare.share.ShareApi"

    invoke-virtual {p1, v5}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 30
    .local v4, "shareApi":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x3

    new-array v0, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v0, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v0, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v0, v5

    .line 31
    .local v0, "args":[Ljava/lang/Class;
    const-string v5, "doWXLogin"

    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 33
    .local v1, "doWXLoginMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x3

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v3, v5

    const/4 v5, 0x1

    const-string v6, "wx9e4ce7f566e4b2ff"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "wx_login"

    aput-object v6, v3, v5

    .line 34
    .local v3, "objs":[Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v0    # "args":[Ljava/lang/Class;
    .end local v1    # "doWXLoginMethod":Ljava/lang/reflect/Method;
    .end local v3    # "objs":[Ljava/lang/Object;
    .end local v4    # "shareApi":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v2

    .line 37
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static handleWXResp(Landroid/content/Context;Ljava/lang/String;Ldalvik/system/DexClassLoader;Landroid/content/Intent;Lcom/wepie/snake/module/plugin/callback/PluginCallback;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wechat_id"    # Ljava/lang/String;
    .param p2, "dexLoader"    # Ldalvik/system/DexClassLoader;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "pluginCallback"    # Lcom/wepie/snake/module/plugin/callback/PluginCallback;

    .prologue
    .line 66
    :try_start_0
    const-string v9, "com.wepie.dyshare.share.ShareApi"

    invoke-virtual {p2, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 67
    .local v7, "shareApi":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "com.wepie.dyshare.callback.CallbackProxy"

    invoke-virtual {p2, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 69
    .local v1, "callback":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x5

    new-array v0, v9, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v0, v9

    const/4 v9, 0x2

    const-class v10, Ljava/lang/String;

    aput-object v10, v0, v9

    const/4 v9, 0x3

    const-class v10, Landroid/content/Intent;

    aput-object v10, v0, v9

    const/4 v9, 0x4

    const-class v10, Ljava/lang/Object;

    aput-object v10, v0, v9

    .line 70
    .local v0, "args":[Ljava/lang/Class;
    const-string v9, "handleWXResp"

    invoke-virtual {v7, v9, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 72
    .local v4, "handleWXRespMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 73
    .local v2, "callbackInstance":Ljava/lang/Object;
    new-instance v5, Lcom/wepie/snake/module/plugin/proxy/BaseInvokeHandler;

    invoke-direct {v5, v2, p4}, Lcom/wepie/snake/module/plugin/proxy/BaseInvokeHandler;-><init>(Ljava/lang/Object;Lcom/wepie/snake/module/plugin/callback/PluginCallback;)V

    .line 75
    .local v5, "invokeHandler":Lcom/wepie/snake/module/plugin/proxy/BaseInvokeHandler;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 76
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v10

    .line 75
    invoke-static {v9, v10, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v8

    .line 78
    .local v8, "targetInterface":Ljava/lang/Object;
    const/4 v9, 0x5

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v6, v9

    const/4 v9, 0x1

    aput-object p1, v6, v9

    const/4 v9, 0x2

    const-string v10, "wx_login"

    aput-object v10, v6, v9

    const/4 v9, 0x3

    aput-object p3, v6, v9

    const/4 v9, 0x4

    aput-object v8, v6, v9

    .line 79
    .local v6, "objs":[Ljava/lang/Object;
    const/4 v9, 0x0

    invoke-virtual {v4, v9, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0    # "args":[Ljava/lang/Class;
    .end local v1    # "callback":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "callbackInstance":Ljava/lang/Object;
    .end local v4    # "handleWXRespMethod":Ljava/lang/reflect/Method;
    .end local v5    # "invokeHandler":Lcom/wepie/snake/module/plugin/proxy/BaseInvokeHandler;
    .end local v6    # "objs":[Ljava/lang/Object;
    .end local v7    # "shareApi":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "targetInterface":Ljava/lang/Object;
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v3

    .line 82
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static share2WX(Landroid/content/Context;Ldalvik/system/DexClassLoader;Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dexLoader"    # Ldalvik/system/DexClassLoader;
    .param p2, "shareInfo"    # Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;

    .prologue
    .line 43
    :try_start_0
    const-string v13, "com.wepie.dyshare.share.ShareApi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 44
    .local v9, "shareApi":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v13, 0x8

    new-array v1, v13, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Landroid/content/Context;

    aput-object v14, v1, v13

    const/4 v13, 0x1

    const-class v14, Ljava/lang/String;

    aput-object v14, v1, v13

    const/4 v13, 0x2

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v14, v1, v13

    const/4 v13, 0x3

    const-class v14, Ljava/lang/String;

    aput-object v14, v1, v13

    const/4 v13, 0x4

    const-class v14, Ljava/lang/String;

    aput-object v14, v1, v13

    const/4 v13, 0x5

    const-class v14, Ljava/lang/String;

    aput-object v14, v1, v13

    const/4 v13, 0x6

    const-class v14, Landroid/graphics/Bitmap;

    aput-object v14, v1, v13

    const/4 v13, 0x7

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v1, v13

    .line 46
    .local v1, "args":[Ljava/lang/Class;
    const-string v13, "sendToWx"

    invoke-virtual {v9, v13, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 48
    .local v8, "sendToWxMethod":Ljava/lang/reflect/Method;
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;->wechat_id:Ljava/lang/String;

    .line 49
    .local v12, "wechat_id":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;->isCircle:Z

    .line 50
    .local v5, "isCircle":Z
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;->url:Ljava/lang/String;

    .line 51
    .local v11, "url":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;->title:Ljava/lang/String;

    .line 52
    .local v10, "title":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;->desc:Ljava/lang/String;

    .line 53
    .local v2, "desc":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 54
    .local v4, "iconBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    iget v7, v0, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;->default_bitmap_res_id:I

    .line 56
    .local v7, "res_id":I
    const/16 v13, 0x8

    new-array v6, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p0, v6, v13

    const/4 v13, 0x1

    aput-object v12, v6, v13

    const/4 v13, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v6, v13

    const/4 v13, 0x3

    aput-object v11, v6, v13

    const/4 v13, 0x4

    aput-object v10, v6, v13

    const/4 v13, 0x5

    aput-object v2, v6, v13

    const/4 v13, 0x6

    aput-object v4, v6, v13

    const/4 v13, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v6, v13

    .line 57
    .local v6, "objs":[Ljava/lang/Object;
    const/4 v13, 0x0

    invoke-virtual {v8, v13, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v1    # "args":[Ljava/lang/Class;
    .end local v2    # "desc":Ljava/lang/String;
    .end local v4    # "iconBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "isCircle":Z
    .end local v6    # "objs":[Ljava/lang/Object;
    .end local v7    # "res_id":I
    .end local v8    # "sendToWxMethod":Ljava/lang/reflect/Method;
    .end local v9    # "shareApi":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "title":Ljava/lang/String;
    .end local v11    # "url":Ljava/lang/String;
    .end local v12    # "wechat_id":Ljava/lang/String;
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v3

    .line 60
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
