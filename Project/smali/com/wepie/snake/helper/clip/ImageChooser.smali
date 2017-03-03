.class public Lcom/wepie/snake/helper/clip/ImageChooser;
.super Ljava/lang/Object;
.source "ImageChooser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/helper/clip/ImageChooser$ImageChooserCallback;
    }
.end annotation


# static fields
.field public static final BY_CAMERA:I = 0x64

.field public static final BY_PHOTO_ALBUM:I = 0x65

.field public static final BY_PHOTO_CROP:I = 0x66

.field private static final destPath:Ljava/lang/String;

.field private static isChoosingPicture:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wepie/snake/helper/did/FileConfig;->IMG_BASE_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "head_temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wepie/snake/helper/clip/ImageChooser;->destPath:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wepie/snake/helper/clip/ImageChooser;->isChoosingPicture:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    return-void
.end method

.method public static enterPhotoAlbumActivity(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 32
    const/4 v3, 0x1

    :try_start_0
    sput-boolean v3, Lcom/wepie/snake/helper/clip/ImageChooser;->isChoosingPicture:Z

    .line 33
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 34
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v3, "\u9009\u62e9\u56fe\u7247"

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .line 37
    .local v2, "pIntent":Landroid/content/Intent;
    const/16 v3, 0x65

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "\u65e0\u6cd5\u6253\u5f00\u7cfb\u7edf\u76f8\u518c"

    invoke-static {v3}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static enterSystemCameraActivity(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 46
    const/4 v2, 0x1

    :try_start_0
    sput-boolean v2, Lcom/wepie/snake/helper/clip/ImageChooser;->isChoosingPicture:Z

    .line 47
    sget-object v2, Lcom/wepie/snake/helper/clip/ImageChooser;->destPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/wepie/snake/helper/did/FileUtil;->createFile(Ljava/lang/String;)V

    .line 48
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "output"

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/wepie/snake/helper/clip/ImageChooser;->destPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 50
    const-string v2, "outputFormat"

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "\u6253\u5f00\u7cfb\u7edf\u76f8\u673a\u5931\u8d25"

    invoke-static {v2}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static onImageGet(Landroid/app/Activity;ZILjava/lang/String;Lcom/wepie/snake/helper/clip/ImageChooser$ImageChooserCallback;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "clip"    # Z
    .param p2, "orientation"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/wepie/snake/helper/clip/ImageChooser$ImageChooserCallback;

    .prologue
    .line 96
    move-object v1, p0

    .line 99
    .local v1, "context":Landroid/content/Context;
    :try_start_0
    invoke-static {p3}, Lcom/wepie/snake/helper/clip/BitmapUtil;->decodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/wepie/snake/helper/clip/BitmapUtil;->compressBmpToFile(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    .line 101
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    invoke-static {p3, p2}, Lcom/wepie/snake/helper/clip/BitmapUtil;->rotateBitmapIfNeed(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 108
    const-string v4, "\u5904\u7406\u7167\u7247\u5931\u8d25"

    invoke-static {v4}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 120
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v3

    .line 103
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "\u5904\u7406\u7167\u7247\u5931\u8d25"

    invoke-static {v4}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    if-nez p1, :cond_1

    .line 113
    invoke-static {v1, p3, p4}, Lcom/wepie/snake/helper/clip/ImageChooser;->upload(Landroid/content/Context;Ljava/lang/String;Lcom/wepie/snake/helper/clip/ImageChooser$ImageChooserCallback;)V

    goto :goto_0

    .line 115
    :cond_1
    const/4 v4, 0x1

    sput-boolean v4, Lcom/wepie/snake/helper/clip/ImageChooser;->isChoosingPicture:Z

    .line 116
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/wepie/snake/helper/clip/ClipActivity;

    invoke-direct {v2, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "image_path"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const/16 v4, 0x66

    invoke-virtual {p0, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static onResult(Landroid/app/Activity;ZIILandroid/content/Intent;Lcom/wepie/snake/helper/clip/ImageChooser$ImageChooserCallback;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "clip"    # Z
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;
    .param p5, "callback"    # Lcom/wepie/snake/helper/clip/ImageChooser$ImageChooserCallback;

    .prologue
    const/4 v6, -0x1

    .line 60
    sget-boolean v5, Lcom/wepie/snake/helper/clip/ImageChooser;->isChoosingPicture:Z

    if-nez v5, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const/4 v5, 0x0

    sput-boolean v5, Lcom/wepie/snake/helper/clip/ImageChooser;->isChoosingPicture:Z

    .line 63
    move-object v0, p0

    .line 64
    .local v0, "context":Landroid/content/Context;
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 78
    :pswitch_0
    if-ne p3, v6, :cond_0

    .line 79
    sget-object v5, Lcom/wepie/snake/helper/clip/ImageChooser;->destPath:Ljava/lang/String;

    invoke-static {v5}, Lcom/wepie/snake/helper/clip/BitmapUtil;->getOrientation(Ljava/lang/String;)I

    move-result v2

    .line 80
    .local v2, "orientation":I
    sget-object v5, Lcom/wepie/snake/helper/clip/ImageChooser;->destPath:Ljava/lang/String;

    invoke-static {p0, p1, v2, v5, p5}, Lcom/wepie/snake/helper/clip/ImageChooser;->onImageGet(Landroid/app/Activity;ZILjava/lang/String;Lcom/wepie/snake/helper/clip/ImageChooser$ImageChooserCallback;)V

    goto :goto_0

    .line 66
    .end local v2    # "orientation":I
    :pswitch_1
    if-ne p3, v6, :cond_0

    .line 67
    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 68
    .local v4, "selectedImageUri":Landroid/net/Uri;
    invoke-static {v0, v4}, Lcom/wepie/snake/helper/clip/URIUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Lcom/wepie/snake/helper/clip/BitmapUtil;->getOrientation(Ljava/lang/String;)I

    move-result v2

    .line 70
    .restart local v2    # "orientation":I
    sget-object v5, Lcom/wepie/snake/helper/clip/ImageChooser;->destPath:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/wepie/snake/helper/did/FileUtil;->safeCopyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 71
    sget-object v5, Lcom/wepie/snake/helper/clip/ImageChooser;->destPath:Ljava/lang/String;

    invoke-static {p0, p1, v2, v5, p5}, Lcom/wepie/snake/helper/clip/ImageChooser;->onImageGet(Landroid/app/Activity;ZILjava/lang/String;Lcom/wepie/snake/helper/clip/ImageChooser$ImageChooserCallback;)V

    goto :goto_0

    .line 86
    .end local v2    # "orientation":I
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "selectedImageUri":Landroid/net/Uri;
    :pswitch_2
    if-ne p3, v6, :cond_0

    .line 87
    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v5

    const-string v6, "temp_clip_image"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "cropImagePath":Ljava/lang/String;
    invoke-static {v0, v1, p5}, Lcom/wepie/snake/helper/clip/ImageChooser;->upload(Landroid/content/Context;Ljava/lang/String;Lcom/wepie/snake/helper/clip/ImageChooser$ImageChooserCallback;)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static upload(Landroid/content/Context;Ljava/lang/String;Lcom/wepie/snake/helper/clip/ImageChooser$ImageChooserCallback;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imagePath"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/wepie/snake/helper/clip/ImageChooser$ImageChooserCallback;

    .prologue
    .line 123
    new-instance v0, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    invoke-direct {v0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;-><init>()V

    .line 124
    .local v0, "dialog":Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;
    const-string v3, "\u6b63\u5728\u4e0a\u4f20..."

    const/4 v4, 0x0

    invoke-virtual {v0, p0, v3, v4}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->showLoading(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 125
    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "uid":Ljava/lang/String;
    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->getSid()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "sid":Ljava/lang/String;
    invoke-static {}, Lcom/wepie/snake/helper/upload/QiniuUpload;->getInstance()Lcom/wepie/snake/helper/upload/QiniuUpload;

    move-result-object v3

    new-instance v4, Lcom/wepie/snake/helper/clip/ImageChooser$1;

    invoke-direct {v4, v0, p2}, Lcom/wepie/snake/helper/clip/ImageChooser$1;-><init>(Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;Lcom/wepie/snake/helper/clip/ImageChooser$ImageChooserCallback;)V

    invoke-virtual {v3, v2, v1, p1, v4}, Lcom/wepie/snake/helper/upload/QiniuUpload;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;)V

    .line 141
    return-void
.end method
