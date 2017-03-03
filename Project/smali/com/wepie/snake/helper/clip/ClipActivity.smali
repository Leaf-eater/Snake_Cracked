.class public Lcom/wepie/snake/helper/clip/ClipActivity;
.super Landroid/app/Activity;
.source "ClipActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBackImage:Landroid/widget/ImageView;

.field private mClipImageLayout:Lcom/wepie/snake/helper/clip/ClipImageLayout;

.field private mUserBt:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/wepie/snake/helper/clip/ClipActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wepie/snake/helper/clip/ClipActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/helper/clip/ClipActivity;)Lcom/wepie/snake/helper/clip/ClipImageLayout;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/helper/clip/ClipActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wepie/snake/helper/clip/ClipActivity;->mClipImageLayout:Lcom/wepie/snake/helper/clip/ClipImageLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wepie/snake/helper/clip/ClipActivity;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/helper/clip/ClipActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/wepie/snake/helper/clip/ClipActivity;->compressBmpToFile(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private compressBmpToFile(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 4
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/wepie/snake/helper/did/FileConfig;->IMG_BASE_FOLDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "temp_head_image.a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "file":Ljava/io/File;
    invoke-static {p1, v0}, Lcom/wepie/snake/helper/clip/ClipUtil;->saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 75
    return-object v1
.end method

.method public static go(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wepie/snake/helper/clip/ClipActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const/16 v1, 0x66

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 93
    return-void
.end method

.method private initTitle()V
    .locals 2

    .prologue
    .line 45
    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/wepie/snake/helper/clip/ClipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/helper/clip/ClipActivity;->mBackImage:Landroid/widget/ImageView;

    .line 46
    const v0, 0x7f0d0059

    invoke-virtual {p0, v0}, Lcom/wepie/snake/helper/clip/ClipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/helper/clip/ClipActivity;->mUserBt:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/wepie/snake/helper/clip/ClipActivity;->mBackImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/wepie/snake/helper/clip/ClipActivity$1;

    invoke-direct {v1, p0}, Lcom/wepie/snake/helper/clip/ClipActivity$1;-><init>(Lcom/wepie/snake/helper/clip/ClipActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/wepie/snake/helper/clip/ClipActivity;->mUserBt:Landroid/widget/TextView;

    new-instance v1, Lcom/wepie/snake/helper/clip/ClipActivity$2;

    invoke-direct {v1, p0}, Lcom/wepie/snake/helper/clip/ClipActivity$2;-><init>(Lcom/wepie/snake/helper/clip/ClipActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method


# virtual methods
.method public getClipBorderHorizontalPadding()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, -0x1

    return v0
.end method

.method public getClipSquarePadding()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, -0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v1, 0x7f040019

    invoke-virtual {p0, v1}, Lcom/wepie/snake/helper/clip/ClipActivity;->setContentView(I)V

    .line 31
    const v1, 0x7f0d0056

    invoke-virtual {p0, v1}, Lcom/wepie/snake/helper/clip/ClipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/wepie/snake/helper/clip/ClipImageLayout;

    iput-object v1, p0, Lcom/wepie/snake/helper/clip/ClipActivity;->mClipImageLayout:Lcom/wepie/snake/helper/clip/ClipImageLayout;

    .line 33
    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "image_path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "image_path":Ljava/lang/String;
    iget-object v1, p0, Lcom/wepie/snake/helper/clip/ClipActivity;->mClipImageLayout:Lcom/wepie/snake/helper/clip/ClipImageLayout;

    invoke-virtual {v1, v0}, Lcom/wepie/snake/helper/clip/ClipImageLayout;->setImage(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipActivity;->getClipBorderHorizontalPadding()I

    move-result v1

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/wepie/snake/helper/clip/ClipActivity;->mClipImageLayout:Lcom/wepie/snake/helper/clip/ClipImageLayout;

    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipActivity;->getClipBorderHorizontalPadding()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wepie/snake/helper/clip/ClipImageLayout;->setHorizontalPadding(I)V

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipActivity;->getClipSquarePadding()I

    move-result v1

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/wepie/snake/helper/clip/ClipActivity;->mClipImageLayout:Lcom/wepie/snake/helper/clip/ClipImageLayout;

    invoke-virtual {p0}, Lcom/wepie/snake/helper/clip/ClipActivity;->getClipSquarePadding()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wepie/snake/helper/clip/ClipImageLayout;->setSquarePadding(I)V

    .line 39
    :cond_1
    invoke-direct {p0}, Lcom/wepie/snake/helper/clip/ClipActivity;->initTitle()V

    .line 40
    return-void
.end method
