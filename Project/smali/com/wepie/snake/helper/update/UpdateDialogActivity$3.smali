.class Lcom/wepie/snake/helper/update/UpdateDialogActivity$3;
.super Ljava/lang/Object;
.source "UpdateDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/helper/update/UpdateDialogActivity;->setUpdateEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/helper/update/UpdateDialogActivity;


# direct methods
.method constructor <init>(Lcom/wepie/snake/helper/update/UpdateDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/helper/update/UpdateDialogActivity;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity$3;->this$0:Lcom/wepie/snake/helper/update/UpdateDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity$3;->this$0:Lcom/wepie/snake/helper/update/UpdateDialogActivity;

    # getter for: Lcom/wepie/snake/helper/update/UpdateDialogActivity;->force:Z
    invoke-static {v0}, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->access$100(Lcom/wepie/snake/helper/update/UpdateDialogActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity$3;->this$0:Lcom/wepie/snake/helper/update/UpdateDialogActivity;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->finish()V

    .line 99
    :cond_0
    invoke-static {}, Lcom/wepie/snake/helper/update/UpdateUtil;->getInstance()Lcom/wepie/snake/helper/update/UpdateUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wepie/snake/helper/update/UpdateUtil;->onClickSure()V

    .line 100
    return-void
.end method
