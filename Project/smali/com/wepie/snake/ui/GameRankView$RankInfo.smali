.class Lcom/wepie/snake/ui/GameRankView$RankInfo;
.super Ljava/lang/Object;
.source "GameRankView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wepie/snake/ui/GameRankView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RankInfo"
.end annotation


# instance fields
.field public isSelf:Z

.field public name:Ljava/lang/String;

.field public score:I

.field final synthetic this$0:Lcom/wepie/snake/ui/GameRankView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/ui/GameRankView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/wepie/snake/ui/GameRankView;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/wepie/snake/ui/GameRankView$RankInfo;->this$0:Lcom/wepie/snake/ui/GameRankView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const-string v0, ""

    iput-object v0, p0, Lcom/wepie/snake/ui/GameRankView$RankInfo;->name:Ljava/lang/String;

    return-void
.end method
