.class public Lcom/wepie/snake/helper/progressdialog/ProgressDialog;
.super Landroid/app/Dialog;
.source "ProgressDialog.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mTimeStamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const v0, 0x7f0a0144

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wepie/snake/helper/progressdialog/ProgressDialog;->mTimeStamp:J

    .line 20
    const v0, 0x7f040032

    invoke-virtual {p0, v0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialog;->setContentView(I)V

    .line 21
    invoke-virtual {p0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialog;->setCancelable(Z)V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/helper/progressdialog/ProgressDialog;->mHandler:Landroid/os/Handler;

    .line 24
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1f4

    .line 43
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/wepie/snake/helper/progressdialog/ProgressDialog;->mTimeStamp:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 44
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 57
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/wepie/snake/helper/progressdialog/ProgressDialog;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/wepie/snake/helper/progressdialog/ProgressDialog$1;

    invoke-direct {v2, p0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialog$1;-><init>(Lcom/wepie/snake/helper/progressdialog/ProgressDialog;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setCancelable(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 28
    return-void
.end method

.method public setMessage(I)Lcom/wepie/snake/helper/progressdialog/ProgressDialog;
    .locals 2
    .param p1, "msgId"    # I

    .prologue
    .line 80
    const v1, 0x7f0d00d7

    invoke-virtual {p0, v1}, Lcom/wepie/snake/helper/progressdialog/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    .local v0, "tvMsg":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/wepie/snake/helper/progressdialog/ProgressDialog;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 63
    const v1, 0x7f0d00d7

    invoke-virtual {p0, v1}, Lcom/wepie/snake/helper/progressdialog/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    .local v0, "tvMsg":Landroid/widget/TextView;
    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :goto_0
    return-object p0

    .line 67
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 4

    .prologue
    .line 33
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/wepie/snake/helper/progressdialog/ProgressDialog;->mTimeStamp:J

    .line 34
    invoke-super {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
