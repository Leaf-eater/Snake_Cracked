.class public Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;
.super Ljava/lang/Object;
.source "ProgressDialogUtil.java"


# instance fields
.field private mProgressDialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialog;

.field private needShowLoading:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->needShowLoading:Z

    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->needShowLoading:Z

    return v0
.end method


# virtual methods
.method public hideLoading()V
    .locals 2

    .prologue
    .line 52
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->needShowLoading:Z

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->mProgressDialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->mProgressDialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialog;

    invoke-virtual {v1}, Lcom/wepie/snake/helper/progressdialog/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->mProgressDialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialog;

    invoke-virtual {v1}, Lcom/wepie/snake/helper/progressdialog/ProgressDialog;->cancel()V

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->mProgressDialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showLoading(Landroid/content/Context;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resourceId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "cancelable"    # Z

    .prologue
    .line 45
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->showLoading(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 46
    return-void
.end method

.method public showLoading(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "canCancel"    # Z

    .prologue
    .line 30
    :try_start_0
    iget-object v2, p0, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->mProgressDialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialog;

    if-nez v2, :cond_0

    .line 31
    new-instance v2, Lcom/wepie/snake/helper/progressdialog/ProgressDialog;

    invoke-direct {v2, p1}, Lcom/wepie/snake/helper/progressdialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->mProgressDialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialog;

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->mProgressDialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialog;

    invoke-virtual {v2}, Lcom/wepie/snake/helper/progressdialog/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    :goto_0
    return-void

    .line 35
    :cond_1
    move-object v1, p2

    .line 36
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->mProgressDialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialog;

    invoke-virtual {v2, v1}, Lcom/wepie/snake/helper/progressdialog/ProgressDialog;->setMessage(Ljava/lang/String;)Lcom/wepie/snake/helper/progressdialog/ProgressDialog;

    .line 37
    iget-object v2, p0, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->mProgressDialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialog;

    invoke-virtual {v2, p3}, Lcom/wepie/snake/helper/progressdialog/ProgressDialog;->setCancelable(Z)V

    .line 38
    iget-object v2, p0, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->mProgressDialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialog;

    invoke-virtual {v2}, Lcom/wepie/snake/helper/progressdialog/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    .end local v1    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showLoadingDelay(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->needShowLoading:Z

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil$1;

    invoke-direct {v1, p0, p1}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil$1;-><init>(Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;Landroid/content/Context;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    return-void
.end method
