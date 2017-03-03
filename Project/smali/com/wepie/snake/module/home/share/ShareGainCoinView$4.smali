.class Lcom/wepie/snake/module/home/share/ShareGainCoinView$4;
.super Ljava/lang/Object;
.source "ShareGainCoinView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/share/ShareGainCoinView;->updateShareInfo(Lcom/wepie/snake/module/net/entity/UserShareInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/share/ShareGainCoinView;

.field final synthetic val$userShareInfo:Lcom/wepie/snake/module/net/entity/UserShareInfo;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/share/ShareGainCoinView;Lcom/wepie/snake/module/net/entity/UserShareInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/share/ShareGainCoinView;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView$4;->this$0:Lcom/wepie/snake/module/home/share/ShareGainCoinView;

    iput-object p2, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView$4;->val$userShareInfo:Lcom/wepie/snake/module/net/entity/UserShareInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    new-instance v0, Lcom/wepie/snake/ui/ShareView;

    iget-object v1, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView$4;->this$0:Lcom/wepie/snake/module/home/share/ShareGainCoinView;

    # getter for: Lcom/wepie/snake/module/home/share/ShareGainCoinView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->access$100(Lcom/wepie/snake/module/home/share/ShareGainCoinView;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/wepie/snake/ui/ShareView;-><init>(Landroid/content/Context;I)V

    .line 98
    .local v0, "shareView":Lcom/wepie/snake/ui/ShareView;
    iget-object v1, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView$4;->val$userShareInfo:Lcom/wepie/snake/module/net/entity/UserShareInfo;

    invoke-virtual {v0, v1}, Lcom/wepie/snake/ui/ShareView;->setUserShareInfo(Lcom/wepie/snake/module/net/entity/UserShareInfo;)V

    .line 99
    iget-object v1, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView$4;->this$0:Lcom/wepie/snake/module/home/share/ShareGainCoinView;

    # getter for: Lcom/wepie/snake/module/home/share/ShareGainCoinView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->access$100(Lcom/wepie/snake/module/home/share/ShareGainCoinView;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/wepie/snake/helper/dialog/DialogUtil;->showCommonView(Landroid/content/Context;Landroid/view/View;I)V

    .line 100
    return-void
.end method
