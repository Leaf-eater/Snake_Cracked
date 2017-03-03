.class final Lcom/wepie/snake/helper/dialog/DialogUtil$4;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Lcom/wepie/snake/helper/dialog/CloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/helper/dialog/DialogUtil;->showCommonView(Landroid/content/Context;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;


# direct methods
.method constructor <init>(Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/wepie/snake/helper/dialog/DialogUtil$4;->val$dialog:Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/wepie/snake/helper/dialog/DialogUtil$4;->val$dialog:Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->dismiss()V

    .line 99
    return-void
.end method
