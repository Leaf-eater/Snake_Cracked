.class Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter$1;
.super Ljava/lang/Object;
.source "SkinView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;

.field final synthetic val$skinConfig:Lcom/wepie/snake/helper/config/SkinConfig;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;Lcom/wepie/snake/helper/config/SkinConfig;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter$1;->this$1:Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;

    iput-object p2, p0, Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter$1;->val$skinConfig:Lcom/wepie/snake/helper/config/SkinConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v2, p0, Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter$1;->val$skinConfig:Lcom/wepie/snake/helper/config/SkinConfig;

    iget v1, v2, Lcom/wepie/snake/helper/config/SkinConfig;->skin_id:I

    .line 139
    .local v1, "skin_id":I
    iget-object v2, p0, Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter$1;->this$1:Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;

    iget-object v2, v2, Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;->this$0:Lcom/wepie/snake/module/home/skin/SkinView;

    # invokes: Lcom/wepie/snake/module/home/skin/SkinView;->isSkinHaveBuy(I)Z
    invoke-static {v2, v1}, Lcom/wepie/snake/module/home/skin/SkinView;->access$300(Lcom/wepie/snake/module/home/skin/SkinView;I)Z

    move-result v0

    .line 141
    .local v0, "haveBuy":Z
    if-nez v0, :cond_1

    .line 142
    iget-object v2, p0, Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter$1;->val$skinConfig:Lcom/wepie/snake/helper/config/SkinConfig;

    invoke-virtual {v2}, Lcom/wepie/snake/helper/config/SkinConfig;->isSkinInUse()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter$1;->val$skinConfig:Lcom/wepie/snake/helper/config/SkinConfig;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/wepie/snake/helper/config/SkinConfig;->setSkinUsed(Z)V

    .line 147
    :goto_0
    iget-object v2, p0, Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter$1;->this$1:Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;

    iget-object v2, v2, Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;->this$0:Lcom/wepie/snake/module/home/skin/SkinView;

    # getter for: Lcom/wepie/snake/module/home/skin/SkinView;->adapter:Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;
    invoke-static {v2}, Lcom/wepie/snake/module/home/skin/SkinView;->access$200(Lcom/wepie/snake/module/home/skin/SkinView;)Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;->notifyDataSetChanged()V

    .line 151
    :goto_1
    return-void

    .line 145
    :cond_0
    iget-object v2, p0, Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter$1;->val$skinConfig:Lcom/wepie/snake/helper/config/SkinConfig;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/wepie/snake/helper/config/SkinConfig;->setSkinUsed(Z)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter$1;->this$1:Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;

    iget-object v2, v2, Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;->this$0:Lcom/wepie/snake/module/home/skin/SkinView;

    iget-object v3, p0, Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter$1;->val$skinConfig:Lcom/wepie/snake/helper/config/SkinConfig;

    # invokes: Lcom/wepie/snake/module/home/skin/SkinView;->check2BuySkin(Lcom/wepie/snake/helper/config/SkinConfig;)V
    invoke-static {v2, v3}, Lcom/wepie/snake/module/home/skin/SkinView;->access$400(Lcom/wepie/snake/module/home/skin/SkinView;Lcom/wepie/snake/helper/config/SkinConfig;)V

    goto :goto_1
.end method
