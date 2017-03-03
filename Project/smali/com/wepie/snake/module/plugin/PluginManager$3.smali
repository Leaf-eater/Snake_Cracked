.class Lcom/wepie/snake/module/plugin/PluginManager$3;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Lcom/wepie/snake/module/net/handler/PluginHandler$PluginInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/plugin/PluginManager;->initLocalData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/plugin/PluginManager;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/plugin/PluginManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/plugin/PluginManager;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/wepie/snake/module/plugin/PluginManager$3;->this$0:Lcom/wepie/snake/module/plugin/PluginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 223
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "plugin_url"    # Ljava/lang/String;
    .param p3, "md5"    # Ljava/lang/String;

    .prologue
    .line 215
    const-string v0, "999"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------>PluginManager initLocalData plugin_url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/wepie/snake/module/plugin/PluginManager$3;->this$0:Lcom/wepie/snake/module/plugin/PluginManager;

    # setter for: Lcom/wepie/snake/module/plugin/PluginManager;->mPlugin_url:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/wepie/snake/module/plugin/PluginManager;->access$102(Lcom/wepie/snake/module/plugin/PluginManager;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/wepie/snake/module/plugin/PluginManager$3;->this$0:Lcom/wepie/snake/module/plugin/PluginManager;

    # setter for: Lcom/wepie/snake/module/plugin/PluginManager;->mPlugin_md5:Ljava/lang/String;
    invoke-static {v0, p3}, Lcom/wepie/snake/module/plugin/PluginManager;->access$202(Lcom/wepie/snake/module/plugin/PluginManager;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    return-void
.end method
