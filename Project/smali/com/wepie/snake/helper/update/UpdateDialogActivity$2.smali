.class Lcom/wepie/snake/helper/update/UpdateDialogActivity$2;
.super Ljava/lang/Object;
.source "UpdateDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/helper/update/UpdateDialogActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 82
    iput-object p1, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity$2;->this$0:Lcom/wepie/snake/helper/update/UpdateDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity$2;->this$0:Lcom/wepie/snake/helper/update/UpdateDialogActivity;

    # invokes: Lcom/wepie/snake/helper/update/UpdateDialogActivity;->doFinish()V
    invoke-static {v0}, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->access$000(Lcom/wepie/snake/helper/update/UpdateDialogActivity;)V

    .line 86
    return-void
.end method
