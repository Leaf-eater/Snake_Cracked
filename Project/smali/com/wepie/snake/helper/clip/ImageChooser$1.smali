.class final Lcom/wepie/snake/helper/clip/ImageChooser$1;
.super Ljava/lang/Object;
.source "ImageChooser.java"

# interfaces
.implements Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/helper/clip/ImageChooser;->upload(Landroid/content/Context;Ljava/lang/String;Lcom/wepie/snake/helper/clip/ImageChooser$ImageChooserCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/wepie/snake/helper/clip/ImageChooser$ImageChooserCallback;

.field final synthetic val$dialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;


# direct methods
.method constructor <init>(Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;Lcom/wepie/snake/helper/clip/ImageChooser$ImageChooserCallback;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/wepie/snake/helper/clip/ImageChooser$1;->val$dialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    iput-object p2, p0, Lcom/wepie/snake/helper/clip/ImageChooser$1;->val$callback:Lcom/wepie/snake/helper/clip/ImageChooser$ImageChooserCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/wepie/snake/helper/clip/ImageChooser$1;->val$dialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->hideLoading()V

    .line 138
    const-string v0, "\u4e0a\u4f20\u5931\u8d25"

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/wepie/snake/helper/clip/ImageChooser$1;->val$dialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->hideLoading()V

    .line 132
    iget-object v0, p0, Lcom/wepie/snake/helper/clip/ImageChooser$1;->val$callback:Lcom/wepie/snake/helper/clip/ImageChooser$ImageChooserCallback;

    invoke-interface {v0, p2}, Lcom/wepie/snake/helper/clip/ImageChooser$ImageChooserCallback;->onImageUploaded(Ljava/lang/String;)V

    .line 133
    return-void
.end method
