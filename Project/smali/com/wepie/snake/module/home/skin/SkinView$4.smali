.class Lcom/wepie/snake/module/home/skin/SkinView$4;
.super Ljava/lang/Object;
.source "SkinView.java"

# interfaces
.implements Lcom/wepie/snake/helper/dialog/DialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/skin/SkinView;->showBuyDialog(Lcom/wepie/snake/helper/config/SkinConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/skin/SkinView;

.field final synthetic val$skinConfig:Lcom/wepie/snake/helper/config/SkinConfig;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/skin/SkinView;Lcom/wepie/snake/helper/config/SkinConfig;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/skin/SkinView;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/wepie/snake/module/home/skin/SkinView$4;->this$0:Lcom/wepie/snake/module/home/skin/SkinView;

    iput-object p2, p0, Lcom/wepie/snake/module/home/skin/SkinView$4;->val$skinConfig:Lcom/wepie/snake/helper/config/SkinConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCancel()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public onClickSure()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView$4;->this$0:Lcom/wepie/snake/module/home/skin/SkinView;

    iget-object v1, p0, Lcom/wepie/snake/module/home/skin/SkinView$4;->val$skinConfig:Lcom/wepie/snake/helper/config/SkinConfig;

    # invokes: Lcom/wepie/snake/module/home/skin/SkinView;->doBuySkin(Lcom/wepie/snake/helper/config/SkinConfig;)V
    invoke-static {v0, v1}, Lcom/wepie/snake/module/home/skin/SkinView;->access$500(Lcom/wepie/snake/module/home/skin/SkinView;Lcom/wepie/snake/helper/config/SkinConfig;)V

    .line 171
    return-void
.end method
