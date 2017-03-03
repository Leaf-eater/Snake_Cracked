.class Lcom/wepie/snake/module/game/GameInfoView$6;
.super Ljava/lang/Object;
.source "GameInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/game/GameInfoView;->refreshGameRank(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/game/GameInfoView;

.field final synthetic val$snakeInfos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/game/GameInfoView;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/game/GameInfoView;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/wepie/snake/module/game/GameInfoView$6;->this$0:Lcom/wepie/snake/module/game/GameInfoView;

    iput-object p2, p0, Lcom/wepie/snake/module/game/GameInfoView$6;->val$snakeInfos:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/wepie/snake/module/game/GameInfoView$6;->this$0:Lcom/wepie/snake/module/game/GameInfoView;

    iget-object v0, v0, Lcom/wepie/snake/module/game/GameInfoView;->gameRankView:Lcom/wepie/snake/ui/GameRankView;

    iget-object v1, p0, Lcom/wepie/snake/module/game/GameInfoView$6;->val$snakeInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/wepie/snake/ui/GameRankView;->refresh(Ljava/util/ArrayList;)V

    .line 106
    return-void
.end method
