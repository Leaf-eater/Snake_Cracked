.class public Lcom/wepie/snake/helper/update/UpdateDialogActivity;
.super Landroid/app/Activity;
.source "UpdateDialogActivity.java"


# static fields
.field public static final KEY_DESC:Ljava/lang/String; = "desc"

.field public static final KEY_FORCE_UPDATE:Ljava/lang/String; = "force"

.field public static final KEY_HASH:Ljava/lang/String; = "qiniu_file_hash"

.field public static final KEY_URL:Ljava/lang/String; = "url"


# instance fields
.field private cancelBt:Landroid/widget/TextView;

.field private desc:Ljava/lang/String;

.field private descTx:Landroid/widget/TextView;

.field private force:Z

.field private qiniu_file_hash:Ljava/lang/String;

.field private sureBt:Landroid/widget/TextView;

.field private titleTx:Landroid/widget/TextView;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->force:Z

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->url:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->desc:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->qiniu_file_hash:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/helper/update/UpdateDialogActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/helper/update/UpdateDialogActivity;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->doFinish()V

    return-void
.end method

.method static synthetic access$100(Lcom/wepie/snake/helper/update/UpdateDialogActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/helper/update/UpdateDialogActivity;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->force:Z

    return v0
.end method

.method private doFinish()V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->finish()V

    .line 117
    const v0, 0x7f05000b

    const v1, 0x7f05000a

    invoke-virtual {p0, v0, v1}, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->overridePendingTransition(II)V

    .line 118
    return-void
.end method

.method public static go(Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;)V
    .locals 4
    .param p0, "updateInfo"    # Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;

    .prologue
    .line 121
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v0

    .line 122
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/wepie/snake/helper/update/UpdateDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "desc"

    iget-object v3, p0, Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;->release_notes:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v2, "url"

    iget-object v3, p0, Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;->download_url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v2, "force"

    invoke-virtual {p0}, Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;->isForceUpdate()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    const-string v2, "qiniu_file_hash"

    iget-object v3, p0, Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;->qiniu_file_hash:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method private setUpdateEvent()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->sureBt:Landroid/widget/TextView;

    new-instance v1, Lcom/wepie/snake/helper/update/UpdateDialogActivity$3;

    invoke-direct {v1, p0}, Lcom/wepie/snake/helper/update/UpdateDialogActivity$3;-><init>(Lcom/wepie/snake/helper/update/UpdateDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->force:Z

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->doFinish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "desc"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->desc:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "force"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->force:Z

    .line 43
    invoke-virtual {p0}, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->url:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "qiniu_file_hash"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->qiniu_file_hash:Ljava/lang/String;

    .line 46
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 47
    .local v1, "rootView":Landroid/widget/RelativeLayout;
    const/16 v4, 0x96

    invoke-static {v4, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 49
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04001a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 50
    .local v2, "view":Landroid/view/View;
    const v4, 0x7f0200d0

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 52
    invoke-static {p0}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->getDialogWidth(Landroid/content/Context;)I

    move-result v3

    .line 53
    .local v3, "width":I
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55
    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    const v4, 0x7f0d005a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->titleTx:Landroid/widget/TextView;

    .line 58
    const v4, 0x7f0d005b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->descTx:Landroid/widget/TextView;

    .line 59
    const v4, 0x7f0d005c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->cancelBt:Landroid/widget/TextView;

    .line 60
    const v4, 0x7f0d005d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->sureBt:Landroid/widget/TextView;

    .line 62
    iget-object v4, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->descTx:Landroid/widget/TextView;

    new-instance v5, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v5}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 64
    iget-object v4, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->descTx:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->desc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-boolean v4, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->force:Z

    if-eqz v4, :cond_0

    .line 67
    iget-object v4, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->titleTx:Landroid/widget/TextView;

    const-string v5, "\u5f3a\u5236\u5347\u7ea7"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v4, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->cancelBt:Landroid/widget/TextView;

    const-string v5, "\u9000\u51fa\u7a0b\u5e8f"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v4, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->sureBt:Landroid/widget/TextView;

    const-string v5, "\u7acb\u5373\u66f4\u65b0"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v4, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->cancelBt:Landroid/widget/TextView;

    new-instance v5, Lcom/wepie/snake/helper/update/UpdateDialogActivity$1;

    invoke-direct {v5, p0}, Lcom/wepie/snake/helper/update/UpdateDialogActivity$1;-><init>(Lcom/wepie/snake/helper/update/UpdateDialogActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :goto_0
    invoke-direct {p0}, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->setUpdateEvent()V

    .line 91
    invoke-virtual {p0, v1}, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->setContentView(Landroid/view/View;)V

    .line 92
    return-void

    .line 79
    :cond_0
    iget-object v4, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->titleTx:Landroid/widget/TextView;

    const-string v5, "\u53d1\u73b0\u65b0\u7248\u672c"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v4, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->cancelBt:Landroid/widget/TextView;

    const-string v5, "\u4ee5\u540e\u518d\u8bf4"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v4, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->sureBt:Landroid/widget/TextView;

    const-string v5, "\u7acb\u5373\u66f4\u65b0"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v4, p0, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->cancelBt:Landroid/widget/TextView;

    new-instance v5, Lcom/wepie/snake/helper/update/UpdateDialogActivity$2;

    invoke-direct {v5, p0}, Lcom/wepie/snake/helper/update/UpdateDialogActivity$2;-><init>(Lcom/wepie/snake/helper/update/UpdateDialogActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 107
    return-void
.end method
