.class final Lcom/wepie/snake/helper/dialog/InnerDialogUtil$13;
.super Ljava/lang/Object;
.source "InnerDialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/helper/dialog/InnerDialogUtil;->showSingleBtTipNoTitleUnClose(Landroid/content/Context;Ljava/lang/String;Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;


# direct methods
.method constructor <init>(Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$13;->val$callback:Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$13;->val$callback:Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$13;->val$callback:Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;

    invoke-interface {v0}, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;->onClickCancel()V

    .line 311
    :cond_0
    return-void
.end method
