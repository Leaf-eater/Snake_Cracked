.class Lcom/wepie/snake/module/game/GameInfoView$2;
.super Ljava/lang/Object;
.source "GameInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/game/GameInfoView;->doEatFood(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/game/GameInfoView;

.field final synthetic val$score:I


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/game/GameInfoView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/game/GameInfoView;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/wepie/snake/module/game/GameInfoView$2;->this$0:Lcom/wepie/snake/module/game/GameInfoView;

    iput p2, p0, Lcom/wepie/snake/module/game/GameInfoView$2;->val$score:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wepie/snake/module/game/GameInfoView$2;->this$0:Lcom/wepie/snake/module/game/GameInfoView;

    # getter for: Lcom/wepie/snake/module/game/GameInfoView;->lengthTx:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/wepie/snake/module/game/GameInfoView;->access$300(Lcom/wepie/snake/module/game/GameInfoView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u957f\u5ea6\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/wepie/snake/module/game/GameInfoView$2;->val$score:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/wepie/snake/module/game/GameInfoView$2;->this$0:Lcom/wepie/snake/module/game/GameInfoView;

    iget v1, p0, Lcom/wepie/snake/module/game/GameInfoView$2;->val$score:I

    # setter for: Lcom/wepie/snake/module/game/GameInfoView;->length:I
    invoke-static {v0, v1}, Lcom/wepie/snake/module/game/GameInfoView;->access$102(Lcom/wepie/snake/module/game/GameInfoView;I)I

    .line 68
    return-void
.end method
