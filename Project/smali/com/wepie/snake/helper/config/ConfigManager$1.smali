.class Lcom/wepie/snake/helper/config/ConfigManager$1;
.super Ljava/lang/Object;
.source "ConfigManager.java"

# interfaces
.implements Lcom/wepie/snake/helper/config/ConfigHandler$ConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/helper/config/ConfigManager;->refreshConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/helper/config/ConfigManager;


# direct methods
.method constructor <init>(Lcom/wepie/snake/helper/config/ConfigManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/helper/config/ConfigManager;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/wepie/snake/helper/config/ConfigManager$1;->this$0:Lcom/wepie/snake/helper/config/ConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 41
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/wepie/snake/helper/config/ConfigInfo;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "configInfo"    # Lcom/wepie/snake/helper/config/ConfigInfo;

    .prologue
    .line 34
    const-string v0, "config.a"

    invoke-static {v0, p1}, Lcom/wepie/snake/module/util/FileCacheUtil;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/wepie/snake/helper/config/ConfigManager$1;->this$0:Lcom/wepie/snake/helper/config/ConfigManager;

    # setter for: Lcom/wepie/snake/helper/config/ConfigManager;->mConfigInfo:Lcom/wepie/snake/helper/config/ConfigInfo;
    invoke-static {v0, p2}, Lcom/wepie/snake/helper/config/ConfigManager;->access$002(Lcom/wepie/snake/helper/config/ConfigManager;Lcom/wepie/snake/helper/config/ConfigInfo;)Lcom/wepie/snake/helper/config/ConfigInfo;

    .line 36
    return-void
.end method
