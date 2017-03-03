.class Lcom/wepie/snake/ui/RankManager$2;
.super Ljava/lang/Object;
.source "RankManager.java"

# interfaces
.implements Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/ui/RankManager;->initLocal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/ui/RankManager;


# direct methods
.method constructor <init>(Lcom/wepie/snake/ui/RankManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/ui/RankManager;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/wepie/snake/ui/RankManager$2;->this$0:Lcom/wepie/snake/ui/RankManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 67
    return-void
.end method

.method public onSuccess(Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "rankInfo"    # Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wepie/snake/ui/RankManager$2;->this$0:Lcom/wepie/snake/ui/RankManager;

    # setter for: Lcom/wepie/snake/ui/RankManager;->mRankInfo:Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;
    invoke-static {v0, p1}, Lcom/wepie/snake/ui/RankManager;->access$002(Lcom/wepie/snake/ui/RankManager;Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;)Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;

    .line 62
    return-void
.end method
