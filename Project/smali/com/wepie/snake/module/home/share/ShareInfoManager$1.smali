.class Lcom/wepie/snake/module/home/share/ShareInfoManager$1;
.super Ljava/lang/Object;
.source "ShareInfoManager.java"

# interfaces
.implements Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/share/ShareInfoManager;->getServerShareInfo(Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/share/ShareInfoManager;

.field final synthetic val$callback:Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/share/ShareInfoManager;Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/share/ShareInfoManager;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/wepie/snake/module/home/share/ShareInfoManager$1;->this$0:Lcom/wepie/snake/module/home/share/ShareInfoManager;

    iput-object p2, p0, Lcom/wepie/snake/module/home/share/ShareInfoManager$1;->val$callback:Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/wepie/snake/module/home/share/ShareInfoManager$1;->val$callback:Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;

    invoke-interface {v0, p1}, Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;->onFail(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/wepie/snake/module/net/entity/UserShareInfo;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "userShareInfo"    # Lcom/wepie/snake/module/net/entity/UserShareInfo;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wepie/snake/module/home/share/ShareInfoManager$1;->this$0:Lcom/wepie/snake/module/home/share/ShareInfoManager;

    invoke-virtual {v0, p1}, Lcom/wepie/snake/module/home/share/ShareInfoManager;->save2File(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/wepie/snake/module/home/share/ShareInfoManager$1;->this$0:Lcom/wepie/snake/module/home/share/ShareInfoManager;

    # setter for: Lcom/wepie/snake/module/home/share/ShareInfoManager;->mUserShareInfo:Lcom/wepie/snake/module/net/entity/UserShareInfo;
    invoke-static {v0, p2}, Lcom/wepie/snake/module/home/share/ShareInfoManager;->access$002(Lcom/wepie/snake/module/home/share/ShareInfoManager;Lcom/wepie/snake/module/net/entity/UserShareInfo;)Lcom/wepie/snake/module/net/entity/UserShareInfo;

    .line 40
    iget-object v0, p0, Lcom/wepie/snake/module/home/share/ShareInfoManager$1;->val$callback:Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;

    invoke-interface {v0, p1, p2}, Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;->onSuccess(Ljava/lang/String;Lcom/wepie/snake/module/net/entity/UserShareInfo;)V

    .line 41
    return-void
.end method
