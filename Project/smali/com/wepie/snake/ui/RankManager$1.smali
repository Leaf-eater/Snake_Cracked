.class Lcom/wepie/snake/ui/RankManager$1;
.super Ljava/lang/Object;
.source "RankManager.java"

# interfaces
.implements Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/ui/RankManager;->getServerRank(Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/ui/RankManager;

.field final synthetic val$callback:Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;


# direct methods
.method constructor <init>(Lcom/wepie/snake/ui/RankManager;Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/ui/RankManager;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/wepie/snake/ui/RankManager$1;->this$0:Lcom/wepie/snake/ui/RankManager;

    iput-object p2, p0, Lcom/wepie/snake/ui/RankManager$1;->val$callback:Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wepie/snake/ui/RankManager$1;->val$callback:Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;

    invoke-interface {v0, p1}, Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;->onError(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public onSuccess(Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "rankInfo"    # Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string v0, "rank.a"

    invoke-static {v0, p2}, Lcom/wepie/snake/module/util/FileCacheUtil;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/wepie/snake/ui/RankManager$1;->this$0:Lcom/wepie/snake/ui/RankManager;

    # setter for: Lcom/wepie/snake/ui/RankManager;->mRankInfo:Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;
    invoke-static {v0, p1}, Lcom/wepie/snake/ui/RankManager;->access$002(Lcom/wepie/snake/ui/RankManager;Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;)Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;

    .line 37
    iget-object v0, p0, Lcom/wepie/snake/ui/RankManager$1;->val$callback:Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;

    invoke-interface {v0, p1, p2}, Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;->onSuccess(Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;Ljava/lang/String;)V

    .line 38
    return-void
.end method
