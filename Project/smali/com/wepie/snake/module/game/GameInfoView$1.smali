.class Lcom/wepie/snake/module/game/GameInfoView$1;
.super Ljava/lang/Object;
.source "GameInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/game/GameInfoView;->doGameOver(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/game/GameInfoView;

.field final synthetic val$gameType:I


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/game/GameInfoView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/game/GameInfoView;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/wepie/snake/module/game/GameInfoView$1;->this$0:Lcom/wepie/snake/module/game/GameInfoView;

    iput p2, p0, Lcom/wepie/snake/module/game/GameInfoView$1;->val$gameType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wepie/snake/module/game/GameInfoView$1;->this$0:Lcom/wepie/snake/module/game/GameInfoView;

    # getter for: Lcom/wepie/snake/module/game/GameInfoView;->gameOverView:Lcom/wepie/snake/ui/GameOverView;
    invoke-static {v0}, Lcom/wepie/snake/module/game/GameInfoView;->access$200(Lcom/wepie/snake/module/game/GameInfoView;)Lcom/wepie/snake/ui/GameOverView;

    move-result-object v0

    iget-object v1, p0, Lcom/wepie/snake/module/game/GameInfoView$1;->this$0:Lcom/wepie/snake/module/game/GameInfoView;

    # getter for: Lcom/wepie/snake/module/game/GameInfoView;->killCount:I
    invoke-static {v1}, Lcom/wepie/snake/module/game/GameInfoView;->access$000(Lcom/wepie/snake/module/game/GameInfoView;)I

    move-result v1

    iget-object v2, p0, Lcom/wepie/snake/module/game/GameInfoView$1;->this$0:Lcom/wepie/snake/module/game/GameInfoView;

    # getter for: Lcom/wepie/snake/module/game/GameInfoView;->length:I
    invoke-static {v2}, Lcom/wepie/snake/module/game/GameInfoView;->access$100(Lcom/wepie/snake/module/game/GameInfoView;)I

    move-result v2

    iget v3, p0, Lcom/wepie/snake/module/game/GameInfoView$1;->val$gameType:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/wepie/snake/ui/GameOverView;->setData(III)V

    .line 57
    iget-object v0, p0, Lcom/wepie/snake/module/game/GameInfoView$1;->this$0:Lcom/wepie/snake/module/game/GameInfoView;

    # getter for: Lcom/wepie/snake/module/game/GameInfoView;->gameOverView:Lcom/wepie/snake/ui/GameOverView;
    invoke-static {v0}, Lcom/wepie/snake/module/game/GameInfoView;->access$200(Lcom/wepie/snake/module/game/GameInfoView;)Lcom/wepie/snake/ui/GameOverView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wepie/snake/ui/GameOverView;->setVisibility(I)V

    .line 58
    return-void
.end method
