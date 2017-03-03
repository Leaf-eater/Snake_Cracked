.class public Lcom/wepie/snake/module/net/api/PluginApi;
.super Ljava/lang/Object;
.source "PluginApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPluginInfo(Lcom/wepie/snake/module/net/handler/PluginHandler$PluginInfoCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/wepie/snake/module/net/handler/PluginHandler$PluginInfoCallback;

    .prologue
    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    .local v0, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/wepie/snake/module/net/UrlConfig;->PLUGIN_API_GET_PLUGIN:Ljava/lang/String;

    new-instance v2, Lcom/wepie/snake/module/net/handler/PluginHandler;

    invoke-direct {v2, p0}, Lcom/wepie/snake/module/net/handler/PluginHandler;-><init>(Lcom/wepie/snake/module/net/handler/PluginHandler$PluginInfoCallback;)V

    invoke-static {v1, v0, v2}, Lcom/wepie/snake/module/net/SkHttpClient;->post(Ljava/lang/String;Ljava/util/HashMap;Lcom/loopj/android/http/ResponseHandlerInterface;)V

    .line 16
    return-void
.end method
