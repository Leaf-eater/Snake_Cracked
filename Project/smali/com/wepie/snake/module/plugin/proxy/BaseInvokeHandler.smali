.class public Lcom/wepie/snake/module/plugin/proxy/BaseInvokeHandler;
.super Ljava/lang/Object;
.source "BaseInvokeHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private callback:Lcom/wepie/snake/module/plugin/callback/PluginCallback;

.field private object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/wepie/snake/module/plugin/callback/PluginCallback;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/wepie/snake/module/plugin/callback/PluginCallback;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/wepie/snake/module/plugin/proxy/BaseInvokeHandler;->object:Ljava/lang/Object;

    .line 19
    iput-object p2, p0, Lcom/wepie/snake/module/plugin/proxy/BaseInvokeHandler;->callback:Lcom/wepie/snake/module/plugin/callback/PluginCallback;

    .line 20
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 24
    array-length v7, p3

    if-lez v7, :cond_0

    .line 26
    const/4 v7, 0x0

    :try_start_0
    aget-object v1, p3, v7

    .line 27
    .local v1, "args0":Ljava/lang/Object;
    const/4 v7, 0x1

    aget-object v2, p3, v7

    .line 28
    .local v2, "args1":Ljava/lang/Object;
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "args0":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 29
    .local v3, "code":I
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 30
    .local v5, "info":Ljava/lang/String;
    const-string v7, "999"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "---->BaseInvokeHandler invoke code="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " info="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v7, p0, Lcom/wepie/snake/module/plugin/proxy/BaseInvokeHandler;->callback:Lcom/wepie/snake/module/plugin/callback/PluginCallback;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/wepie/snake/module/plugin/proxy/BaseInvokeHandler;->callback:Lcom/wepie/snake/module/plugin/callback/PluginCallback;

    invoke-interface {v7, v3, v5}, Lcom/wepie/snake/module/plugin/callback/PluginCallback;->onResult(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v2    # "args1":Ljava/lang/Object;
    .end local v3    # "code":I
    .end local v5    # "info":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/wepie/snake/module/plugin/proxy/BaseInvokeHandler;->object:Ljava/lang/Object;

    invoke-virtual {p2, v7, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 37
    .local v6, "result":Ljava/lang/Object;
    return-object v6

    .line 32
    .end local v6    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 33
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
