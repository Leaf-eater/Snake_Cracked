.class Lcom/wepie/snake/ui/RankView$1;
.super Ljava/lang/Object;
.source "RankView.java"

# interfaces
.implements Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/ui/RankView;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/ui/RankView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/ui/RankView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/ui/RankView;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/wepie/snake/ui/RankView$1;->this$0:Lcom/wepie/snake/ui/RankView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 105
    return-void
.end method

.method public onSuccess(Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "rankInfo"    # Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView$1;->this$0:Lcom/wepie/snake/ui/RankView;

    # setter for: Lcom/wepie/snake/ui/RankView;->mRankInfo:Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;
    invoke-static {v0, p1}, Lcom/wepie/snake/ui/RankView;->access$002(Lcom/wepie/snake/ui/RankView;Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;)Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;

    .line 99
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView$1;->this$0:Lcom/wepie/snake/ui/RankView;

    # invokes: Lcom/wepie/snake/ui/RankView;->updateAdepter()V
    invoke-static {v0}, Lcom/wepie/snake/ui/RankView;->access$100(Lcom/wepie/snake/ui/RankView;)V

    .line 100
    return-void
.end method
