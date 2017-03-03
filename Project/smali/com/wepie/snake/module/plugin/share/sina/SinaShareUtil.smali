.class public Lcom/wepie/snake/module/plugin/share/sina/SinaShareUtil;
.super Ljava/lang/Object;
.source "SinaShareUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleSinaResp(Landroid/app/Activity;Ldalvik/system/DexClassLoader;Ljava/lang/String;Landroid/content/Intent;Lcom/wepie/snake/module/plugin/callback/PluginCallback;)V
    .locals 11
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "dexLoader"    # Ldalvik/system/DexClassLoader;
    .param p2, "sina_id"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "pluginCallback"    # Lcom/wepie/snake/module/plugin/callback/PluginCallback;

    .prologue
    .line 42
    :try_start_0
    const-string v9, "com.wepie.dyshare.share.ShareApi"

    invoke-virtual {p1, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 43
    .local v7, "shareApi":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "com.wepie.dyshare.callback.CallbackProxy"

    invoke-virtual {p1, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 45
    .local v1, "callback":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x4

    new-array v0, v9, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/app/Activity;

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v0, v9

    const/4 v9, 0x2

    const-class v10, Landroid/content/Intent;

    aput-object v10, v0, v9

    const/4 v9, 0x3

    const-class v10, Ljava/lang/Object;

    aput-object v10, v0, v9

    .line 46
    .local v0, "args":[Ljava/lang/Class;
    const-string v9, "handleSinaResp"

    invoke-virtual {v7, v9, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 48
    .local v4, "handleWXRespMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 49
    .local v2, "callbackInstance":Ljava/lang/Object;
    new-instance v5, Lcom/wepie/snake/module/plugin/proxy/BaseInvokeHandler;

    invoke-direct {v5, v2, p4}, Lcom/wepie/snake/module/plugin/proxy/BaseInvokeHandler;-><init>(Ljava/lang/Object;Lcom/wepie/snake/module/plugin/callback/PluginCallback;)V

    .line 51
    .local v5, "invokeHandler":Lcom/wepie/snake/module/plugin/proxy/BaseInvokeHandler;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v10

    .line 51
    invoke-static {v9, v10, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v8

    .line 54
    .local v8, "targetInterface":Ljava/lang/Object;
    const/4 v9, 0x4

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v6, v9

    const/4 v9, 0x1

    aput-object p2, v6, v9

    const/4 v9, 0x2

    aput-object p3, v6, v9

    const/4 v9, 0x3

    aput-object v8, v6, v9

    .line 55
    .local v6, "objs":[Ljava/lang/Object;
    const/4 v9, 0x0

    invoke-virtual {v4, v9, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
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

    .line 57
    :catch_0
    move-exception v3

    .line 58
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static share2Sina(Landroid/app/Activity;Ldalvik/system/DexClassLoader;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 9
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "dexLoader"    # Ldalvik/system/DexClassLoader;
    .param p2, "sina_id"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 23
    :try_start_0
    const-string v7, "com.wepie.dyshare.share.ShareApi"

    invoke-virtual {p1, v7}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 25
    .local v5, "shareApi":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x4

    new-array v0, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/app/Activity;

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v0, v7

    const/4 v7, 0x2

    const-class v8, Ljava/lang/String;

    aput-object v8, v0, v7

    const/4 v7, 0x3

    const-class v8, Landroid/graphics/Bitmap;

    aput-object v8, v0, v7

    .line 26
    .local v0, "args":[Ljava/lang/Class;
    const-string v7, "share2Sina"

    invoke-virtual {v5, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 28
    .local v4, "share2SinaMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x4

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v2, v7

    const/4 v7, 0x1

    aput-object p2, v2, v7

    const/4 v7, 0x2

    aput-object p3, v2, v7

    const/4 v7, 0x3

    aput-object p4, v2, v7

    .line 29
    .local v2, "objs":[Ljava/lang/Object;
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 31
    .local v3, "result":Ljava/lang/Object;
    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "result":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 36
    .end local v0    # "args":[Ljava/lang/Class;
    .end local v2    # "objs":[Ljava/lang/Object;
    .end local v4    # "share2SinaMethod":Ljava/lang/reflect/Method;
    .end local v5    # "shareApi":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v6

    .line 33
    :catch_0
    move-exception v1

    .line 34
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
