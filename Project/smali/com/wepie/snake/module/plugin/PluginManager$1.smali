.class Lcom/wepie/snake/module/plugin/PluginManager$1;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Lcom/wepie/snake/module/net/handler/PluginHandler$PluginInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/plugin/PluginManager;->updatePluginInfo()V
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
    .line 65
    iput-object p1, p0, Lcom/wepie/snake/module/plugin/PluginManager$1;->this$0:Lcom/wepie/snake/module/plugin/PluginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 74
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "plugin_url"    # Ljava/lang/String;
    .param p3, "md5"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/wepie/snake/module/plugin/PluginManager$1;->this$0:Lcom/wepie/snake/module/plugin/PluginManager;

    invoke-virtual {v0, p1}, Lcom/wepie/snake/module/plugin/PluginManager;->save2File(Ljava/lang/String;)V

    .line 69
    return-void
.end method
