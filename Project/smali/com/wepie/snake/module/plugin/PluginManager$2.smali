.class Lcom/wepie/snake/module/plugin/PluginManager$2;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/plugin/PluginManager;->loadFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/plugin/PluginManager;

.field final synthetic val$pluginPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/plugin/PluginManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/plugin/PluginManager;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/wepie/snake/module/plugin/PluginManager$2;->this$0:Lcom/wepie/snake/module/plugin/PluginManager;

    iput-object p2, p0, Lcom/wepie/snake/module/plugin/PluginManager$2;->val$pluginPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 3

    .prologue
    .line 200
    const-string v0, "999"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------>PluginManager loadFile onFailed, pluginPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wepie/snake/module/plugin/PluginManager$2;->val$pluginPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 194
    const-string v0, "999"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------>PluginManager loadFile onSuccess, pluginPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wepie/snake/module/plugin/PluginManager$2;->val$pluginPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/wepie/snake/module/plugin/PluginManager$2;->this$0:Lcom/wepie/snake/module/plugin/PluginManager;

    iget-object v1, p0, Lcom/wepie/snake/module/plugin/PluginManager$2;->val$pluginPath:Ljava/lang/String;

    # invokes: Lcom/wepie/snake/module/plugin/PluginManager;->initDexLoader(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/wepie/snake/module/plugin/PluginManager;->access$000(Lcom/wepie/snake/module/plugin/PluginManager;Ljava/lang/String;)V

    .line 196
    return-void
.end method
