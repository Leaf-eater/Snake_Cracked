.class Lcom/wepie/snake/ui/GameRankView$1;
.super Ljava/lang/Object;
.source "GameRankView.java"

# interfaces
.implements Lcom/wepie/snake/module/net/handler/TodayRankHandler$TodayRankCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/ui/GameRankView;->updateTodayBestInfo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/ui/GameRankView;

.field final synthetic val$gameType:I


# direct methods
.method constructor <init>(Lcom/wepie/snake/ui/GameRankView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/ui/GameRankView;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/wepie/snake/ui/GameRankView$1;->this$0:Lcom/wepie/snake/ui/GameRankView;

    iput p2, p0, Lcom/wepie/snake/ui/GameRankView$1;->val$gameType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 97
    return-void
.end method

.method public onSuccess(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 5
    .param p1, "endlessName"    # Ljava/lang/String;
    .param p2, "endlessScore"    # I
    .param p3, "limitName"    # Ljava/lang/String;
    .param p4, "limitScore"    # I

    .prologue
    .line 83
    iget v2, p0, Lcom/wepie/snake/ui/GameRankView$1;->val$gameType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 84
    move-object v0, p1

    .line 85
    .local v0, "name":Ljava/lang/String;
    move v1, p2

    .line 90
    .local v1, "score":I
    :goto_0
    iget-object v2, p0, Lcom/wepie/snake/ui/GameRankView$1;->this$0:Lcom/wepie/snake/ui/GameRankView;

    # getter for: Lcom/wepie/snake/ui/GameRankView;->todayNickTx:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/wepie/snake/ui/GameRankView;->access$100(Lcom/wepie/snake/ui/GameRankView;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v2, p0, Lcom/wepie/snake/ui/GameRankView$1;->this$0:Lcom/wepie/snake/ui/GameRankView;

    # getter for: Lcom/wepie/snake/ui/GameRankView;->todayScoreTx:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/wepie/snake/ui/GameRankView;->access$200(Lcom/wepie/snake/ui/GameRankView;)Landroid/widget/TextView;

    move-result-object v3

    if-gtz v1, :cond_1

    const-string v2, ""

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void

    .line 87
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "score":I
    :cond_0
    move-object v0, p3

    .line 88
    .restart local v0    # "name":Ljava/lang/String;
    move v1, p4

    .restart local v1    # "score":I
    goto :goto_0

    .line 91
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
