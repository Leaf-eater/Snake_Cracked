.class Lcom/wepie/snake/module/game/GameInfoView$5;
.super Ljava/lang/Object;
.source "GameInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/game/GameInfoView;->doRefreshTime(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/game/GameInfoView;

.field final synthetic val$timeString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/game/GameInfoView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/game/GameInfoView;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/wepie/snake/module/game/GameInfoView$5;->this$0:Lcom/wepie/snake/module/game/GameInfoView;

    iput-object p2, p0, Lcom/wepie/snake/module/game/GameInfoView$5;->val$timeString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/wepie/snake/module/game/GameInfoView$5;->this$0:Lcom/wepie/snake/module/game/GameInfoView;

    # getter for: Lcom/wepie/snake/module/game/GameInfoView;->fpsTx:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/wepie/snake/module/game/GameInfoView;->access$500(Lcom/wepie/snake/module/game/GameInfoView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/wepie/snake/module/game/GameInfoView$5;->val$timeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method
