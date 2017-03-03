.class Lcom/wepie/snake/helper/progressdialog/ProgressDialog$1;
.super Ljava/lang/Object;
.source "ProgressDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/helper/progressdialog/ProgressDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/helper/progressdialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/wepie/snake/helper/progressdialog/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/helper/progressdialog/ProgressDialog;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/wepie/snake/helper/progressdialog/ProgressDialog$1;->this$0:Lcom/wepie/snake/helper/progressdialog/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/wepie/snake/helper/progressdialog/ProgressDialog$1;->this$0:Lcom/wepie/snake/helper/progressdialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialog;->dismiss()V

    .line 50
    return-void
.end method
