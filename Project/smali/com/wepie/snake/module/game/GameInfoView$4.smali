.class Lcom/wepie/snake/module/game/GameInfoView$4;
.super Ljava/lang/Object;
.source "GameInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/game/GameInfoView;->doFPSRefresh(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/game/GameInfoView;

.field final synthetic val$fps:F


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/game/GameInfoView;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/game/GameInfoView;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/wepie/snake/module/game/GameInfoView$4;->this$0:Lcom/wepie/snake/module/game/GameInfoView;

    iput p2, p0, Lcom/wepie/snake/module/game/GameInfoView$4;->val$fps:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/wepie/snake/module/game/GameInfoView$4;->this$0:Lcom/wepie/snake/module/game/GameInfoView;

    # getter for: Lcom/wepie/snake/module/game/GameInfoView;->fpsTx:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/wepie/snake/module/game/GameInfoView;->access$500(Lcom/wepie/snake/module/game/GameInfoView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/wepie/snake/module/game/GameInfoView$4;->val$fps:F

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/wepie/snake/module/game/util/StringUtil;->decimalsFormat(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method
