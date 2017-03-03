.class Lcom/wepie/snake/module/game/GameInfoView$3;
.super Ljava/lang/Object;
.source "GameInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/game/GameInfoView;->doKillAi(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/game/GameInfoView;

.field final synthetic val$killNum:I


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/game/GameInfoView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/game/GameInfoView;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/wepie/snake/module/game/GameInfoView$3;->this$0:Lcom/wepie/snake/module/game/GameInfoView;

    iput p2, p0, Lcom/wepie/snake/module/game/GameInfoView$3;->val$killNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/wepie/snake/module/game/GameInfoView$3;->this$0:Lcom/wepie/snake/module/game/GameInfoView;

    # getter for: Lcom/wepie/snake/module/game/GameInfoView;->killTx:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/wepie/snake/module/game/GameInfoView;->access$400(Lcom/wepie/snake/module/game/GameInfoView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u51fb\u6740\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/wepie/snake/module/game/GameInfoView$3;->val$killNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/wepie/snake/module/game/GameInfoView$3;->this$0:Lcom/wepie/snake/module/game/GameInfoView;

    iget v1, p0, Lcom/wepie/snake/module/game/GameInfoView$3;->val$killNum:I

    # setter for: Lcom/wepie/snake/module/game/GameInfoView;->killCount:I
    invoke-static {v0, v1}, Lcom/wepie/snake/module/game/GameInfoView;->access$002(Lcom/wepie/snake/module/game/GameInfoView;I)I

    .line 78
    return-void
.end method
