.class Lcom/wepie/snake/ui/GameOverView$1;
.super Ljava/lang/Object;
.source "GameOverView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/ui/GameOverView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/ui/GameOverView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/ui/GameOverView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/ui/GameOverView;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/wepie/snake/ui/GameOverView$1;->this$0:Lcom/wepie/snake/ui/GameOverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/wepie/snake/ui/GameOverView$1;->this$0:Lcom/wepie/snake/ui/GameOverView;

    invoke-virtual {v1}, Lcom/wepie/snake/ui/GameOverView;->doHide()V

    .line 69
    iget-object v1, p0, Lcom/wepie/snake/ui/GameOverView$1;->this$0:Lcom/wepie/snake/ui/GameOverView;

    # getter for: Lcom/wepie/snake/ui/GameOverView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/wepie/snake/ui/GameOverView;->access$000(Lcom/wepie/snake/ui/GameOverView;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/wepie/snake/activity/GameActivity;

    invoke-virtual {v1}, Lcom/wepie/snake/activity/GameActivity;->doReviveSelf()V

    .line 70
    invoke-static {}, Lcom/wepie/snake/helper/did/PrefUtil;->getInstance()Lcom/wepie/snake/helper/did/PrefUtil;

    move-result-object v1

    const-string v2, "key_coin"

    const v3, 0x1869f

    invoke-virtual {v1, v2, v3}, Lcom/wepie/snake/helper/did/PrefUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 71
    .local v0, "coin":I
    invoke-static {}, Lcom/wepie/snake/helper/did/PrefUtil;->getInstance()Lcom/wepie/snake/helper/did/PrefUtil;

    move-result-object v1

    const-string v2, "key_coin"

    add-int/lit8 v3, v0, -0x2

    invoke-virtual {v1, v2, v3}, Lcom/wepie/snake/helper/did/PrefUtil;->setInt(Ljava/lang/String;I)V

    .line 72
    return-void
.end method
